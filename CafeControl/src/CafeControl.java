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
		 * System.out.println("���α׷� ����");
		 * 
		 * String str = "";
		 * System.out.println("�۾� ���� [X:����, M:�޴��߰�, O:�޴����ǥ��, S:�޴�����]"); str =
		 * input.nextLine();
		 * 
		 * while(!str.equals("X")) { if(str.equals("M")) {
		 * System.out.println("�޴����� [X:����, C:�޴��߰�, R:�޴����ǥ��, U:�޴�����, D:�޴�����]");
		 * while(!str.equals("X")) { str = input.nextLine();
		 * 
		 * if(str.equals("C")) System.out.println("�ֹ�����"); else if(str.equals("R"))
		 * System.out.println("�޴����"); else if(str.equals("U"))
		 * System.out.println("�޴�����"); else if(str.equals("D"))
		 * System.out.println("�޴�����"); } } else if(str.equals("C"))
		 * System.out.println("�ֹ�����"); else if(str.equals("S"))
		 * System.out.println("��������");
		 * 
		 * System.out.println("�۾� ���� [X:����, M:�޴��߰�, O:�޴����ǥ��, S:�޴�����"); str =
		 * input.nextLine(); }
		 * 
		 * System.out.println("���α׷� ����");
		 */
	}
}
