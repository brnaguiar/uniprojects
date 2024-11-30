package es.labproj.trackfm.dbcontroller.client;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import es.labproj.trackfm.model.recenttracks.TracksChart;

@Component
public class CallRestService {

    static RestTemplate restTemplate = new RestTemplate();

    public TracksChart getMostRecentTracks() {
        
        ResponseEntity<TracksChart> responses = restTemplate.exchange("http://ws.audioscrobbler.com/2.0/?method=user.getRecentTracks&user=buaguiar&api_key=46d61d429e1fcddb75d6b42038a671f5&format=json"
            , HttpMethod.GET
            , null
            , new ParameterizedTypeReference<TracksChart>() {});

        return responses.getBody();
    }

}
