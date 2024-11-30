#include <stdlib.h>
#include "dbc.h"
#include "global.h"
#include "utils.h"
#include "box.h"
#include "timer.h"
#include "logger.h"
#include "barber-shop.h"
#include "barber.h"

enum State
{
   NONE = 0,
   CUTTING,
   SHAVING,
   WASHING,
   WAITING_CLIENTS,
   WAITING_BARBER_SEAT,
   WAITING_WASHBASIN,
   REQ_SCISSOR,
   REQ_COMB,
   REQ_RAZOR,
   DONE
};

#define State_SIZE (DONE - NONE + 1)

static const char* stateText[State_SIZE] =
{
   "---------",
   "CUTTING  ",
   "SHAVING  ",
   "WASHING  ",
   "W CLIENT ", // Waiting for client
   "W SEAT   ", // Waiting for barber seat
   "W BASIN  ", // Waiting for washbasin
   "R SCISSOR", // Request a scissor
   "R COMB   ", // Request a comb
   "R RAZOR  ", // Request a razor
   "DONE     ",
};

static const char* skel =
   "@---+---+---@\n"
   "|B##|C##|###|\n"
   "+---+---+-+-+\n"
   "|#########|#|\n"
   "@---------+-@";
static int skel_length = num_lines_barber()*(num_columns_barber()+1)*4; // extra space for (pessimistic) utf8 encoding!

static void life(Barber* barber);

static void sit_in_barber_bench(Barber* barber);
static void wait_for_client(Barber* barber);
static int work_available(Barber* barber);
static void rise_from_barber_bench(Barber* barber);
static void process_resquests_from_client(Barber* barber);
static void release_client(Barber* barber);
static void done(Barber* barber);
static void process_haircut_request(Barber* barber);
static void process_hairwash_request(Barber* barber);
static void process_shave_request(Barber* barber);

static char* to_string_barber(Barber* barber);

size_t sizeof_barber()
{
   return sizeof(Barber);
}

int num_lines_barber()
{
   return string_num_lines((char*)skel);
}

int num_columns_barber()
{
   return string_num_columns((char*)skel);
}

void init_barber(Barber* barber, int id, BarberShop* shop, int line, int column)
{
   require (barber != NULL, "barber argument required");
   require (id > 0, concat_3str("invalid id (", int2str(id), ")"));
   require (shop != NULL, "barber shop argument required");
   require (line >= 0, concat_3str("Invalid line (", int2str(line), ")"));
   require (column >= 0, concat_3str("Invalid column (", int2str(column), ")"));

   barber->id = id;
   barber->state = NONE;
   barber->shop = shop;
   barber->clientID = 0;
   barber->reqToDo = 0;
   barber->benchPosition = -1;
   barber->chairPosition = -1;
   barber->basinPosition = -1;
   barber->tools = 0;
   barber->internal = NULL;
   barber->logId = register_logger((char*)("Barber:"), line ,column,
                                   num_lines_barber(), num_columns_barber(), NULL);
}

void term_barber(Barber* barber)
{
   require (barber != NULL, "barber argument required");

   if (barber->internal != NULL)
   {
      mem_free(barber->internal);
      barber->internal = NULL;
   }
}

void log_barber(Barber* barber)
{
   require (barber != NULL, "barber argument required");

   spend(random_int(global->MIN_VITALITY_TIME_UNITS, global->MAX_VITALITY_TIME_UNITS));
   send_log(barber->logId, to_string_barber(barber));
}

void* main_barber(void* args)
{
   Barber* barber = (Barber*)args;
   require (barber != NULL, "barber argument required");
   life(barber);
   return NULL;
}

static void life(Barber* barber)
{
   require (barber != NULL, "barber argument required");

   sit_in_barber_bench(barber);
   wait_for_client(barber);
   while(work_available(barber)) // no more possible clients and closes barbershop
   {
      rise_from_barber_bench(barber);
      process_resquests_from_client(barber);
      release_client(barber);
      sit_in_barber_bench(barber);
      wait_for_client(barber);
   }
   done(barber);
}

