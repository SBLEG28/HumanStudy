
public class Studys {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int limit = 10;
		for(int x = 1; x <= limit; x++) {
			int n=x;
			for(int i = 0; i < n; i++) {
				System.out.print("*"); // 옆으로 "*"를 n회 출력
			}
			System.out.println("");	// 한줄내리기(줄바꿈)
		}
		
		for(int x = 9; x>=1; x--) {
			int n=x;
			for(int i = 0; i<n; i++) {
				System.out.print("*");// 옆으로 "*"를 n회 출력
			}
			System.out.println("");// 한줄내리기(줄바꿈)
		}

		
		/*
		int i = 0;
		int count = 10;
		
		boolean flag = true;
		while(i < count && i >= 0) {
			int j = 0;
			while(j <= i) {
				System.out.print("*");
				j++;
			}
			
			System.out.println();
			System.out.print(i + " " + count + " : " );
			
			if(flag)
				i++;
			else 
				i--;
			
			if(i == count -1) 
				flag = false;
		}
		
		int num = 0;
		while(num <= 100)
		{
			if(num % 2 == 0)
				System.out.println(num);
			num++;
		}
		*/
		
	}

}