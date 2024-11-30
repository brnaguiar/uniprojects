package es.labproj.trackfm.model.userinfo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

public class UserDetails {
	
	private @Getter @Setter String playlists;
	private @Getter @Setter String playcount;
	private @Getter @Setter String country;
	private @Getter @Setter String name;
	private @Getter @Setter List<Image> image;
	
}
