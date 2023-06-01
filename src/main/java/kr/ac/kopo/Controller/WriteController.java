package kr.ac.kopo.Controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;



import kr.ac.kopo.Service.InvestAttachService;
import kr.ac.kopo.Service.InvestSummerService;
import kr.ac.kopo.Service.WriteService;
import kr.ac.kopo.Service.WriteServiceThumbnail2;
import kr.ac.kopo.model.InvestAttach;
import kr.ac.kopo.model.InvestAttachSummer;
import kr.ac.kopo.model.Member;
import kr.ac.kopo.model.Write;
import kr.ac.kopo.model.WriteAttachThumbnail;


@Controller
@RequestMapping("/write")
public class WriteController {
final String path = "write/";
final String uploadPath="c://upload/";
final String uploadPath2="d://upload/";


	@Autowired
	WriteService service;
	
	@Autowired
	WriteServiceThumbnail2 WstService;
	
	@Autowired
	InvestAttachService InvestAttachService;
	
	@Autowired
	InvestSummerService IaService;


	@GetMapping("/invest_write")
	public String list() {
		
		
		return path + "invest_write";
	}
	
	@PostMapping("/invest_write")
	public String add(@SessionAttribute Member member, Write item) {
		//List<WriteAttachThumbnail> list = new ArrayList<WriteAttachThumbnail>();

		service.add(item, member.getNum());
		
		return "redirect:../";
	}
	@GetMapping("/invest_write2")
	public String list2() {
		
		return path + "invest_write2";
	}
	@GetMapping("/invest_write3")
	public String list3() {
		
		return path + "invest_write3";
	}
	
	
	@PostMapping("WriteAttachThumbnail")
	public  String WriteAttachThumbnail(@RequestParam("filename") MultipartFile file)throws Exception {

		String filename = file.getOriginalFilename();
		String uuid = UUID.randomUUID().toString().substring(0,8);
		String filename2 = uuid + filename;
		String path = uploadPath + filename2;
		
	
			file.transferTo(new File(path));
			
		System.out.println(filename);
			
		WstService.add(filename);
		
		return "redirect:invest_write";
	
	}
	
	@PostMapping("investAttach")
	public String investAttach(MultipartHttpServletRequest request)throws Exception{
			
		List<MultipartFile> files = request.getFiles("InvestAttach");
		
		List<InvestAttach> list = new ArrayList<InvestAttach>();
		  for (MultipartFile file : files) {
		        String filename = file.getOriginalFilename();
		        String uuid = UUID.randomUUID().toString().substring(0,8);
		        String filename2 = uuid + filename;
		        String path = uploadPath + filename2;
		        file.transferTo(new File(path));
		        
		       InvestAttach attachItem = new InvestAttach();
		        attachItem.setFilename(filename2);
		        list.add(attachItem);
		    }
		  
		 System.out.println(list.size()); ;
		
		  InvestAttachService.add(list);
		  
		  
		return "redirect:invest_write";
				
}
	@PostMapping("/summernote")
	public String summerNoteAdd(@RequestParam("image") MultipartFile image) {
	    // 이미지 처리 로직을 수행하고 필요한 작업을 수행합니다.
		
				String filename = image.getOriginalFilename();
	    // 예를 들어, 이미지를 저장하고 DB에 관련 정보를 추가하는 등의 작업을 수행할 수 있습니다.
	    
	    // 이미지 업로드 후 반환되는 이미지 URL을 response 객체에 담아서 전송합니다.
	    String imageUrl = filename;
	    System.out.println(imageUrl);
	    
	    // Response 객체 생성 (JSON 형태로 응답할 경우)
	    // Map<String, String> response = new HashMap<>();
	    // response.put("imageUrl", imageUrl);
	    
	    // Redirect 할 URL을 반환합니다.
	    return "redirect:/invest_write";
	}


	
}
