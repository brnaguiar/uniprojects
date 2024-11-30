package es.labproj.trackfm.model.artist;

import lombok.Getter;
import lombok.Setter;

public class ArtistDetails {

	private @Getter @Setter String name;
	private @Getter @Setter Bio bio;
	private @Getter @Setter Stats stats;
	private @Getter @Setter Tags tags;
	private @Getter @Setter Similar similar;
	private @Getter @Setter String ontour;
	
}
