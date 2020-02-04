package com.atos.model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
public class ldDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	
	public int save2(ld l) {
		String sql = "insert into ld01(empid,fullname,slot,room_no,a_status) values('" + l.getEmpid()
				+ "','" + l.getFullname() + "','" + l.getSlot() + "','" + l.getRoom_no() +"','"+ l.getA_status() +"')";
		return template.update(sql);
	}

	public List<ld> getld() {
		return template.query("select * from ld01", new RowMapper<ld>() {
			public ld mapRow(ResultSet rs, int row) throws SQLException {
				ld l = new ld();
				l.setEmpid(rs.getString(1));
				l.setFullname(rs.getString(2));
				l.setSlot(rs.getInt(3));
				l.setRoom_no(rs.getInt(4));
				l.setA_status(rs.getString(5));
				return l;
			}
		});
	}

}
