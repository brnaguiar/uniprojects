package es.labproj.trackfm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableScheduling;

import es.labproj.trackfm.dbcontroller.DBController;

@SpringBootApplication
@ComponentScan({"es.labproj.trackfm.dbcontroller", "es.labproj.trackfm.api"})

@EnableJpaRepositories({"es.labproj.trackfm.dbcontroller"})
@EntityScan({"es.labproj.trackfm.model.recenttracks"})
@EnableScheduling
public class App { 

	public static void main(String[] args) {

		ConfigurableApplicationContext context = SpringApplication.run(App.class, args);
		DBController dbcontroller = context.getBean(DBController.class);
		dbcontroller.addTracksChart();
		dbcontroller.addRecentTracks();
		dbcontroller.addTracks();
		dbcontroller.addDateTrack();
		dbcontroller.addArtistTrack();
		dbcontroller.addAlbumTrack();
		
	}

}

