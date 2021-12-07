package BattleGame;

public class Battle {

	public static void main(String[] args) {
		Soldier commando = new Soldier(30, 120);
		Warrior conan = new Warrior(40, 150);

		System.out.println("war started.");

		int random;
		while (commando.getHP() > 0 && conan.getHP() > 0) {
			try {
				random = (int) (Math.random() * 2);
				System.out.println(random);
				
				if (random == 0) {
					commando.attack(conan);
					Thread.sleep(500);
				} else {
					conan.attack(commando);
					Thread.sleep(500);
				}
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (commando.getHP() > conan.getHP())
			System.out.println("�ڸ����� �̰���ϴ�.");
		else if (commando.getHP() < conan.getHP())
			System.out.println("�ڳ��� �̰���ϴ�.");
		else
			System.out.println("�� �� �׾����ϴ�.");

	}

}