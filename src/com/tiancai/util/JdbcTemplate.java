package com.tiancai.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class JdbcTemplate {
	
	private static Connection conn = DBConnector.getConnection();
	private static Statement stmt = null;
	
	/*
	 * ��ȡint������
	 * 
	 * */
	public static int queryForInt(String sql){
		int result = 0;		
		ResultSet rs = DBConnector.executeQuery(getStatement(conn), sql);
		try {
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/*
	 * ��ȡString������
	 * 
	 * */
	public static String queryForString(String sql){
		String result = "";
		ResultSet rs = DBConnector.executeQuery(getStatement(conn), sql);
		try {
			if (rs.next()) {
				result = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/*
	 * ����ResultSet
	 * 
	 * */
	public static ResultSet excuteQuery(String sql){
		return DBConnector.executeQuery(getStatement(conn), sql);
	}
	
	/*
	 * ִ��MMD���
	 * */
	public static boolean excute(String sql){
		boolean result = false;
		try {
			result = getStatement(conn).execute(sql);
		} catch (SQLException e) {
			System.out.println(">>>>>>>>>excute query failed,sql is :" + sql);
			e.printStackTrace();
		}
		return result;
	}
	
	private static Statement getStatement(Connection conn){
		try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return stmt;
	}
}
