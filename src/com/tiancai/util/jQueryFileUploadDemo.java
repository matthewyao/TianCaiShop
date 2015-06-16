package com.tiancai.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class jQueryFileUploadDemo extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		uploadify(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doGet(req, resp);
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void uploadify(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String dirDate = sdf.format(new Date());
		String dir = "upload/" + dirDate;//按日期生成存放目录
		String savePath = this.getServletConfig().getServletContext()
				.getRealPath(dir);
		File f1 = new File(savePath);
		if (!f1.exists()) {
			f1.mkdirs();
		}
		f1 = null;

		DiskFileItemFactory fac = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fac);
		upload.setHeaderEncoding("UTF-8");
		List fileList = null;
		try {
			fileList = upload.parseRequest(req);
		} catch (FileUploadException ex) {
			ex.printStackTrace();
			return;
		}
		if(fileList == null){
			return;
		}
		Iterator<FileItem> it = fileList.iterator();
		String name = "";
		String extName = "";
		while (it.hasNext()) {
			FileItem item = it.next();
			if (!item.isFormField()) {
				name = item.getName();
				if (name == null || name.trim().equals("")) {
					continue;
				}

				//文件后缀名 如：.jpg
				if (name.lastIndexOf(".") >= 0) {
					extName = name.substring(name.lastIndexOf("."));
				}
				//\s去除任何空空白符如：  空格符、制表符和进纸符等
				String fileName = name.replaceAll("\\s", "");
				
				fileName = fileName.substring(0, fileName.lastIndexOf(".") - 1);
				
				// 仅仅是为了判断当前命名的文件是否已存在
				File f = new File(savePath + "/" + fileName + extName);
				
				while (f.exists()) {//如果文件存在，在文件名后加上随机数做区分

					/* 日期+100以内的随机数 */
					int rand = (int) Math.round(Math.random() * 100);
					sdf = new SimpleDateFormat("HHMMss");
					
					fileName += "_"+sdf.format(new Date()) + rand;
					f = new File(savePath + "/" + fileName + extName);
				}
				f = null;

				File saveFile = new File(savePath + "/" + fileName
						+ extName);
				try {
					item.write(saveFile);
				} catch (Exception e) {
					e.printStackTrace();
				}
				System.out.println(dir + "/" + fileName + extName);//返回相对根路径：http://xx.xx.com/upload/songs/2010/06/05/ring.mp3
				
				/*
				 * 注：插件需要服务器端返回JSON格式的字符串，且必须以下面的格式来返回，一个字段都不能少
				 *     如果上传失败，那么则须用特定格式返回信息：
				 *      "name": "picture1.jpg",
    					"size": 902604,
    					"error": "Filetype not allowed"
    				   另外，files必须为一个JSON数组，哪怕上传的是一个文件
				 */
				JSONArray ja = new JSONArray();
				JSONObject json = new JSONObject();
				json.put("name", fileName);
				json.put("size", 321656);
				json.put("url", "http://localhost:9096/upload/" + dirDate + "/" + saveFile.getName());
				json.put("thumbnailUrl", "http://localhost:9096/upload/" + dirDate + "/" + "thumbnail/" + saveFile.getName());
				json.put("deleteUrl", "http://localhost:9096/upload/" + dirDate + "/" + saveFile.getName());
				json.put("deleteType", "DELETE");
				ja.add(json);
				JSONObject js = new JSONObject();
				js.put("files", ja);
				resp.getWriter().print(js.toString());
			}
		}
	}
}