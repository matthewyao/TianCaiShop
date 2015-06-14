package com.tiancai.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tiancai.bean.Address;
import com.tiancai.bean.Commodity;
import com.tiancai.bean.Item;

public class BeanFactory {
	
	public static Item buildItem(ResultSet rs,boolean isDetailPage){
		Item item = new Item();
		try {
			if (rs.next()) {
				item.setItemCode(rs.getString("itemCode"));
				item.setBrandName(rs.getString("brandName"));
				item.setCategoryId(rs.getString("categoryId"));
				item.setCollectTimes(rs.getInt("collectTimes"));
				item.setViewTimes(rs.getInt("viewTimes"));
				item.setCreateTime(rs.getString("createTime"));
				item.setIsDeleted(rs.getInt("isDeleted"));
				item.setItemDesc(rs.getString("itemDesc"));
				item.setItemTitle(rs.getString("itemTitle"));
				item.setSex(rs.getInt("sex"));
				item.setPrice(rs.getDouble("price"));
				if(isDetailPage){
					item.setDefaultUrl(rs.getString("url"));
					String sql = "SELECT SUM(remainNum) FROM commodity WHERE itemCode='" + rs.getString("itemCode")+"'";
					item.setInventory(JdbcTemplate.queryForInt(sql));
					sql = "SELECT url FROM material WHERE `type`=2 AND itemCode='"+rs.getString("itemCode")+"'";
					item.setBrandUrl(JdbcTemplate.queryForString(sql));
				}
			}
		} catch (SQLException e) {
			System.out.println("<<<<<<<<<BeanFactory.buildItem throw SQLException,please check"+e.getMessage());
			System.out.println(e.getStackTrace());
		}
		return item;
	}
	
	public static List<Item> buildItemList(ResultSet rs,boolean isHomePage){
		List<Item> itemList = new ArrayList<Item>();
		try {
			while (rs.next()) {
				Item item = new Item();
				item.setItemCode(rs.getString("itemCode"));
				item.setBrandName(rs.getString("brandName"));
				item.setCategoryId(rs.getString("categoryId"));
				item.setCollectTimes(rs.getInt("collectTimes"));
				item.setViewTimes(rs.getInt("viewTimes"));
				item.setCreateTime(rs.getString("createTime"));
				item.setIsDeleted(rs.getInt("isDeleted"));
				item.setItemDesc(rs.getString("itemDesc"));
				item.setItemTitle(rs.getString("itemTitle"));
				item.setSex(rs.getInt("sex"));
				item.setPrice(rs.getDouble("price"));
				if(isHomePage){
					item.setDefaultUrl(rs.getString("url"));
					String sql = "SELECT SUM(remainNum) FROM commodity WHERE itemCode='" + rs.getString("itemCode")+"'";
					item.setInventory(JdbcTemplate.queryForInt(sql));
					sql = "SELECT url FROM material WHERE `type`=2 AND itemCode='"+rs.getString("itemCode")+"'";
					item.setBrandUrl(JdbcTemplate.queryForString(sql));
				}
				itemList.add(item);
			}
		} catch (SQLException e) {
			System.out.println("<<<<<<<<<BeanFactory.buildItem throw SQLException,please check"+e.getMessage());
			System.out.println(e.getStackTrace());
		}
		return itemList;
	}
	
	//商品信息
	public static Commodity buildCommodity(ResultSet rs){
		Commodity c = new Commodity();
		try {
			while (rs.next()) {
				c.setColor(rs.getString("color"));
				c.setCommodityCode(rs.getString("commodityCode"));
				c.setCreateTime(rs.getString("createTime"));
				c.setIsDeleted(rs.getInt("isDeleted"));
				c.setItemCode(rs.getString("itemCode"));
				c.setRemainNum(rs.getInt("remainNum"));
				c.setSex(rs.getInt(rs.getInt("sex")));
				c.setSize(rs.getString("size"));
			}
		} catch (SQLException e) {
			System.out.println("<<<<<<<<<BeanFactory.buildCommodity throw SQLException,please check"+e.getMessage());
			System.out.println(e.getStackTrace());
		}
		return c;
	}
	
	//地址信息
	public static Address buildAddress(ResultSet rs){
		Address a = new Address();
		try {
			while (rs.next()) {
				a.setAddrId(rs.getString("addrId"));
				a.setAddrName(rs.getString("addrName"));
				a.setIsDefault(rs.getInt("isDefault"));
				a.setMailNo(rs.getInt("mailNo"));
				a.setReceiveName(rs.getString("receiveName"));
				a.setUsername(rs.getString("username"));
			}
		} catch (SQLException e) {
			System.out.println("<<<<<<<<<BeanFactory.buildAddress throw SQLException,please check"+e.getMessage());
			System.out.println(e.getStackTrace());
		}
		return a;
	}
}
