import java.io.*;
import java.util.*;

public class Menu {
	private ArrayList<String> alMenu;
	private ArrayList<Integer> alPrice;
	
	public ArrayList<String> getAlMenu() {
		return alMenu;
	}

	public void setAlMenu(ArrayList<String> alMenu) {
		this.alMenu = alMenu;
	}

	public ArrayList<Integer> getAlPrice() {
		return alPrice;
	}

	public void setAlPrice(ArrayList<Integer> alPrice) {
		this.alPrice = alPrice;
	}
	
	public Menu(){
		alMenu = new ArrayList<String>();
		alPrice = new ArrayList<Integer>();
	
		File f = new File("C:\\Temp\\menu.txt");
		try {
			FileReader fr = new FileReader(f);
			BufferedReader br = new BufferedReader(fr);
			
			try {
				String line=br.readLine();
				while(line!=null) {
					System.out.println(line);
				}
			} 
			catch (IOException e) {
				e.printStackTrace();
			}
		} 
		catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void Display() {
		System.out.println("---------- �� �� �� �� ----------");
		
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
	
	private void SaveMenu() {
		File f = new File("C:\\Temp\\menu.txt");
		
		try {
			FileWriter fw = new FileWriter(f);
			PrintWriter pw = new PrintWriter(fw);
		
			for (int i = 0; i < alMenu.size(); i++) {
				pw.print(alMenu.get(i) + "," + alPrice.get(i) + "\n");
			}
			
			pw.close();
		} 
		catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void Handle() {
		Scanner s = new Scanner(System.in);
		int idx;		

		System.out.println("�۾��� �����Ͻÿ�.(X:����, C:�޴��߰�, U:�޴�����, D:�޴�����)");
		String sch = s.nextLine();
		
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
			
			System.out.println("�۾��� �����Ͻÿ�.(X:����, C:�޴��߰�, U:�޴�����, D:�޴�����)");
			sch = s.nextLine();
		}
	}
}
