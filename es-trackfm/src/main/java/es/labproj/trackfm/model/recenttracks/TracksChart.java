package es.labproj.trackfm.model.recenttracks;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@ToString
@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class TracksChart {
	
	@Id
	@GeneratedValue
	private long Id;

	@OneToOne(cascade=CascadeType.ALL)
	private @Getter @Setter RecentTracks recenttracks;

}	  
