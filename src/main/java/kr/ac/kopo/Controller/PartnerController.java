package kr.ac.kopo.Controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.Service.AttachService;
import kr.ac.kopo.Service.PartnerService;
import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Write;

@Controller
@RequestMapping("/partner")
public class PartnerController {
	
	final String path = "partner/";
	final String thumbnailUploadPath = "c://thumbnailUpload/"; //썸네일 저장경로
	final String topUploadPath = "c://topUpload/"; //대표이미지 저장경로
	final String uploadPath = "c://upload/"; //본문 이미지 저장경로
	
	@Autowired
	PartnerService service;
	
	@Autowired
	AttachService attachService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Write> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/write")
	public String write() {
		return path + "write";
	}
	
	@PostMapping("/write")
	public String write(MultipartFile image1, List<MultipartFile> image2, Write item) {	
		
			if(!image1.isEmpty()) {
				String filename = image1.getOriginalFilename();
				String uuid = UUID.randomUUID().toString();
	
				try {
					image1.transferTo(new File(thumbnailUploadPath + uuid + "_" + filename));
					
					Attach attach = new Attach();
					attach.setUuid(uuid);
					attach.setFilename(filename);
					
					item.setThumbnail(attach);
					
				} catch (IllegalStateException e) {				
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}				
			}		
			
			List<Attach> topImages = new ArrayList<>();
			
			for(MultipartFile file : image2) {
				if(!file.isEmpty()) {
					String filename = file.getOriginalFilename();
					String uuid = UUID.randomUUID().toString();
		
					try {
						file.transferTo(new File(topUploadPath + uuid + "_" + filename));
						
						Attach attach = new Attach();
						attach.setUuid(uuid);
						attach.setFilename(filename);
						
						topImages.add(attach);
						
					} catch (IllegalStateException e) {				
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}				
				}			
			}
			item.setTopImage(topImages);
		
		
		service.write(item);
		
		return path + "list";
	}
	
	@GetMapping("/detail/{id}")
	public String detail(@PathVariable int id, Model model) {
		Write item = service.item(id);
		
		Attach thumbnail = attachService.thumbnail(id);
		List<Attach> topImage = attachService.topImage(id);
		List<Attach> attachs = attachService.attachs(id);
		
		model.addAttribute("item", item);
		model.addAttribute("thumbnail", thumbnail);
		model.addAttribute("topImage", topImage);
		model.addAttribute("attachs", attachs);
		
		return  path + "detail";
	}
	
}
