import java.util.Scanner;

public class CafeControl {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		
		System.out.println("���α׷� ����");
		
		String str = "";
		while(!str.equals("X")) {
			str = input.nextLine();
			
			switch(str){
				case "M":
					System.out.println("�޴�����");
					break;
				case "O":
					System.out.println("�ֹ�����");
					break;
				case "S":
					System.out.println("��������");
					break;
			}
		}
		
		System.out.println("���α׷� ����");
		
	}
}
