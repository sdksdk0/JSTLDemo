package cn.tf.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class Demo2 extends SimpleTagSupport{

	//控制jsp页面某一部分内容是否执行
/*	public void doTag() throws JspException, IOException {	
	}
	*/
	public void doTag() throws JspException, IOException {	
		
		/*PageContext  pc=(PageContext) getJspContext();
		JspWriter out=pc.getOut();
		JspFragment  jf=getJspBody();
		jf.invoke(out);*/
		
		getJspBody().invoke(null);
		
	}
	
	
}
