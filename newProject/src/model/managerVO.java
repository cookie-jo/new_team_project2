package model;  

public class managerVO {

	private String manager_name;
	private String manager_id;
	private String manager_pw;
	private int manager_tel;
	private String manager_addr;
	private int manager_post;
	
	public managerVO(String manager_name, String manager_id, String manager_pw, int manager_tel, String manager_addr, int manager_post) {
		super();
		this.manager_name = manager_name;
		this.manager_id = manager_id;
		this.manager_pw = manager_pw;
		this.manager_tel = manager_tel;
		this.manager_addr = manager_addr;
		this.manager_post = manager_post;
	}
	
	public managerVO(String manager_id, String manager_pw) {
		super();
		this.manager_id = manager_id;
		this.manager_pw = manager_pw;
	}


	public String getManager_name() {
		return manager_name;
	}


	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}


	public String getManager_id() {
		return manager_id;
	}


	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}


	public String getManager_pw() {
		return manager_pw;
	}


	public void setManager_pw(String manager_pw) {
		this.manager_pw = manager_pw;
	}


	public int getManager_tel() {
		return manager_tel;
	}


	public void setManager_tel(int manager_tel) {
		this.manager_tel = manager_tel;
	}
	
	public String getManager_addr() {
		return manager_addr;
	}

	public void setManager_addr(String manager_addr) {
		this.manager_addr = manager_addr;
	}

	public int getManager_post() {
		return manager_post;
	}

	public void setManager_post(int manager_post) {
		this.manager_post = manager_post;
	}
}
