package es.labproj.trackfm.model.recenttracks;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Entity
public class Track {
	
	@Id
	@GeneratedValue
	private long Id;

	private @Getter @Setter String mbid;

	@OneToOne(cascade=CascadeType.ALL)
	private @Getter @Setter ArtistTrack artist;

	private @Getter @Setter String name;

	@OneToOne(cascade=CascadeType.ALL)
	private @Getter @Setter AlbumTrack album;

	@OneToOne(cascade=CascadeType.ALL) 
	private @Getter @Setter DateTrack date;
	
}		



  
 