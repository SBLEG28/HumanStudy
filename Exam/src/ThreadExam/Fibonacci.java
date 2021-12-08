package ThreadExam;

public class Fibonacci extends Thread{
	Fibonacci(){
		
	}
	
	public void run() {
		for (int i = 1; i <= 5; i++) {
			System.out.println(fibo(i));
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static int fibo(int n) {
		if (n <= 1)
			return n;
		else
			return fibo(n - 2) + fibo(n - 1);
	}
}
