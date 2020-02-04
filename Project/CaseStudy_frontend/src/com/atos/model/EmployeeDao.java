package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class EmployeeDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Employee p) {
		String sql = "insert into user2(id,name,password,email,country) values(id_seq10.nextval,'" + p.getName()
				+ "','" + p.getPassword() + "','" + p.getEmail() + "','" + p.getCountry() + "')";
		return template.update(sql);
	}
	 public int update(Employee p) {
		 String sql="update user2 set name='"+p.getName()+"',Password='" + p.getPassword() + "',Email='" + p.getEmail() +"',Country='"+ p.getCountry() +"' where id="+p.getId()+"";
		System.out.println(p.getId());
		 return template.update(sql);
	 
	 }
	 public int delete(int id) {
		 String sql="delete from user2 where id="+id+"";
		 return template.update(sql); 
	 }
	
	public Employee getEmployeeById(int id) {
		String sql="select * from user2 where id=?";
		return template.queryForObject(sql, new Object[] {id},new BeanPropertyRowMapper<Employee>(Employee.class));
	}

	public List<Employee> getEmployees() {
		return template.query("select * from user2", new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee e = new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setCountry(rs.getString(5));
				return e;
			}
		});
	}
}