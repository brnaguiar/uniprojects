package es.labproj.trackfm.model.artists;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ArtistChart {

    private @Getter @Setter Artists artists;
    
}

