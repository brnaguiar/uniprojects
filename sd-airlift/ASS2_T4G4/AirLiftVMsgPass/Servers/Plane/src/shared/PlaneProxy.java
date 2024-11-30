package shared;

import communication.Message;
import communication.MessageType;
import communication.ServerCom;

/**
 * Plane's proxy
 * @author Bruno Aguiar, 80177
 * @author David Rocha, 84807
 */
public class PlaneProxy {

    /**
     * Instantiation of Plane
     */
    private final Plane plane;

    /** 
     * Constructor 
     * @param plane Instance of Plane
     */
    public PlaneProxy(Plane plane) {
        this.plane = plane;
    }
    
    /**
     * @param inMessage Message received
     * @param scon Server connection
     * @return Message to send
     */
    public Message processAndReply(Message inMessage, ServerCom scon){
        Message outMessage = null;
        switch(inMessage.getMessageType()){
            case PLANE_GET_NUMBER:{
                outMessage = new Message(MessageType.RETURN_PLANE_NUMBER, plane.getNumberInPlane());
                break;
            }
            case HOSTESS_INFORM_PLANE_READY:{
                plane.hostessInformPlaneReadyToTakeOff(inMessage.getState());
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            case PILOT_WAIT_ALL_INBOARD:{
                plane.pilotWaitForAllInBoard(inMessage.getState());
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            case PILOT_FLY_DESTINATION_POINT:{
                plane.pilotFlyToDestinationPoint(inMessage.getState());
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            case PILOT_ANNOUNCE_ARRIVAL:{
                plane.pilotAnnounceArrival(inMessage.getState());
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            case PASSENGER_WAIT_FOR_END:{
                plane.passengerWaitForEndOfFlight(inMessage.getID(), inMessage.getState());
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            case PASSENGER_BOARD_PLANE:{
                plane.passengerBoardThePlane(inMessage.getID(), inMessage.getState());
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            case PASSENGER_EXIT:{
                plane.passengerExit(inMessage.getID());
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            case SERVER_SHUTDOWN:{
                plane.serverShutdown();
                outMessage = new Message(MessageType.STATUS_OK);
                break;
            }
            default:
                break;
        }
        return outMessage;
    }
}
