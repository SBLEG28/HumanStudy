import java.util.*;

public class CafeControl {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Menu menu = new Menu();

		Scanner s = new Scanner(System.in);
		System.out.println("���α׷� ����");
		System.out.println("�۾��� �����Ͻÿ�.(X:����,M:�޴�����,O:�ֹ�����,S:��������)");
		String str = s.nextLine();
		
		while (!str.equals("X")) {
			if (str.equals("M")) {
				menu.Display(); 
				String sch = s.nextLine();
				
				while (!sch.equals("X")) {
					if (sch.equals("C")) {
						System.out.println("�޴��߰�");
					} else if (sch.equals("U")) {
						System.out.println("�޴�����");
					} else if (sch.equals("D")) {
						System.out.println("�޴�����");
					}
					
					menu.Display();
					sch = s.nextLine();
				}
			} 
			else if (str.equals("O")) {
				System.out.println("�ֹ�����");
			} 
			else if (str.equals("S")) {
				System.out.println("��������");
			}
			
			System.out.println("�۾��� �����Ͻÿ�.(X:����,M:�޴�����,O:�ֹ�����,S:��������)");
			str = s.nextLine();
		}
		
		System.out.println("���α׷� ����");
	}
}
