package kosta.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kosta.mvc.dto.MemberDto;
import kosta.mvc.service.MemberService;
import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class LoginController {
    private MemberService memberService;

    // 회원가입 페이지
    @GetMapping("/signup")
    public String dispSignup() {
    	return "board/signup";
    }

    // 회원가입 처리
    @PostMapping("/signup")
    public String execSignup(MemberDto memberDto) {
        memberService.joinUser(memberDto);

        return "redirect:/login";
    }

    // 로그인 페이지
    @GetMapping("/login")
    public String dispLogin() {
        return "board/login";
    }

    // 로그인 결과 페이지
    @GetMapping("/user/main")
    public String dispLoginResult() {
        return "board/user/main";
    }

    // 로그아웃 결과 페이지
    @GetMapping("/user/logout/result")
    public String dispLogout() {
        return "/logout";
    }

    // 접근 거부 페이지
    @GetMapping("/user/denied")
    public String dispDenied() {
        return "/denied";
    }

    // 내 정보 페이지
    @GetMapping("/user/info")
    public String dispMyInfo() {
        return "/myinfo";
    }

    // 어드민 페이지
    @GetMapping("/admin")
    public String dispAdmin() {
        return "/admin";
    }
}
