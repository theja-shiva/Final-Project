package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class RequestDao {
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	public Request getRequestById(int id) {
		String sql="select * from user3 where id=?";
		return template.queryForObject(sql, new Object[] {id},new BeanPropertyRowMapper<Request>(Request.class));
	}
	
	
	public List<Request> getRequests() {
		return template.query("select * from user3", new RowMapper<Request>() {
			public Request mapRow(ResultSet rs, int row) throws SQLException {
				Request r = new Request();
				r.setId(rs.getInt(1));
				r.setEmpName(rs.getString(2));
				r.setDesignation(rs.getString(3));
				r.setEmail(rs.getString(4));
				r.setRequest(rs.getString(5));
				return r;
			}
		});
	}

}
