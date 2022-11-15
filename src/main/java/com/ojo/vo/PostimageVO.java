package com.ojo.vo;

public class PostimageVO {

	private  int postnum;
	private String filename;
	private String filerealname;
	private int imageNum;
	
	
	public int getPostnum() {
		return postnum;
	}
	public void setPostnum(int postnum) {
		this.postnum = postnum;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilerealname() {
		return filerealname;
	}
	public void setFilerealname(String filerealname) {
		this.filerealname = filerealname;
	}
	public int getIdx() {
		return imageNum;
	}
	public void setIdx(int idx) {
		this.imageNum = idx;
	}
	
	@Override
	public String toString() {
		return "PostimageVO [postnum=" + postnum + ", filename=" + filename + ", filerealname=" + filerealname
				+ ", imageNum=" + imageNum + "]";
	}
	
	
	
	
	
	

}
