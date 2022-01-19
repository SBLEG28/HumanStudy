package com.human.ncs7;

public class Post {
	private int id;
	private String name;
	private String title;
	private String content;
	private String created;
	private int hit;
	private int kind;
	private int step;
	private int indent;

	public Post(int id, String name, String title, String content, String created, int hit, int kind, int step,
			int indent) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.content = content;
		this.created = created;
		this.hit = hit;
		this.kind = kind;
		this.step = step;
		this.indent = indent;
	}

	public Post() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreated() {
		return created;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getKind() {
		return kind;
	}

	public void setKind(int kind) {
		this.kind = kind;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getIndent() {
		return indent;
	}

	public void setIndent(int indent) {
		this.indent = indent;
	}
}
