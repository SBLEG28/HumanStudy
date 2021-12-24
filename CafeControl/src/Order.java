import java.util.ArrayList;
import java.util.Scanner;

/*
[Ctrl + 1] :에러를 제거하기 위한 방안을 제시합니다. 
[F3] : 호출한 클래스나 메소드명 위에서 F3을 누르면 해당 클래스나 메소드로 이동합니다. 
[Ctrl + t] : Iinterface의 메소드에서 단축키를 누르면 Interface를 implements 받은 클래스의 메소드 구현부 명칭을 표출합니다.
[Ctrl + Shift + o(영문)] : 자동으로 import 해줍니다.
 */
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
		System.out.println("---------- �� �� �� �� ----------");
		
		for (int i = CusMobile.size(); i < ChMenu.size(); i++) {
			System.out.println(mobile + " : " + ChMenu.get(i) + " " + 
							   CuQty.get(i) + " " + CuSum.get(i));
			
			sum += CuSum.get(i);
		}
		
		System.out.println("---------- �� �� �� �� : " + sum);
	}
	
	public void Display() {
		int idx = ChMenu.size() - 1;
		
		System.out.println("---------- �� �� �� �� �� �� ----------");
		System.out.println(ChMenu.get(idx) + " " + CuQty.get(idx) + " " + CuSum.get(idx));
	}
	
	public void DisplayA() {
		int sum = 0;
		System.out.println("---------- �� �� �� �� ----------");
		
		for (int i = 0; i < ChMenu.size(); i++) {
			System.out.println((i+1) + ". " +ChMenu.get(i) + " " + CuQty.get(i) + " " + CuSum.get(i));
			
			sum += CuSum.get(i);
		}
		
		System.out.println("---------- �� �� �� �� : " + sum);
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
		
		System.out.println("�۾��� �����Ͻÿ�.(X:����, C:�ֹ��߰�, U:�ֹ�����, D:�ֹ�����)");
		String sch = s.nextLine();
		
		menu.Display();
		
		while (!sch.equals("X")) {

			if (sch.equals("C")) {
				System.out.println("�ֹ��� �޴���ȣ�� �Է��Ͻÿ�. (0:�ֹ�����)");
				sch = s.nextLine();
				
				while (!sch.equals("0")) {
					men_idx = Integer.parseInt(sch);

					System.out.println("�ֹ� ������ �Է��Ͻÿ�.");
					qty = Integer.parseInt(s.nextLine());
					
					Add(menu, --men_idx, qty);

					System.out.println("�ֹ��� �޴���ȣ�� �Է��Ͻÿ�. (0:�ֹ�����)");
					sch = s.nextLine();
				}
				
				System.out.println("����ȣ�� �Է��Ͻÿ�.");
				mobile = s.nextLine().equals("") ? "-" : mobile;
				
				Display(mobile);
				Add(menu, mobile);
			} 
			/*
			else if (sch.equals("U")) {
				System.out.println("�ֹ�����");
				System.out.println("����(����)�� �ֹ���ȣ�� �Է��Ͻÿ�.");
				idx = Integer.parseInt(s.nextLine());
				
				System.out.println("���� �ֹ��� �޴���ȣ�� �Է��Ͻÿ�.");
				idx2 = Integer.parseInt(s.nextLine());
				
				System.out.println("���� �ֹ��� ������ �Է��Ͻÿ�.");
				qty = Integer.parseInt(s.nextLine());

				System.out.println("����ȣ�� �Է��Ͻÿ�.");
				mobile = s.nextLine();
				
				Update(menu, idx--, idx2--, qty, mobile);
			} 
			else if (sch.equals("D")) {
				System.out.println("�ֹ�����");
				System.out.println("������ �ֹ���ȣ�� �Է��Ͻÿ�.");

				idx = Integer.parseInt(s.nextLine());
				Remove(idx--);
			}
			*/
			
			menu.Display();
			mobile = "";
			
			System.out.println("�۾��� �����Ͻÿ�.(X:����, C:�ֹ��߰�, U:�ֹ�����, D:�ֹ�����)");
			sch = s.nextLine();
		}
		
	}
}
