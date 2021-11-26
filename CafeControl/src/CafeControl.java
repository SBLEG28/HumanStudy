import java.util.*;

public class CafeControl {
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ArrayList<String> alMenu = new ArrayList<String>();
		ArrayList<Integer> alPrice = new ArrayList<Integer>();

		alMenu.add("Americano");
		alPrice.add(2000);
		
		alMenu.add("Latte");
		alPrice.add(3000);
		
		alMenu.add("Mocca");
		alPrice.add(3500);
		
		alMenu.add("Expresso");
		alPrice.add(2500);
		
		alMenu.add("Cappuccino");
		alPrice.add(4000);

		for (int i = 0; i < alMenu.size(); i++) {
			System.out.println(alMenu.get(i));
		} 

		/*
		 * Scanner input = new Scanner(System.in);
		 * 
		 * System.out.println("프로그램 시작");
		 * 
		 * String str = "";
		 * System.out.println("작업 선택 [X:종료, M:메뉴추가, O:메뉴목록표시, S:메뉴수정]"); str =
		 * input.nextLine();
		 * 
		 * while(!str.equals("X")) { if(str.equals("M")) {
		 * System.out.println("메뉴관리 [X:종료, C:메뉴추가, R:메뉴목록표시, U:메뉴수정, D:메뉴삭제]");
		 * while(!str.equals("X")) { str = input.nextLine();
		 * 
		 * if(str.equals("C")) System.out.println("주문관리"); else if(str.equals("R"))
		 * System.out.println("메뉴목록"); else if(str.equals("U"))
		 * System.out.println("메뉴수정"); else if(str.equals("D"))
		 * System.out.println("메뉴삭제"); } } else if(str.equals("C"))
		 * System.out.println("주문관리"); else if(str.equals("S"))
		 * System.out.println("실적관리");
		 * 
		 * System.out.println("작업 선택 [X:종료, M:메뉴추가, O:메뉴목록표시, S:메뉴수정"); str =
		 * input.nextLine(); }
		 * 
		 * System.out.println("프로그램 종료");
		 */
	}
}
