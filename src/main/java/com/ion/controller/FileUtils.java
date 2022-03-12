package com.ion.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ion.vo.BlogGalleryVO;

@Component("fileUtils")
public class FileUtils {
	private static final String filePath = "C:\\20210927\\My Java\\WorkSpace8\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\I-ON_Project\\Resources\\upload";
	//파일 저장 위치 내꺼 기준임 - 
	
	public List<Map<String, Object>> parseInsertFileInfo(BlogGalleryVO ag, MultipartHttpServletRequest multireq) throws Exception{
		
		Iterator<String> iterator = multireq.getFileNames();
		
		//MultipartFile multipartFile = null;
		Map<String, List<MultipartFile>> multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		String imgDBname = null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int bno = ag.getAg_no();
		
		Calendar cal=Calendar.getInstance();
		
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int date =cal.get(Calendar.DATE);
		
		String filePath1 = filePath + "/" + year + "-" + month + "-" + date;
		File file = new File(filePath1);
		if(file.exists() == false) {
			file.mkdirs();
		}
		multipartFile = multireq.getMultiFileMap();
		List<MultipartFile> files = multipartFile.get("file");
		for(MultipartFile file1 : files) {
			//System.out.println(file1.getOriginalFilename());
			
			originalFileName = file1.getOriginalFilename();
			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
			storedFileName = getRandomString() + originalFileExtension;
			imgDBname = "/"+year+"-"+month+"-"+date + "/" + storedFileName;
			file = new File(filePath1 + "/" + storedFileName);
			file1.transferTo(file);
			listMap = new HashMap<String, Object>();
			listMap.put("ag_no", bno);
			listMap.put("ORG_FILE_NAME", originalFileName);
			listMap.put("ag_img1", imgDBname);
			listMap.put("FILE_SIZE", file1.getSize());
			list.add(listMap);
		}
		
		
		return list;
	}
	
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	
	
}

