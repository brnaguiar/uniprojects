package es.labproj.trackfm.dbcontroller;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import es.labproj.trackfm.model.recenttracks.AlbumTrack;


@Repository
public interface AlbumTrackRepository extends CrudRepository<AlbumTrack, Long> {
    
}

