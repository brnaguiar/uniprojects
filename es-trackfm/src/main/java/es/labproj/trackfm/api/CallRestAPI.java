package es.labproj.trackfm.api;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import es.labproj.trackfm.dbcontroller.AlbumTrackRepository;
import es.labproj.trackfm.dbcontroller.ArtistTrackRepository;
import es.labproj.trackfm.dbcontroller.DateTrackRepository;
import es.labproj.trackfm.dbcontroller.RecentTracksRepository;
import es.labproj.trackfm.dbcontroller.TrackRepository;
import es.labproj.trackfm.dbcontroller.TracksChartRepository;
import es.labproj.trackfm.model.artist.ArtistDetails;
import es.labproj.trackfm.model.artist.DetailsChart;
import es.labproj.trackfm.model.artists.Artist;
import es.labproj.trackfm.model.artists.ArtistChart;
import es.labproj.trackfm.model.recenttracks.TracksChart;
import es.labproj.trackfm.model.userartists.ArtistT;
import es.labproj.trackfm.model.userartists.TopChart;
import es.labproj.trackfm.model.userinfo.UserDetailsChart;
import es.labproj.trackfm.model.userinfo.UserDetails;

@Component
@RestController
public class CallRestAPI {
	
	static RestTemplate restTemplate = new RestTemplate();

	@Autowired
    TracksChartRepository tracksChartReposity;


	@Autowired
	RecentTracksRepository recentTracksRepository;
	
    @Autowired
    TrackRepository trackReposity;

    @Autowired
    DateTrackRepository dateTrackRepository;

    @Autowired
    ArtistTrackRepository artistTrackRepository;

    @Autowired
    AlbumTrackRepository albumTrackRepository;

	//private static final Logger log = LoggerFactory.getLogger(CallRestAPI.class);
	
	@CrossOrigin(origins = "http://localhost:3000")
	@RequestMapping(value="/artists/",  method = RequestMethod.GET)
	public ResponseEntity<List<Artist>> Home() {
		
		ResponseEntity<ArtistChart> responses = restTemplate.exchange(
				"http://ws.audioscrobbler.com/2.0/?method=chart.gettopartists&api_key=46d61d429e1fcddb75d6b42038a671f5&format=json"
				, HttpMethod.GET
				, null
				, new ParameterizedTypeReference<ArtistChart>() {}
        );
        List<Artist> artist = responses.getBody().getArtists().getArtist()  ;
       
		return new ResponseEntity<List<Artist>>(artist, HttpStatus.OK);
	}
	
	@CrossOrigin(origins = "http://localhost:3000")
	@RequestMapping(value="/recenttracks/",  method = RequestMethod.GET)
	public ResponseEntity<TracksChart> RecentTracks()
	{
		Iterable<TracksChart> tracks = tracksChartReposity.findAll();
		List<TracksChart> lista = new ArrayList<TracksChart>();
		tracks.forEach(t -> lista.add(t));
		TracksChart elem = lista.get(0);
		return new ResponseEntity<TracksChart>(elem, HttpStatus.OK);
	}

	@CrossOrigin(origins = "http://localhost:3000")
	@RequestMapping(value = "/artist/", method = RequestMethod.GET)
	public ResponseEntity<ArtistDetails> Details(@RequestParam("name") String name)
	{
		ResponseEntity<DetailsChart> responses = restTemplate.exchange(
				"http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist="+name+"&api_key=46d61d429e1fcddb75d6b42038a671f5&format=json"
				, HttpMethod.GET
				, null
				, new ParameterizedTypeReference<DetailsChart>() {}
        );
		return new ResponseEntity<ArtistDetails>(responses.getBody().getArtist(), HttpStatus.OK);
	}
	
	@CrossOrigin(origins = "http://localhost:3000")
	@RequestMapping(value = "/userinfo/", method = RequestMethod.GET)
	public ResponseEntity<UserDetails> UserDetails(@RequestParam("name") String name)
	{
		ResponseEntity<UserDetailsChart> responses = restTemplate.exchange(
				"http://ws.audioscrobbler.com/2.0/?method=user.getinfo&user="+name+"&api_key=46d61d429e1fcddb75d6b42038a671f5&format=json"
				, HttpMethod.GET
				, null
				, new ParameterizedTypeReference<UserDetailsChart>() {}
        );
		return new ResponseEntity<UserDetails>(responses.getBody().getUser(), HttpStatus.OK);
	}

	@CrossOrigin(origins = "http://localhost:3000")
	@RequestMapping(value = "/userartists/", method = RequestMethod.GET)
	public ResponseEntity<List<ArtistT>> UserArtists(@RequestParam("name") String name)
	{
		ResponseEntity<TopChart> responses = restTemplate.exchange(
				"http://ws.audioscrobbler.com/2.0/?method=user.gettopartists&user="+name+"&api_key=46d61d429e1fcddb75d6b42038a671f5&format=json"
				, HttpMethod.GET
				, null
				, new ParameterizedTypeReference<TopChart>() {}
        );
		return new ResponseEntity<List<ArtistT>>(responses.getBody().getTopartists().getArtist(), HttpStatus.OK);
	}
	// API key = 46d61d429e1fcddb75d6b42038a671f5
	// shared secret = 2cf0450de35bbffcb265741051443ace
		
}

