import java.util.Scanner;

public class CafeControl {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		
		System.out.println("프로그램 시작");
		
		String str = "";
		while(!str.equals("X")) {
			str = input.nextLine();
			
			switch(str){
				case "M":
					System.out.println("메뉴관리");
					break;
				case "O":
					System.out.println("주문관리");
					break;
				case "S":
					System.out.println("실적관리");
					break;
			}
		}
		
		System.out.println("프로그램 종료");
		
	}
}
