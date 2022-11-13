package com.ojo.vo;

public class PostimageVO {

	private  int postnum;
	private String filename;
	private String filerealname;
	private int idx;
	
	
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
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	@Override
	public String toString() {
		return "PostimageVO [postnum=" + postnum + ", filename=" + filename + ", filerealname=" + filerealname
				+ ", idx=" + idx + "]";
	}
	
	
	
	
	
	

}
