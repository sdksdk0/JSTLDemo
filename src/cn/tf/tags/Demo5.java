package cn.tf.tags;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class Demo5 extends SimpleTagSupport{


	public void doTag() throws JspException, IOException {	
		 //得到主体内容，然后改为大写输出
		//带有缓冲区的内存字符串输出流
		StringWriter sw=new StringWriter(); 
		
		JspFragment jf=getJspBody();
		jf.invoke(sw);
		
		String context=sw.getBuffer().toString();
		PageContext pc=(PageContext) getJspContext();
		pc.getOut().write(context.toUpperCase());
		
	
	}
	
	
	
}
