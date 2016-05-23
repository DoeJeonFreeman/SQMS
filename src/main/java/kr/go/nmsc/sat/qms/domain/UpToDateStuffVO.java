package kr.go.nmsc.sat.qms.domain;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author me
 * 
 * get most recent stuff
 *
 */
public class UpToDateStuffVO implements Serializable{
	
	private static final long serialVersionUID = -7147016742738953109L;
	
	private String id;
	private Timestamp lateststuff;
	private String description;
//	private Date beginat;
	
//	private static final SimpleDateFormat CAL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	
	private static final SimpleDateFormat CAL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	
	public UpToDateStuffVO() {}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getLateststuff() {
		return lateststuff;
	}

	public void setLateststuff(Timestamp lateststuff) {
		this.lateststuff = lateststuff;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	//return yyyy-mm-dd
	public String getCompbegindate4Cal() {
		return this.CAL_DATE_FORMAT.format(this.lateststuff);
	}
	
	
}
