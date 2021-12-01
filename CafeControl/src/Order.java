import java.util.ArrayList;
import java.util.Scanner;

public class Order {
	ArrayList<String> CusMobile;
	ArrayList<String> ChMenu;
	ArrayList<Integer> CuQty;
	ArrayList<Integer> CuSum;
	
	public Order() {
		CusMobile = new ArrayList<String>();
		ChMenu = new ArrayList<String>();
		CuQty = new ArrayList<Integer>();
		CuSum = new ArrayList<Integer>();
	}
	
	public void Add(String mobile, String menu, int qty) {
		CusMobile.add(mobile);
		ChMenu.add(menu);
		CuQty.add(qty);
	
		Sum(menu, qty);
	}
	
	public void Update(int idx, String menu, int qty, String mobile) {
		int idx2 = idx -1;
		
		ChMenu.set(idx2, menu);
		CuQty.set(idx2, qty);
		CusMobile.set(idx2, mobile);
		
		Sum(idx2, menu, qty);
	}
	
	public void Remove(int idx) {
		int idx2 = idx -1;
		
		CusMobile.remove(idx2);
		ChMenu.remove(idx2);
		CuQty.remove(idx2);
		CuSum.remove(idx2);
	}
	
	public void Sum(String name, int qty){
		Menu menu = new Menu();

		for (int i = 0; i < menu.alMenu.size(); i++) {
			if(name.equals(menu.alMenu.get(i)))
				CuSum.add(menu.alPrice.get(i) * qty);
		}
	}
	
	public void Sum(int idx, String name, int qty){
		Menu menu = new Menu();
		
		for (int i = 0; i < menu.alMenu.size(); i++) {
			if(menu.alMenu.get(i).equals(name))
				CuSum.set(idx, menu.alPrice.get(i) * qty);
		}
	}
	
	public void Display() {
		for (int i = 0; i < ChMenu.size(); i++) {
			System.out.println(i + ". " + CusMobile.get(i) + " : " + ChMenu.get(i) + " " + 
							   CuQty.get(i) + " " + CuSum.get(i));
		}
	}
	
	public void Handle() {
		Scanner s = new Scanner(System.in);
		Menu menu = new Menu();
		
		String mobile = "", name;
		int qty, idx;
		
		System.out.println("작업을 선택하시오.(X:종료, C:주문추가, U:주문수정, D:주문삭제)");
		String sch = s.nextLine();
		
		menu.Display();
		
		while (!sch.equals("X")) {
			if (sch.equals("C")) {
				System.out.println("주문추가");
				
				System.out.println("주문명을 입력하세요(주문명)");
				name = s.nextLine();
				
				System.out.println("주문 수량을 입력하세요(주문수량)");
				qty = Integer.parseInt(s.nextLine());
				
				System.out.println("고객번호를 입력하시오.");
				mobile = s.nextLine();				
				
				Add(mobile.equals("") ? "-" : mobile, name, qty);
			} 
			else if (sch.equals("U")) {
				System.out.println("주문수정");
				System.out.println("수정(변경)할 주문번호를 입력하시오.");
				idx = Integer.parseInt(s.nextLine());
				
				System.out.println("새주문명을 입력하세요(주문명)");
				name = s.nextLine();
				
				System.out.println("새가격을 입력하세요(가격)");
				qty = Integer.parseInt(s.nextLine());

				System.out.println("고객번호를 입력하시오.");
				mobile = s.nextLine();
				
				Update(idx, name, qty, mobile);
			} 
			else if (sch.equals("D")) {
				System.out.println("주문삭제");
				System.out.println("삭제할 주문번호를 입력하시오.");

				Remove(Integer.parseInt(s.nextLine()));
			}
			
			Display();
			sch = s.nextLine();
		}
		
	}
}
