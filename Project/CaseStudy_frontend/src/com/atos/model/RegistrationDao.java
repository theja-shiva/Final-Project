package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class RegistrationDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save1(Registration a) {
		
		
			String sql = "insert into registration01(fname,mname,lname,email,empid,phone,password,cpassword) values('" + a.getFname()
			+ "','" + a.getMname() + "','" + a.getLname() +"','" + a.getEmail() + "','" + a.getEmpid() + "','" + a.getPhone() + "','" + a.getPassword() +"','" + a.getCpassword() +  "')";
	return template.update(sql);
	
		
	}
	public Registration getRegistrationById(int id1) {
		String sql="select * from registration01 where id=?";
		return template.queryForObject(sql, new Object[] {id1},new BeanPropertyRowMapper<Registration>());
	}
	public List<Registration> getRegistration() {
		return template.query("select * from registration01", new RowMapper<Registration>() {
			public Registration mapRow(ResultSet rs, int row) throws SQLException {
				Registration r = new Registration();
				r.setFname(rs.getString(1));
				r.setMname(rs.getString(2));
				r.setLname(rs.getString(3));
				r.setEmail(rs.getString(4));
				r.setEmpid(rs.getInt(5));
				r.setPhone(rs.getInt(6));
				r.setPassword(rs.getString(7));
				return r;
			}
			});
		}
	}
