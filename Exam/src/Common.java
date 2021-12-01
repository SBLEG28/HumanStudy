
public class Common {
	int num1, num2;
	
	public Common(int num1, int num2){
		this.num1 = num1;
		this.num2 = num2;
	}
	
	private int find2Number(boolean ch) {
		int n1 = num1;
		int n2 = num2;
		
		int answer = 1;
		for(int i = 2; i < (num1 > num2 ? num2 : num1); i++) {
			if(n1 % i == 0 && n2 % i == 0) {
				n1 /= i;
				n2 /= i;
				
				answer *= i;	
				i--;
			}
		}
		
		if(!ch) {
			answer *= n1;
			answer *= n2;
		}
		
		return answer;
	}
	
	public void showGCF() {	
		System.out.println(num1 + ", " + num2 + " 최대공약수 = " + find2Number(true));
	}
	
	public void showLCM() {
		System.out.println(num1 + ", " + num2 + " 최소공배수 = " + find2Number(false));
	}

}

/*
public class Common {
	   int X,Y,A,a1;
	   Common2(){
	      
	   }
	   Common2(int x,int y){
	      this.X=x;
	      this.Y=y;
	      this.a1=1;
	      this.A=2;
	   }

	   void find2Number() {
	      // 최대공약수/최소공배수 계산
	      for(int i; A<(i=(X<Y)?X:Y); A++) {
	         if(X%A==0 && Y%A==0) {
	            a1*=A;
	            X=X/A; Y=Y/A;
	         }
	      }
	   }
	   void showGCF() { // 최대공약수
	      System.out.println("최대공약수:"+a1);
	   }
	   void showLCM() { //최소공배수
	      System.out.println("최소공배수:"+a1*X*Y);
	   }
	   
	}
*/