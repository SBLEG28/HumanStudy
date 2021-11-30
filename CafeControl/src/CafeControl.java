import java.util.*;

public class CafeControl {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Menu menu = new Menu();

		Scanner s = new Scanner(System.in);
		System.out.println("프로그램 시작");
		System.out.println("작업을 선택하시오.(X:종료,M:메뉴관리,O:주문관리,S:실적관리)");
		String str = s.nextLine();
		
		while (!str.equals("X")) {
			if (str.equals("M")) {
				menu.Display(); 
				String sch = s.nextLine();
				
				while (!sch.equals("X")) {
					if (sch.equals("C")) {
						System.out.println("메뉴추가");
					} else if (sch.equals("U")) {
						System.out.println("메뉴수정");
					} else if (sch.equals("D")) {
						System.out.println("메뉴삭제");
					}
					
					menu.Display();
					sch = s.nextLine();
				}
			} 
			else if (str.equals("O")) {
				System.out.println("주문관리");
			} 
			else if (str.equals("S")) {
				System.out.println("실적관리");
			}
			
			System.out.println("작업을 선택하시오.(X:종료,M:메뉴관리,O:주문관리,S:실적관리)");
			str = s.nextLine();
		}
		
		System.out.println("프로그램 종료");
	}
}
