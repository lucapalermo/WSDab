package labs;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.Serializable;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class DiaryApplication implements Serializable {

	
	/**
	 * 
	 */
	
	public DiaryApplication() {
		super();
	}
	
	private static final long serialVersionUID = 1L;
	
	private String filePath;
	private Users users;
	
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) throws JAXBException, IOException {
		
		this.filePath = filePath;
		
		JAXBContext jc = JAXBContext.newInstance(Users.class);
		Unmarshaller u = jc.createUnmarshaller();
		FileInputStream fin = new FileInputStream(filePath); // use the given file path
		users = (Users) u.unmarshal(fin); // This loads the "users" object
		fin.close();
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}

}
