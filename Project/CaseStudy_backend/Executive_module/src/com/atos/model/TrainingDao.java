package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class TrainingDao {
	
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Training t) {
		String sql = "insert into updated_tr_list(tid,roomno,trName,platform,status) values('"+t.getTid() + "','"  + t.getRoomno()
				+ "','" + t.getTrName() + "','" + t.getPlatform() + "','" + t.getStatus() + "')";
		return template.update(sql);
	}
	
	public int update(Training t) {
		 String sql="update updated_tr_list set roomno='"+t.getRoomno()+"',trName='" + t.getTrName() + "',platform='" + t.getPlatform() +"',status='"+ t.getStatus() +"' where tid="+t.getTid()+"";
		System.out.println(t.getTid());
		 return template.update(sql);
	 
	 }
	
	public Training getRequestById(int tid) {
		String sql="select * from updated_tr_list where tid=?";
		return template.queryForObject(sql, new Object[] {tid},new BeanPropertyRowMapper<Training>(Training.class));
	}
	public List<Training> getRequests() {
		return template.query("select * from updated_tr_list", new RowMapper<Training>() {
			public Training mapRow(ResultSet rs, int row) throws SQLException {
				Training t = new Training();
				t.setTid(rs.getString(1));
				t.setRoomno(rs.getString(2));
				t.setTrName(rs.getString(3));
				t.setPlatform(rs.getString(4));
				t.setStatus(rs.getString(5));
				return t;
			}
		});
	}
	
}
