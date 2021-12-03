package BattleGame;

public class Soldier {
	private int attack_power;
	private int health_point;

	public Soldier() {
	}

	public Soldier(int attack_power, int health_point) {
		this.attack_power = attack_power;
		this.health_point = health_point;
	}

	public int getAttack_power() {
		return attack_power;
	}

	public void setAttack_power(int attack_power) {
		this.attack_power = attack_power;
	}

	public int getHealth_point() {
		return health_point;
	}

	public void setHealth_point(int health_point) {
		this.health_point = health_point;
	}

	public void setHealthPoint(int attackPoint) {
		this.health_point -= attackPoint;
	}

	public void attack(Warrior w) {
		int attackPoint = (int) (Math.random() * this.attack_power);
		w.setHealthPoint(attackPoint);
	}

}