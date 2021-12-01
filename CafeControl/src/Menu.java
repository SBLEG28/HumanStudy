import java.util.ArrayList;
import java.util.Scanner;

public class Menu {
	ArrayList<String> alMenu;
	ArrayList<Integer> alPrice;

	public Menu(){
		alMenu = new ArrayList<String>();
		alPrice = new ArrayList<Integer>();
	
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
	}
	
	public void Display() {
		for (int i = 0; i < alMenu.size(); i++) {
			System.out.println((i+1) + ". " + alMenu.get(i) + " " + alPrice.get(i));
		} 
	}
	
	public void Add(String menu) {
		alMenu.add(menu);
	}
	
	public void Add(int price) {
		alPrice.add(price);
	}
	
	public void Update(int idx, String menu) {
		alMenu.set(idx-1, menu);
	}
	
	public void Update(int idx, int price) {
		alPrice.set(idx-1, price);
	}
	
	public void Remove(int idx) {
		alMenu.remove(idx-1);
		alPrice.remove(idx-1);
	}
	
	public void Handle() {
		Scanner s = new Scanner(System.in);
		String sch = s.nextLine();
		int idx;
		
		while (!sch.equals("X")) {
			if (sch.equals("C")) {
				System.out.println("�޴��߰�");
				System.out.println("�޴����� �Է��ϼ���(�޴���)");
				Add(s.nextLine());
				
				System.out.println("������ �Է��ϼ���(����)");
				Add(Integer.parseInt(s.nextLine()));
			} 
			else if (sch.equals("U")) {
				System.out.println("�޴�����");
				System.out.println("����(����)�� �޴���ȣ�� �Է��Ͻÿ�.");
				idx = Integer.parseInt(s.nextLine());
				
				System.out.println("���޴����� �Է��ϼ���(�޴���)");
				Update(idx, s.nextLine());
				
				System.out.println("�������� �Է��ϼ���(����)");
				Update(idx, Integer.parseInt(s.nextLine()));
			} 
			else if (sch.equals("D")) {
				System.out.println("�޴�����");
				System.out.println("������ �޴���ȣ�� �Է��Ͻÿ�.");

				Remove(Integer.parseInt(s.nextLine()));
			}
			
			Display();
			sch = s.nextLine();
		}
	}
}
