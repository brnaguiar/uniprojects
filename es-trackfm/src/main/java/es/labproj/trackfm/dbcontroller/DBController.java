package es.labproj.trackfm.dbcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import es.labproj.trackfm.dbcontroller.client.CallRestService;
import es.labproj.trackfm.model.recenttracks.Track;

@Component
@ComponentScan({"es.labproj.trackfm.dbcontroller.client"})
public class DBController {

    @Autowired
    CallRestService restService;

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

    @Autowired
    private KafkaTemplate<String,String> kafkaTemplate;

    String kafkaTopic = "kafka-trackfm";

    @Scheduled(fixedRate=30000)
    public void addTracksChart() {

        //tracksChartReposity.deleteAll();
        tracksChartReposity.save(restService.getMostRecentTracks());
        System.out.println("TracksChart added");
    }

    @Scheduled(fixedRate=30000)
    public void addRecentTracks() {

        //recentTracksRepository.deleteAll();
        recentTracksRepository.save(restService.getMostRecentTracks().getRecenttracks());
        System.out.println("RecentTracks added");

    }
    @Scheduled(fixedRate=30000)
    public void addTracks() {

        //trackReposity.deleteAll();
        List<Track> tracks = restService.getMostRecentTracks().getRecenttracks().getTrack();
        System.out.println("ola");
        System.out.println(tracks.get(0).toString());
        System.out.println("ola");
        tracks.forEach(t -> {
            if (t != null) {
                trackReposity.save(t);
            }
        });
        System.out.println("Tracks Added");
        kafkaTemplate.send(kafkaTopic, "Ultima musica: " + tracks.get(0).getName());
    }
    @Scheduled(fixedRate=30000)
    public void addDateTrack() {

        //dateTrackRepository.deleteAll();
        List<Track> dateTracks = restService.getMostRecentTracks().getRecenttracks().getTrack();
        dateTracks.forEach(t -> {
            if (t != null) {
                dateTrackRepository.save(t.getDate());
            }
        });
        System.out.println("Date Added");
        kafkaTemplate.send(kafkaTopic, "Data: " + dateTracks.get(0).getDate().getText());
    }

    @Scheduled(fixedRate=30000)
    public void addArtistTrack() {

        //artistTrackRepository.deleteAll();
        List<Track> tracks = restService.getMostRecentTracks().getRecenttracks().getTrack();
        tracks.forEach(t -> {
            if (t != null) {
                artistTrackRepository.save(t.getArtist());
            }
        });

        System.out.println("artists added");
    }

    @Scheduled(fixedRate=30000)
    public void addAlbumTrack() {

        //albumTrackRepository.deleteAll();
        List<Track> tracks = restService.getMostRecentTracks().getRecenttracks().getTrack();
        tracks.forEach(t -> {
            if (t != null) {
                albumTrackRepository.save(t.getAlbum());
            }
        });

        System.out.println("Album added");
    }
}

