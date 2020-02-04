package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class TrainerDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	/*
	 * public int save(TrainerDetails t) { String sql =
	 * "insert into TR_details(tid,roomno,trName,platform,status) " +
	 * "values(id_sq1.nextval,'" + t.getRoomno() + "','" + t.getTrName() + "','" +
	 * t.getPlatform() + "','" + t.getStatus() + "')"; return template.update(sql);
	 * }
	 * 
	 * 
	 * public int update(TrainerDetails t) { String
	 * sql="update TR_details set roomno='"+t.getRoomno()+"',trName='" +
	 * t.getTrName() + "',platform='" + t.getPlatform() +"',status='"+ t.getStatus()
	 * +"' where tid="+t.getTid()+""; return template.update(sql); }
	 * 
	 * 
	 * public int delete(int tid) { String
	 * sql="delete from TR_details where tid="+tid+""; return template.update(sql);
	 * }
	 */

	public TrainerDetails getRequestById(int tid) {
		String sql = "select * from TR_details where tid=?";
		return template.queryForObject(sql, new Object[] { tid },
				new BeanPropertyRowMapper<TrainerDetails>(TrainerDetails.class));
	}

	public List<TrainerDetails> getRequests() {
		return template.query("select * from TR_details", new RowMapper<TrainerDetails>() {
			public TrainerDetails mapRow(ResultSet rs, int row) throws SQLException {
				TrainerDetails td = new TrainerDetails();
				td.setTid(rs.getString(1));
				td.setRoomno(rs.getString(2));
				td.setTrName(rs.getString(3));
				td.setPlatform(rs.getString(4));
				td.setStatus(rs.getString(5));

				return td;
			}
		});
	}

}
