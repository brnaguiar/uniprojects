package repo;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import thread.Hostess;
import thread.Passenger;
import thread.Pilot;

import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;


/**
 * General Repository of Information
* @author Bruno Aguiar, 80177
* @author David Rocha, 84807
 */
public class Repository {

    /**
     * Thread Hostess
     */
    private Hostess hostess;

    /**
     * Thread Pilot
     */
    private Pilot pilot;

    /**
     *  Array of Passenger threads
     */
    private Passenger[] passengerList;

    /**
     * Number of Passengers in Queue
     */
    private int numberInQueue;

    /**
     * Number of Passengers in the plane
     */
    private int numberInPlane;

    /**
     * Number of passengers arrived at Destination
     */
    private int numberAtDestination;

    /**
     * Number of flights taken in the simulation
     */
    private int flightNum = 0;

    /**
     * Declaration of a writer for the creation of a character file to register the simulation
     */
    private FileWriter repoWriter;

    /**
     * Latest State of the Simulation
     */
    private String lastStateString;

    /**
     * Logger to provide command-line information of the simulation state
     */
    private final Logger logger = Logger.getLogger(Repository.class.getName());

    /**
     * Instantiation of a thread syncronization mechanism 
     * @see ReentrantLock  
     */
    private ReentrantLock mutex = new ReentrantLock();

    /**
     * Constructor
     */
    public Repository() {
        numberInQueue = 0;
        numberInPlane = 0;
        numberAtDestination = 0;
        try {
            
            repoWriter = new FileWriter(new File("repo.txt"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
    * @param hostess An Instance of Hostess Thread
    */
    public void setHostess(Hostess hostess) {
        this.hostess = hostess;
    }

    /**
     * 
     * @param pilot An Instance of Pilot Thread
     */
    public void setPilot(Pilot pilot) {
        this.pilot = pilot;
    }

    /**
     * 
     * @param passengerList Array of Passenger threads
     */
    public void setPassengerList(Passenger[] passengerList) {
        this.passengerList = passengerList;
    }

    /**
     * Increments the number of passengers in queue
     */
    public void incrementNumberInQueue() {
        numberInQueue++;
    }

    /**
     * Decrements the number of passengers in queue
     */
    public void decrementNumberInQueue() {
        numberInQueue--;
    }
    
    /**
     * @return number of passengers in the plane
     */
    public int getNumberInPlane() {
        return this.numberInPlane;
    }

    /**
     * Decrements the number of passengers in the plane
     */
    public void decrementNumberInPlane() {
        numberInPlane--;
    }

    /**
     * Increments the number of passengers in the plane
     */
    public void incrementNumberInPlane() {
        numberInPlane++;
    } 

    /**
     * Increments the number of passengers arrived at Destination
     */
    public void incrementNumberAtDestination() {
        numberAtDestination++;
    }  

    /**
     * @return The number of flights taken in the simulation
     */
    public int getFlightNum() {
        return this.flightNum;
    }

    /**
     * @param flightNum Number of flights taken in the simulation
     */
    public void setFlightNum(int flightNum) {
        this.flightNum = flightNum;
    }

    /**
     * Increment the number of flights taken in the simulation
     */
    public void incrementFlightNum() {
        this.flightNum++;
    }

    /**
     * Close the writing session
     */
    public void closelog(){
        try {
            this.repoWriter.close();
            this.repoWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Writes the header format in the simulation report
     * <p> Example: {@code PT   HT   P0   P1   P2   P3   P4   P5   P6   P7   P8   P9  P10  P11  P12  P13  P14  P15  P16  P17  P18  P19  P20  InQ  InF PTAL} </p>
     */
    public void logEntities(){
        String entities = String.format("%4s %4s", "PT", "HT");
        for(int i = 0; i < passengerList.length; i++)
            entities += String.format(" %4s", ("P"+i));
        entities += String.format(" %4s %4s %4s%n", "InQ", "InF", "PTAL");
        logger.info(entities);
        try {
            this.repoWriter.write(entities);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Writes thread's state in the simulation report
     * <p> Example: {@code WFB   CP   IF   IF   IF   IF   IF   IQ   IQ   IQ   IQ   IQ  GTA  GTA  GTA  GTA  GTA  GTA  GTA  GTA  GTA  GTA  GTA    5    5    0} </p>
     */
    public void log(){
        mutex.lock();
        String states = String.format("%4s %4s", pilot.getStateString(), hostess.getStateString());
        for(int i = 0; i < passengerList.length; i++)
            states += String.format(" %4s", passengerList[i].getStateString());
        states += String.format(" %4s %4s %4s%n", numberInQueue, numberInPlane, numberAtDestination);

        if(!states.equals(this.lastStateString)){ 
            logger.info(states);
        }

        try {
            if(!states.equals(this.lastStateString)){
                repoWriter.write(states);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        lastStateString = states;
        mutex.unlock();
    }

    /**
     * Writes the state "Boarding Started" in the simulation report and informs the current flight number
     * <p> Example: {@code Flight 1: boarding started.} </p>
     */
    public void logFlightBoardingStarting(){
        mutex.lock();
        String flightString = String.format("%nFlight %d: boarding started.%n", flightNum);
        logger.info(flightString);
        try {
            repoWriter.write(flightString);
        } catch (IOException e) {
            e.printStackTrace();
        }
        mutex.unlock();
    }

    /**
     * Writes the state "Passenger Checked" in the simulation report and informs the current flight number 
     * <p> Example: {@code Flight 1: passenger 0 checked.} </p>
     * @param id id of the passenger
     */
    public void logPassengerCheck(int id){
        mutex.lock();
        String flightString = String.format("%nFlight %d: passenger %d checked.%n", flightNum, id);
        logger.info(flightString);
        try {
            repoWriter.write(flightString);
        } catch (IOException e) {
            e.printStackTrace();
        }
        mutex.unlock();
    }

    /**
     * Writes the state "Departed with N Passengers" in the simulation report and informs the current flight number 
     * <p> Example: {@code Flight 1: departed with 10 passengers.} </p>
     */
    public void logDeparture(){
        mutex.lock();
        String flightString = String.format("%nFlight %d: departed with %d passengers.%n", flightNum, numberInPlane);
        logger.info(flightString);
        try {
            repoWriter.write(flightString);
        } catch (IOException e) {
            e.printStackTrace();
        }
        mutex.unlock();
    }

    /**
     * Writes the state "Flight Arrived" in the simulation report and informs the current flight number
     * <p> Example: {@code Flight 1: arrived.} </p>
     */
    public void logArriving(){
        mutex.lock();
        String flightString = String.format("%nFlight %d: arrived.%n", flightNum);
        logger.info(flightString);
        try {
            repoWriter.write(flightString);
        } catch (IOException e) {
            e.printStackTrace();
        }
        mutex.unlock();
    }

    /**
     * Writes the state "Flight Returning" in the simulation report and informs the current flight number
     * <p> Example: {@code Flight 1: returning.} </p>
     */
    public void logReturning(){
        mutex.lock();
        String flightString = String.format("%nFlight %d: returning.%n", flightNum);
        logger.info(flightString);
        try {
            repoWriter.write(flightString);
        } catch (IOException e) {
            e.printStackTrace();
        }
        mutex.unlock();
    }
}
