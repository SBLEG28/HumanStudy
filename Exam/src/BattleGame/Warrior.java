package BattleGame;

public class Warrior {
	private int attack_power; // 최대 공격력
	private int health_point; // 최대

	public Warrior() {
		
	}

	public Warrior(int attack_power, int health_point) {
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

	public void attack(Soldier s) {
		int attackPoint = (int) (Math.random() * this.attack_power);
		s.setHealthPoint(attackPoint);
	}

}