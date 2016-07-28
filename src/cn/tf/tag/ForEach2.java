package cn.tf.tag;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ForEach2 extends SimpleTagSupport{

	
	private Object items;  //可能是list,set,map或数组
	private String var;//妙
	
	private Collection  list=new ArrayList();  //items中的元素放到list中
	
	
	public void setItems(Object items) {
		if(items instanceof List){
			items=(List) items;
		}else if(items instanceof Set){
			list=(Set)items;
		}else if(items instanceof Map){
			list=((Map) items).entrySet();  //Map.Entry()
		/*}else if(items instanceof Object[]){
			list=Arrays.asList((Object[])items);
		}else if(items instanceof int[]){
			int ii[]=(int[])items;
			for(int i=0;i<ii.length;i++){
				list.add(ii[i]);
			}
			*/
			
		}else if(items.getClass().isArray()){	
			//去取出数组元素放到List中
			int length=Array.getLength(items);
			for(int i=0;i<length;i++){
				list.add(Array.get(items, i));
			}
		}else{
			throw new RuntimeException("不支持的类型");
		}
	}
	public void setVar(String var) {
		this.var = var;
	}
	public void doTag() throws JspException, IOException {
		PageContext pc = (PageContext)getJspContext();
			for(Object o:list){
				pc.setAttribute(var, o);//把当前遍历的元素用var指定的变量名，存到页面范围
				getJspBody().invoke(null);//让主体内容执行：${currentElement}<br/>
			}
		pc.removeAttribute(var);
	}
}
