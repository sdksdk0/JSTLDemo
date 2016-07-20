package cn.tf.tags;

import java.io.IOException;

import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class RemoteIPTags  extends SimpleTagSupport{

	/*public RemoteIPTags(){
		System.out.println("实例化了");
	}
	*/
	
	public void doTag() throws IOException{
		PageContext pc = (PageContext)getJspContext();
		String remoteIp = pc.getRequest().getRemoteAddr();
	    pc.getOut().write(remoteIp);
		
	}
	
	
}
