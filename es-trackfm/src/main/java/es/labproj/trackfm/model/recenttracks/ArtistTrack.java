package es.labproj.trackfm.model.recenttracks;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Entity
public class ArtistTrack {
	
	@Id
	@GeneratedValue
	private long Id;

	private @Getter @Setter String mbid;

	@JsonProperty("#text")
	private @Getter @Setter String text;
	
}

