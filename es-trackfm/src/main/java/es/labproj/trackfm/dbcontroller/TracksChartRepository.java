package es.labproj.trackfm.dbcontroller;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import es.labproj.trackfm.model.recenttracks.TracksChart;


@Repository
public interface TracksChartRepository extends CrudRepository<TracksChart, Long> {
    
}

