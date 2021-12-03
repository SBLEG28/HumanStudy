import java.util.ArrayList;
import java.util.Scanner;

public class Order {
	private ArrayList<String> CusMobile;
	private ArrayList<String> ChMenu;
	private ArrayList<Integer> CuQty;
	private ArrayList<Integer> CuSum;
	
	public ArrayList<String> getCusMobile() {
		return CusMobile;
	}

	public void setCusMobile(ArrayList<String> cusMobile) {
		CusMobile = cusMobile;
	}

	public ArrayList<String> getChMenu() {
		return ChMenu;
	}

	public void setChMenu(ArrayList<String> chMenu) {
		ChMenu = chMenu;
	}

	public ArrayList<Integer> getCuQty() {
		return CuQty;
	}

	public void setCuQty(ArrayList<Integer> cuQty) {
		CuQty = cuQty;
	}

	public ArrayList<Integer> getCuSum() {
		return CuSum;
	}

	public void setCuSum(ArrayList<Integer> cuSum) {
		CuSum = cuSum;
	}

	public Order() {
		CusMobile = new ArrayList<String>();
		ChMenu = new ArrayList<String>();
		CuQty = new ArrayList<Integer>();
		CuSum = new ArrayList<Integer>();
	}
	
	public void Add(Menu menu, int meu_idx, int qty) {
		ChMenu.add(menu.getAlMenu().get(meu_idx));
		CuQty.add(qty);
		CuSum.add(menu.getAlPrice().get(meu_idx) * qty);
	}
	
	public void Add(Menu menu, String mobile) {
		int idx = CuQty.size() - CusMobile.size();
		
		for (int i = 0; i < idx; i++) {
			CusMobile.add(mobile);
		}
	}

	public void Display(String mobile) {
		int sum = 0;
		System.out.println("---------- 주 문 목 록 ----------");
		
		for (int i = CusMobile.size(); i < ChMenu.size(); i++) {
			System.out.println(mobile + " : " + ChMenu.get(i) + " " + 
							   CuQty.get(i) + " " + CuSum.get(i));
			
			sum += CuSum.get(i);
		}
		
		System.out.println("---------- 총 주 문 액 : " + sum);
	}
	
	public void Display() {
		int idx = ChMenu.size() - 1;
		
		System.out.println("---------- 현 재 메 뉴 총 액 ----------");
		System.out.println(ChMenu.get(idx) + " " + CuQty.get(idx) + " " + CuSum.get(idx));
	}
	
	public void DisplayA() {
		int sum = 0;
		System.out.println("---------- 주 문 목 록 ----------");
		
		for (int i = 0; i < ChMenu.size(); i++) {
			System.out.println((i+1) + ". " +ChMenu.get(i) + " " + CuQty.get(i) + " " + CuSum.get(i));
			
			sum += CuSum.get(i);
		}
		
		System.out.println("---------- 총 주 문 액 : " + sum);
	}
	
	/*
	public void Update(Menu menu, int meu_idx, int ord_idx, int qty, String mobile) {
		ChMenu.set(ord_idx, menu.alMenu.get(meu_idx));
		CuQty.set(ord_idx, qty);
		CusMobile.set(ord_idx, mobile);
		CuSum.set(ord_idx, menu.alPrice.get(meu_idx) * qty);
	}
	
	public void Remove(int idx) {
		CusMobile.remove(idx);
		ChMenu.remove(idx);
		CuQty.remove(idx);
		CuSum.remove(idx);
	}
	*/
	
	public void Handle() {
		Scanner s = new Scanner(System.in);
		Menu menu = new Menu();
		
		String mobile = "";
		int men_idx, qty;
		
		System.out.println("작업을 선택하시오.(X:종료, C:주문추가, U:주문수정, D:주문삭제)");
		String sch = s.nextLine();
		
		menu.Display();
		
		while (!sch.equals("X")) {

			if (sch.equals("C")) {
				System.out.println("주문할 메뉴번호를 입력하시오. (0:주문종료)");
				sch = s.nextLine();
				
				while (!sch.equals("0")) {
					men_idx = Integer.parseInt(sch);

					System.out.println("주문 수량을 입력하시오.");
					qty = Integer.parseInt(s.nextLine());
					
					Add(menu, --men_idx, qty);

					System.out.println("주문할 메뉴번호를 입력하시오. (0:주문종료)");
					sch = s.nextLine();
				}
				
				System.out.println("고객번호를 입력하시오.");
				mobile = s.nextLine().equals("") ? "-" : mobile;
				
				Display(mobile);
				Add(menu, mobile);
			} 
			/*
			else if (sch.equals("U")) {
				System.out.println("주문수정");
				System.out.println("수정(변경)할 주문번호를 입력하시오.");
				idx = Integer.parseInt(s.nextLine());
				
				System.out.println("새로 주문할 메뉴번호를 입력하시오.");
				idx2 = Integer.parseInt(s.nextLine());
				
				System.out.println("새로 주문할 수량을 입력하시오.");
				qty = Integer.parseInt(s.nextLine());

				System.out.println("고객번호를 입력하시오.");
				mobile = s.nextLine();
				
				Update(menu, idx--, idx2--, qty, mobile);
			} 
			else if (sch.equals("D")) {
				System.out.println("주문삭제");
				System.out.println("삭제할 주문번호를 입력하시오.");

				idx = Integer.parseInt(s.nextLine());
				Remove(idx--);
			}
			*/
			
			menu.Display();
			mobile = "";
			
			System.out.println("작업을 선택하시오.(X:종료, C:주문추가, U:주문수정, D:주문삭제)");
			sch = s.nextLine();
		}
		
	}
}
