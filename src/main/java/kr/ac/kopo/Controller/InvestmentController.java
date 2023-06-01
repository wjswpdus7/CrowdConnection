package kr.ac.kopo.Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Base64;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.Service.SignService;
import kr.ac.kopo.Service.WriteService;
import kr.ac.kopo.Service.WriteServiceThumbnail2;
import kr.ac.kopo.model.Member;
import kr.ac.kopo.model.Sign;
import kr.ac.kopo.model.Write;

@Controller
@RequestMapping("/investment")
public class InvestmentController {
final String path = "investment/";	
final String uploadPath="c://upload/";

	@Autowired
	SignService SignService;
	
	@Autowired
	WriteService WriteService;

	@Autowired
	WriteServiceThumbnail2 WstService;

	@GetMapping("/list")
	public String list(Model model) {
		
		List<Write> list = WriteService.list();
			
		String imgName = WstService.list(56);
		
		model.addAttribute("imgName", imgName);
		
		System.out.println(imgName);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}

	@GetMapping("/detail")
	public String detail(Model model) {
		
		List<Write> list = WriteService.list();
		
		model.addAttribute("item", list);
		
		return path + "detail";
	}
	
	@GetMapping("/detail/{id}")
	public String detail(@PathVariable int id,Model model,Write write) {
		
		Write item = WriteService.item(id);
		
		model.addAttribute("item", item);
		
		System.out.println(write.getTitle());
		
		return path + "detail";
	}
	
	@GetMapping("/detail/agree/{id}")
	public String agree(@PathVariable int id,Model model) {
		
		Write list = WriteService.item(id);
		
		model.addAttribute("item", list);
		
		return path + "agree";
	}
	
	
	@GetMapping("detail/agree/payment/{id}")
	public String payment(@PathVariable int id, Model model) {
		
		Write list = WriteService.item(id);
		
		model.addAttribute("item", list);
		
		return path + "payment";
	}
	
	/*
	@GetMapping("signature/{id}")
	public String signature(@PathVariable int id, @RequestParam("amount") int amount, Model model) {
	    Write list = WriteService.item(id);
	    System.out.println("controller: " + amount);
	    model.addAttribute("item", list);
	    return path + "signature";
	}
	 **/
	
	@PostMapping("signature/{id}")
	public String signature(@PathVariable int id, @RequestParam("amount") int amount, Model model) {
	    Write list = WriteService.item(id);
	    System.out.println("controller: " + amount);
	    System.out.println(id);
	    model.addAttribute("item", list);
	    return path + "signature";
	}
		
	
	  @PostMapping("/signature/saveimage/{id}")
	  @ResponseBody
	  public String saveimage(@PathVariable int id,@RequestBody Sign sign,@SessionAttribute("member") Member member) throws Exception{    
		 //따라서, 이 코드는 saveimage 메서드가 클라이언트로부터 전송된 데이터를 SignDTO 객체로 변환하여 받고, 이를 처리한 후 문자열을 반환하는 역할을 수행합니다.
		 //@RequestBody: HTTP 요청의 본문(body)에 포함된 데이터를 SignDTO 객체로 변환하여 sign 파라미터에 주입합니다. @RequestBody 애너테이션은 클라이언트로부터 전송된 JSON 또는 XML 형식의 데이터를 자바 객체로 변환하는 역할
			 
		String base = sign.getUrl(); //signDTO 객체에있는 URL를 변수 BASE에 저장
		
		System.out.println(sign.getUrl());
		
		base = base.substring(base.indexOf(",") + 1); // , 다음부터 문자추출
		
		//System.out.println(sign.getUrl());
		
	    byte[] parse = Base64.getDecoder().decode(base); 
	    //은 Base64로 인코딩된 문자열 base를 디코딩하여 원래의 바이트 배열로 변환하는 코드입니다.
	
	    String uuid = UUID.randomUUID().toString().substring(0,8); //uuid 변수에는 무작위로 생성된 UUID의 첫 8자리가 저장되어 있을 것입니다.
	    String path = uploadPath + uuid + ".png"; //path 에 파일의 저장경로를 지정
	    String initName = path;
	    
	    FileOutputStream fileOutputStream = new FileOutputStream(path); //parse라는 변수에 저장된 데이터를 fileOutputStream를 통해 파일에 씁니다.
	    fileOutputStream.write(parse); // 데이터는 fileOutputStream.write(parse)를 호출하여 파일에 기록됩니다.
	    fileOutputStream.close(); //파일 출력 작업이 완료되면 fileOutputStream을 닫아 파일을 안전하게 닫습니다. fileOutputStream.close()를 호출하여 파일을 닫습니다.
 
	    System.out.println(initName);
	    File file = new File(initName);
	   String filepath = file.getName();
	   
	   System.out.println(file.getPath());
	    
	  
	   
	   SignService.add(id,filepath,member.getNum());
	
	    return "OK";
	  }
	
	
	
	@GetMapping("signature/success/{id}")
	public String success(@PathVariable int id, Model model) {
		
			
		String name = "1c4ad9ff.png" ;
		
		
		
		
		String imgname = SignService.item2(name);

		System.out.println(imgname + " 컨트롤러입니다.");
		
		model.addAttribute("imgName", imgname);
	
		
		return path +"success";
	}
	
}
