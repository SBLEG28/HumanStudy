import java.util.*;

public class CafeControl {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Menu menu = new Menu();
		Order order = new Order();
		
		Scanner s = new Scanner(System.in);
		
		System.out.println("���α׷� ����");
		System.out.println("�۾��� �����Ͻÿ�.(X:����, M:�޴�����, O:�ֹ�����, S:��������)");
		String str = s.nextLine();

		while (!str.equals("X")) {
			menu.Display(); 
			
			if (str.equals("M")) {
				menu.Handle();
			} 
			else if (str.equals("O")) {
				order.Handle();
			} 
			else if (str.equals("S")) {
				order.DisplayA();
			}
			
			System.out.println("�۾��� �����Ͻÿ�.(X:����,M:�޴�����,O:�ֹ�����,S:��������)");
			str = s.nextLine();
		}
		
		System.out.println("���α׷� ����");
	}
}
