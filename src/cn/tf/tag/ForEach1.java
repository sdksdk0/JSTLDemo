package cn.tf.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ForEach1 extends SimpleTagSupport{

	
	private List items;
	private String var;//妙
	public void setItems(List items) {
		this.items = items;
	}
	public void setVar(String var) {
		this.var = var;
	}
	public void doTag() throws JspException, IOException {
		PageContext pc = (PageContext)getJspContext();
		if(items!=null){
			for(Object o:items){
				pc.setAttribute(var, o);//把当前遍历的元素用var指定的变量名，存到页面范围
				getJspBody().invoke(null);//让主体内容执行：${currentElement}<br/>
			}
		}
		pc.removeAttribute(var);
	}
	
	
}
