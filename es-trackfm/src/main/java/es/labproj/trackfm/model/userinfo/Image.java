package es.labproj.trackfm.model.userinfo;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;

public class Image {
	
	private @Getter @Setter String size;
	@JsonProperty("#text")
	private @Getter @Setter String text;
	
}
