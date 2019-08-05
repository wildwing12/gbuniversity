package common;

import javax.servlet.http.Cookie;
//useCookie의 코드를 따로 메소드화 해서 공용으로 쓰겠다는 뜻
public class Util {
	public static String getCookie(Cookie[] cookies, String name) {
		String  result="";
		if(cookies !=null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals(name)) {
					result=cookies[i].getValue();
					break;
				}//if
			}//for
		}//if
		 return result;
	}
}
