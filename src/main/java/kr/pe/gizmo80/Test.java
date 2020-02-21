package kr.pe.gizmo80;

public class Test {
    public static void main(String args[]) {
        String city = "서울";
        String country = "";
        switch(city) {
        case "서울" :
        case "부산" : country = "한국";
        case "북경" : country = "중국"; 
        case "동경" : country = "일본"; 
           break;
        default : country = "대상없음";
        }
           System.out.println(country);    
    }
}
