package BattleGame;

public class Battle {

	public static void main(String[] args) {
		Soldier commando = new Soldier();
		Warrior conan = new Warrior();

		System.out.println("war started.");
		while (commando.getHealth_point() > 0 && conan.getHealth_point() > 0) {
			commando.attack(conan);
			conan.attack(commando);
		}

	}

}