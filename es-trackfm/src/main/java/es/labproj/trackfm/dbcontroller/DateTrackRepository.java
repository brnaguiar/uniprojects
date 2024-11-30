package es.labproj.trackfm.dbcontroller;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import es.labproj.trackfm.model.recenttracks.DateTrack;


@Repository
public interface DateTrackRepository extends CrudRepository<DateTrack, Long> {
    
}

