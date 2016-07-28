package cn.tf.tag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HtmlFilter extends SimpleTagSupport {

	private boolean escapeHtml=true;


	public void setEscapeHtml(boolean escapeHtml) {
		this.escapeHtml = escapeHtml;
	}



	
	public void doTag() throws JspException, IOException {
		StringWriter  sw=new StringWriter();
		getJspBody().invoke(sw);
		String content=sw.getBuffer().toString();
		
		JspWriter  out=getJspContext().getOut();
		if(escapeHtml){
			content=htmlFilter(content);
		}
		out.write(content);
		
	}




	private  String  htmlFilter(String message) {
		if (message == null)
            return (null);

        char content[] = new char[message.length()];
        message.getChars(0, message.length(), content, 0);
        StringBuilder result = new StringBuilder(content.length + 50);
        for (int i = 0; i < content.length; i++) {
            switch (content[i]) {
            case '<':
                result.append("&lt;");
                break;
            case '>':
                result.append("&gt;");
                break;
            case '&':
                result.append("&amp;");
                break;
            case '"':
                result.append("&quot;");
                break;
            default:
                result.append(content[i]);
            }
        }
        return (result.toString());

   
	}
	
	
	
}
