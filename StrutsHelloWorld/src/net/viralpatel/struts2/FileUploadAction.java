package net.viralpatel.struts2;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport implements ServletRequestAware {
	private File userImage; // Isso irá armazenar o arquivo carregado
	private String userImageContentType; // Essa string conterá o Content Type do arquivo carregado. 
	private String userImageFileName; // Essa string irá conter o nome do arquivo carregado. 

	private HttpServletRequest servletRequest;

	public String execute() { 
        try { 
            String filePath = servletRequest.getSession().getServletContext().getRealPath("/"); 
            System.out.println("Server path:" + filePath); 
            File fileToCreate = new File(filePath, this.userImageFileName); 
  
            FileUtils.copyFile(this.userImage, fileToCreate); 
        } catch (Exception e) { 
            e.printStackTrace(); 
            addActionError(e.getMessage()); 
  
            return INPUT; 
        } 
        return SUCCESS; 
    }

	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;

	}
}