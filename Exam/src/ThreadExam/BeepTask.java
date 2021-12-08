package ThreadExam;

public class BeepTask extends Thread{
	BeepTask(){
		
	}
	
	public void run(){
		for(int i = 0; i < 5; i++) {
			System.out.println("띵");
			
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace(); 
			}
		}
	}
}
