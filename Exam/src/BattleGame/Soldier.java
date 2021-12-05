package BattleGame;

public class Soldier {
	private int AP;
	private int HP;

	public Soldier() {
		
	}

	public Soldier(int AP, int HP) {
		this.AP = AP;
		this.HP = HP;
	}

	public int getAP() {
		return AP;
	}

	public void setAP(int AP) {
		this.AP = AP;
	}

	public int getHP() {
		return HP;
	}

	public void setHP(int AP) {
		this.HP -= AP;
		System.out.println("병사의 남은 체력 : " + this.HP);
	}

	public void attack(Warrior w) {
		int AP = (int) (Math.random() * this.AP);
		System.out.println("병사의 공격력 : " + AP);
		w.setHP(AP);
	}

}