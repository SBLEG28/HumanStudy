package com.human.edu;

public class Contries {
	private int  COUNTRY_ID;
	private String COUNTRY_ISO_CODE;
	private String COUNTRY_NAME;
	private String COUNTRY_SUBREGION;
	private int COUNTRY_SUBREGION_ID;
	private String COUNTRY_REGION;
	private int COUNTRY_REGION_ID;
	private String COUNTRY_TOTAL;
	private int COUNTRY_TOTAL_ID;
	private String COUNTRY_NAME_HIST;
	private String CREATE_DATE;
	private String UPDATE_DATE;
	public Contries(int cOUNTRY_ID, String cOUNTRY_ISO_CODE, String cOUNTRY_NAME, String cOUNTRY_SUBREGION,
			int cOUNTRY_SUBREGION_ID, String cOUNTRY_REGION, int cOUNTRY_REGION_ID, String cOUNTRY_TOTAL,
			int cOUNTRY_TOTAL_ID, String cOUNTRY_NAME_HIST, String cCREATE_DATE, String cUPDATE_DATE) {
		super();
		COUNTRY_ID = cOUNTRY_ID;
		COUNTRY_ISO_CODE = cOUNTRY_ISO_CODE;
		COUNTRY_NAME = cOUNTRY_NAME;
		COUNTRY_SUBREGION = cOUNTRY_SUBREGION;
		COUNTRY_SUBREGION_ID = cOUNTRY_SUBREGION_ID;
		COUNTRY_REGION = cOUNTRY_REGION;
		COUNTRY_REGION_ID = cOUNTRY_REGION_ID;
		COUNTRY_TOTAL = cOUNTRY_TOTAL;
		COUNTRY_TOTAL_ID = cOUNTRY_TOTAL_ID;
		COUNTRY_NAME_HIST = cOUNTRY_NAME_HIST;
		CREATE_DATE = cCREATE_DATE;
		UPDATE_DATE = cUPDATE_DATE;
	}
	public Contries() {
		super();
	}
	public int getCOUNTRY_ID() {
		return COUNTRY_ID;
	}
	public void setCOUNTRY_ID(int cOUNTRY_ID) {
		COUNTRY_ID = cOUNTRY_ID;
	}
	public String getCOUNTRY_ISO_CODE() {
		return COUNTRY_ISO_CODE;
	}
	public void setCOUNTRY_ISO_CODE(String cOUNTRY_ISO_CODE) {
		COUNTRY_ISO_CODE = cOUNTRY_ISO_CODE;
	}
	public String getCOUNTRY_NAME() {
		return COUNTRY_NAME;
	}
	public void setCOUNTRY_NAME(String cOUNTRY_NAME) {
		COUNTRY_NAME = cOUNTRY_NAME;
	}
	public String getCOUNTRY_SUBREGION() {
		return COUNTRY_SUBREGION;
	}
	public void setCOUNTRY_SUBREGION(String cOUNTRY_SUBREGION) {
		COUNTRY_SUBREGION = cOUNTRY_SUBREGION;
	}
	public int getCOUNTRY_SUBREGION_ID() {
		return COUNTRY_SUBREGION_ID;
	}
	public void setCOUNTRY_SUBREGION_ID(int cOUNTRY_SUBREGION_ID) {
		COUNTRY_SUBREGION_ID = cOUNTRY_SUBREGION_ID;
	}
	public String getCOUNTRY_REGION() {
		return COUNTRY_REGION;
	}
	public void setCOUNTRY_REGION(String cOUNTRY_REGION) {
		COUNTRY_REGION = cOUNTRY_REGION;
	}
	public int getCOUNTRY_REGION_ID() {
		return COUNTRY_REGION_ID;
	}
	public void setCOUNTRY_REGION_ID(int cOUNTRY_REGION_ID) {
		COUNTRY_REGION_ID = cOUNTRY_REGION_ID;
	}
	public String getCOUNTRY_TOTAL() {
		return COUNTRY_TOTAL;
	}
	public void setCOUNTRY_TOTAL(String cOUNTRY_TOTAL) {
		COUNTRY_TOTAL = cOUNTRY_TOTAL;
	}
	public int getCOUNTRY_TOTAL_ID() {
		return COUNTRY_TOTAL_ID;
	}
	public void setCOUNTRY_TOTAL_ID(int cOUNTRY_TOTAL_ID) {
		COUNTRY_TOTAL_ID = cOUNTRY_TOTAL_ID;
	}
	public String getCOUNTRY_NAME_HIST() {
		return COUNTRY_NAME_HIST;
	}
	public void setCOUNTRY_NAME_HIST(String cOUNTRY_NAME_HIST) {
		COUNTRY_NAME_HIST = cOUNTRY_NAME_HIST;
	}
	public String getCREATE_DATE() {
		return CREATE_DATE;
	}
	public void setCREATE_DATE(String cCREATE_DATE) {
		CREATE_DATE = cCREATE_DATE;
	}
	public String getUPDATE_DATE() {
		return UPDATE_DATE;
	}
	public void setUPDATE_DATE(String cUPDATE_DATE) {
		UPDATE_DATE = cUPDATE_DATE;
	}
}
