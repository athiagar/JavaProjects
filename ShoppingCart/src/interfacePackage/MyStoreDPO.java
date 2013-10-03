package interfacePackage;

import java.util.ArrayList;

import classPackage.SQLTable;

public interface MyStoreDPO {
	public String getPass(String userName);
	public ArrayList<SQLTable> setArray();
	public void createUser(String createUserName, String createPassword, String createName);

}