static void sit_in_barber_bench(Barber* barber)
{
   /** TODO:
    * 1: sit in a random empty seat in barber bench (always available)
    **/
    //DONE
   require (barber != NULL, "barber argument required");
   require (num_seats_available_barber_bench(barber_bench(barber->shop)) > 0, "seat not available in barber shop");
   require (!seated_in_barber_bench(barber_bench(barber->shop), barber->id), "barber already seated in barber shop");


   BarberShop* shop = barber->shop; //Loja barbeiro
   BarberBench* bench = barber_bench(shop); //return os bancos de espera da barbearia
   while(num_seats_available_barber_bench(bench) <= 0);
   int benchID = random_sit_in_barber_bench(bench, barber->id); //atribui um lugar aleatoria, return ID
   barber->benchPosition = benchID;

   log_barber(barber); //export to simulation

   barber->clientID = 0;
}

static void wait_for_client(Barber* barber)
{
   /** TODO:
    * 1: set the client state to WAITING_CLIENTS
    * 2: get next client from client benches (if empty, wait) (also, it may be required to check for simulation termination)
    * 3: receive and greet client (receive its requested services, and give back the barber's id)
    **/
    //DONE
   require (barber != NULL, "barber argument required");
   barber->state =  WAITING_CLIENTS;
   log_barber(barber);
   RQItem client;
   int exitsClient = 0;
   while((exitsClient==0) and (shop_opened(barber->shop))){
      client = next_client_in_benches(client_benches(barber->shop));
      if(client.clientID==0){
        log_barber(barber);
        spend(random_int(global->MIN_VITALITY_TIME_UNITS, global->MAX_VITALITY_TIME_UNITS)); //wait
      }
      else{
        exitsClient = 1;
        barber->clientID = client.clientID; //novo cliente
        barber->reqToDo = client.request; //novo cliente
        receive_and_greet_client(barber->shop, barber->id, barber->clientID);
        log_barber(barber);
        for(int i=1; i<MAX_CLIENTS; i++){
          if(i==client.clientID){
            barber->shop->Client_barber_ID[i] == barber->id;
            break;
          }
        }
      }
   }
   log_barber(barber);  // (if necessary) more than one in proper places!!!
}

static int work_available(Barber* barber)
{
   /** TODO:
    * 1: find a safe way to solve the problem of barber termination
    **/
  //DONE
   require (barber != NULL, "barber argument required");

   return (shop_opened(barber->shop) == 1 || barber->shop->numClientsInside > 0);
}

static void rise_from_barber_bench(Barber* barber)
{
   /** TODO:
    * 1: rise from the seat of barber bench
    **/
    //DONE
   require (barber != NULL, "barber argument required");
   require (seated_in_barber_bench(barber_bench(barber->shop), barber->id), "barber not seated in barber shop");

   BarberBench* bench = barber_bench(barber->shop);

   rise_barber_bench(bench, barber->benchPosition);
   barber->benchPosition = -1;

   log_barber(barber);
}

