package es.labproj.trackfm.dbcontroller;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import es.labproj.trackfm.model.recenttracks.ArtistTrack;


@Repository
public interface ArtistTrackRepository extends CrudRepository<ArtistTrack, Long> {
    
}

