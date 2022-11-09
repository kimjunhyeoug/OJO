package com.ojo.vo;

public class PostimageVO {

	private int postnum;
	private String image;
	public int getPostnum() {
		return postnum;
	}
	
	
	public void setPostnum(int postnum) {
		this.postnum = postnum;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}


	@Override
	public String toString() {
		return "PostimageVO [postnum=" + postnum + ", image=" + image + "]";
	}
	
	

}
