package cn.tf.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class Demo4 extends SimpleTagSupport{


	private int count;
	public void setCount(int count) {
		this.count = count;
	}
	public void doTag() throws JspException, IOException {	
		
		for(int i=0;i<count;i++)
			getJspBody().invoke(null);
	}
	
	
	
}
