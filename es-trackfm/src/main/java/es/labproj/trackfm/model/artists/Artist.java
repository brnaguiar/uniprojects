package es.labproj.trackfm.model.artists;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
public class Artist {

    private @Getter @Setter String name;
    private @Getter @Setter String playcount;
    private @Getter @Setter String listeners;

}