static void process_resquests_from_client(Barber* barber)
{
   /** TODO:
    * Process one client request at a time, until all requests are fulfilled.
    * For each request:
    * 1: select the request to process (any order is acceptable)
    * 2: reserve the chair/basin for the service (setting the barber's state accordingly)
    *    2.1: set the client state to a proper value
    *    2.2: reserve a random empty chair/basin
    *    2.2: inform client on the service to be performed
    * 3: depending on the service, grab the necessary tools from the pot (if any)
    * 4: process the service (see [incomplete] process_haircut_request as an example)
    * 3: return the used tools to the pot (if any)
    *
    *
    * At the end the client must leave the barber shop
    **/
    //SHAVE_REQ pedido para fazer a barba
    //HAIRCUT_REQ pedido para cortar o cabelo
    //WASH_HAIR_REQ pedido para lavar o cabelo

   require (barber != NULL, "barber argument required");

 	 Service service;
   ToolsPot* tools = tools_pot(barber->shop);
 	 int req = barber->reqToDo;
   int waitClientSeat = 1; //1 cliente ainda nao sentou
   int serviceTerm = 1; //ainda nao terminou

   while(req != 0){ //enquanto houver pedidos
//////////-----------------------------SHAVE-----------------
     if((barber->reqToDo & SHAVE_REQ) and (num_available_barber_chairs(barber->shop)>0) and (tools->availRazors>0)){
       barber->state = WAITING_BARBER_SEAT;
       log_barber(barber);
       barber->chairPosition = reserve_random_empty_barber_chair(barber->shop, barber->id);
       set_barber_chair_service(&service, barber->id, barber->clientID, barber->chairPosition, SHAVE_REQ);
       inform_client_on_service(barber->shop, service);
       sit_in_barber_chair(barber_chair(barber->shop, service.pos), service.clientID);

       barber->state = REQ_RAZOR;
       log_barber(barber);
       //pega na navalha
       pick_razor(tools);
       barber->tools += RAZOR_TOOL;
       //esperar que o clinte sente se e começa o serviço
       while(waitClientSeat==1){
         //printf("barberChairPosition: %d\n", barber->chairPosition);
         //printf("barberClientID: %d\n", barber->clientID);
        // printf("CLINTE SEAT %d\n", client_seated_in_barber_chair(barber_chair(barber->shop, barber->chairPosition), barber->clientID));
         if((client_seated_in_barber_chair(barber_chair(barber->shop, barber->chairPosition), barber->clientID)) == 1){
           //printf("ENNNNNNNNNNNNNNNNTTRRRRRRRRRROOOOOOOOOOOOOOOOUUUUUUUU%s\n", "------");
           set_tools_barber_chair(barber_chair(barber->shop, service.pos), barber->tools);
           barber->state = SHAVING;
           log_barber(barber);
           process_shave_request(barber);
           waitClientSeat=0;
         }
         else{
           spend(random_int(global->MIN_WORK_TIME_UNITS,global->MAX_WORK_TIME_UNITS));
         }
       }
       while(serviceTerm == 1){
         if((barber_chair_service_finished(barber_chair(barber->shop,barber->chairPosition)))==1){
           rise_from_barber_chair(barber_chair(barber->shop,barber->chairPosition), barber->clientID);
           serviceTerm = 0;
           barber->tools = barber->tools - RAZOR_TOOL;
           return_razor(tools_pot(barber->shop));
           req = req - SHAVE_REQ;
           release_barber_chair(barber_chair(barber->shop,barber->chairPosition), barber->id);
           barber->chairPosition += -1;
           log_barber(barber);
         }
       }
       serviceTerm=1;
       waitClientSeat=1;
//////////----------------------HAIRCUT--------------------------------------
     }else if((barber->reqToDo & HAIRCUT_REQ) and (num_available_barber_chairs(barber->shop)>0) and (tools->availScissors>0) and (tools->availCombs)>0){
       barber->state = WAITING_BARBER_SEAT;
       log_barber(barber);
       barber->chairPosition = reserve_random_empty_barber_chair(barber->shop, barber->id);
       set_barber_chair_service(&service, barber->id, barber->clientID, barber->chairPosition, HAIRCUT_REQ);
       inform_client_on_service(barber->shop, service);
       sit_in_barber_chair(barber_chair(barber->shop, service.pos), service.clientID);

       //vai buscar o pente
       barber->state = REQ_COMB;
       log_barber(barber);
       pick_comb(tools_pot(barber->shop));
       barber->tools += COMB_TOOL;
       //vai buscar a tesoura
       barber->state = REQ_SCISSOR;
       log_barber(barber);
       pick_scissor(tools_pot(barber->shop));
       barber->tools += SCISSOR_TOOL;
       while(waitClientSeat==1){
        // printf("barberChairPosition: %d\n", barber->chairPosition);
         //printf("barberClientID: %d\n", barber->clientID);
         //printf("CLINTE SEAT %d\n", client_seated_in_barber_chair(barber_chair(barber->shop, barber->chairPosition), barber->clientID));
         if((client_seated_in_barber_chair(barber_chair(barber->shop, barber->chairPosition), barber->clientID)) == 1){
           //printf("ENNNNNNNNNNNNNNNNTTRRRRRRRRRROOOOOOOOOOOOOOOOUUUUUUUU%s\n", "------");

           waitClientSeat=0;
           set_tools_barber_chair(barber_chair(barber->shop, service.pos), barber->tools);
           barber->state = CUTTING;
           log_barber(barber);
           process_haircut_request(barber);
         }
         else{
           spend(random_int(global->MIN_WORK_TIME_UNITS,global->MAX_WORK_TIME_UNITS));
         }
       }
       while(serviceTerm == 1){
         if((barber_chair_service_finished(barber_chair(barber->shop,barber->chairPosition)))==1){
           rise_from_barber_chair(barber_chair(barber->shop,barber->chairPosition), barber->clientID);
           serviceTerm = 0;
           barber->tools = barber->tools - COMB_TOOL;
           barber->tools = barber->tools - SCISSOR_TOOL;
           return_scissor(tools_pot(barber->shop));
           return_comb(tools_pot(barber->shop));
           req = req - HAIRCUT_REQ;
           release_barber_chair(barber_chair(barber->shop,barber->chairPosition), barber->id);
           barber->chairPosition += -1;
           log_barber(barber);
         }
       }
       serviceTerm=1;
       waitClientSeat=1;
////////////////-------------------WASHING---------------------
     } else if((barber->reqToDo & WASH_HAIR_REQ) and (num_available_washbasin(barber->shop)>0)){
       barber->state = WAITING_WASHBASIN;
       log_barber(barber);
       barber->basinPosition = reserve_random_empty_washbasin(barber->shop, barber->id);
       set_washbasin_service(&service, barber->id, barber->clientID, barber->basinPosition);
       inform_client_on_service(barber->shop, service);
       sit_in_washbasin(washbasin(barber->shop, barber->basinPosition),  barber->clientID);

       //esperar que o cliente sente se
       while(waitClientSeat==1){
        // printf("barberChairPosition: %d\n", barber->basinPosition);
        // printf("barberClientID: %d\n", barber->clientID);
         //printf("CLINTE SEAT %d\n", client_seated_in_washbasin(washbasin(barber->shop, barber->basinPosition), barber->clientID) );
         if((client_seated_in_washbasin(washbasin(barber->shop, barber->basinPosition), barber->clientID)) == 1){

           waitClientSeat=0;
           barber->state = WASHING;
           log_barber(barber);
           process_hairwash_request(barber);
         }
         else{
           spend(random_int(global->MIN_WORK_TIME_UNITS,global->MAX_WORK_TIME_UNITS));
         }
       }
       while(serviceTerm==1){
         if((washbasin_service_finished(washbasin(barber->shop,barber->basinPosition)))==1){
           rise_from_washbasin(washbasin(barber->shop, barber->basinPosition), barber->clientID);
           serviceTerm = 0;
           req = req - WASH_HAIR_REQ;
           release_washbasin(washbasin(barber->shop,barber->basinPosition), barber->id);
           barber->basinPosition += -1;
           log_barber(barber);
         }
       }
       serviceTerm=1;
       waitClientSeat=1;
   }
   else{
     barber->state = WAITING_CLIENTS;
     log_barber(barber);
   }
 }
   // (if necessary) more than one in proper places!!!
}

