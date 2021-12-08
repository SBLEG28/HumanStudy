package ThreadExam;

public class DoMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Thread thread1 = new BeepTask();
		thread1.start();
		
		Thread thread2 = new Fibonacci();
		thread2.start();
		
		for(int i = 0; i < 5; i++) {
			System.out.println("Main");
			
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

}
