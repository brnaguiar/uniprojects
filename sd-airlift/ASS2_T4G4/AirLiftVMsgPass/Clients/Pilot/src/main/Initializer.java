package main;

import stubs.DepartureAirport;
import stubs.Plane;
import stubs.ArrivalAirport;
import threads.Pilot;

/**
 * Pilot's main
 * @author Bruno Aguiar, 80177
 * @author David Rocha, 84807
 */
public class Initializer {
    public static void main(String args[]){
        
        /**
         * Argument fetching
         */
        String dp_address = args[0];
        int dp_port = Integer.parseInt(args[1]);
        String plane_address = args[2];
        int plane_port = Integer.parseInt(args[3]);
        String ap_address = args[4];
        int ap_port = Integer.parseInt(args[5]);
        
        /**
         * Instantiation of stubs
         */
        DepartureAirport dp = new DepartureAirport(dp_address, dp_port);
        Plane plane = new Plane(plane_address, plane_port);
        ArrivalAirport ap = new ArrivalAirport(ap_address, ap_port);

        /**
         * Instantiation of Pilot
         */
        Pilot pilot = new Pilot(plane, dp, ap);

        /**
         * Thread's inicialization
         */
        pilot.start();
        try {
            pilot.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        /**
         * Server shutdown.
         */
        ap.serverShutdown();
        plane.serverShutdown();
        dp.serverShutdown();

    }
}
