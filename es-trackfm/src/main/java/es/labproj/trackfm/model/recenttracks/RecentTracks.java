package es.labproj.trackfm.model.recenttracks;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Entity
public class RecentTracks {

	@Id
	@GeneratedValue
	private long Id;

	@OneToMany(cascade=CascadeType.ALL)
	private @Getter @Setter List<Track> track;
	
}