static void release_client(Barber* barber)
{
   /** TODO:
    * 1: notify client the all the services are done
    **/
    //DONE
   require (barber != NULL, "barber argument required");
   client_done(barber->shop, barber->clientID);
   barber->clientID = 0;
   for(int i=0; i<MAX_CLIENTS; i++){
     if(barber->shop->Client_barber_ID[i] == barber->id){
       barber->shop->Client_barber_ID[i] = 0;
     }
   }
   log_barber(barber);
}

static void done(Barber* barber)
{
   /** TODO:
    * 1: set the client state to DONE
    **/
    //DONE
   require (barber != NULL, "barber argument required");
   barber->state = DONE;
   barber->clientID = 0;
   term_barber(barber);
   log_barber(barber);
}

static void process_haircut_request(Barber* barber)
{
   /** TODO:
    * ([incomplete] example code for task completion algorithm)
    **/
   require (barber != NULL, "barber argument required");
   require (barber->tools & SCISSOR_TOOL, "barber not holding a scissor");
   require (barber->tools & COMB_TOOL, "barber not holding a comb");

   int steps = random_int(5,20);
   int slice = (global->MAX_WORK_TIME_UNITS-global->MIN_WORK_TIME_UNITS+steps)/steps;
   int complete = 0;
   barber->state = CUTTING;
   log_barber(barber);
   while(complete < 100)
   {
      spend(slice);
      complete += 100/steps;
      if (complete > 100)
         complete = 100;
      set_completion_barber_chair(barber_chair(barber->shop, barber->chairPosition), complete);
   }

   log_barber(barber);  // (if necessary) more than one in proper places!!!
}

static void process_hairwash_request(Barber* barber)
{
   /** TODO:
    * ([incomplete] example code for task completion algorithm)
    **/
   require (barber != NULL, "barber argument required");

   int steps = random_int(5,20);
   int slice = (global->MAX_WORK_TIME_UNITS-global->MIN_WORK_TIME_UNITS+steps)/steps;
   int complete = 0;
   barber->state = WASHING;
   log_barber(barber);
   while(complete < 100)
   {
      spend(slice);
      complete += 100/steps;
      if (complete > 100)
         complete = 100;
      set_completion_washbasin(washbasin(barber->shop, barber->basinPosition), complete);
   }

   log_barber(barber);  // (if necessary) more than one in proper places!!!
}

static void process_shave_request(Barber* barber)
{
   /** TODO:
    * ([incomplete] example code for task completion algorithm)
    **/
   require (barber != NULL, "barber argument required");
   require (barber->tools & RAZOR_TOOL, "barber not holding a scissor");

   int steps = random_int(5,20);
   int slice = (global->MAX_WORK_TIME_UNITS-global->MIN_WORK_TIME_UNITS+steps)/steps;
   int complete = 0;
   barber->state = SHAVING;
   log_barber(barber);
   while(complete < 100)
   {
      spend(slice);
      complete += 100/steps;
      if (complete > 100)
         complete = 100;
      set_completion_barber_chair(barber_chair(barber->shop, barber->chairPosition), complete);
   }

   log_barber(barber);  // (if necessary) more than one in proper places!!!
}

static char* to_string_barber(Barber* barber)
{
   require (barber != NULL, "barber argument required");

   if (barber->internal == NULL)
      barber->internal = (char*)mem_alloc(skel_length + 1);

   char tools[4];
   tools[0] = (barber->tools & SCISSOR_TOOL) ? 'S' : '-',
      tools[1] = (barber->tools & COMB_TOOL) ?    'C' : '-',
      tools[2] = (barber->tools & RAZOR_TOOL) ?   'R' : '-',
      tools[3] = '\0';

   char* pos = (char*)"-";
   if (barber->chairPosition >= 0)
      pos = int2nstr(barber->chairPosition+1, 1);
   else if (barber->basinPosition >= 0)
      pos = int2nstr(barber->basinPosition+1, 1);

   return gen_boxes(barber->internal, skel_length, skel,
         int2nstr(barber->id, 2),
         barber->clientID > 0 ? int2nstr(barber->clientID, 2) : "--",
         tools, stateText[barber->state], pos);
}
