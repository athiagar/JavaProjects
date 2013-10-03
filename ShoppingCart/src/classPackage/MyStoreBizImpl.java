package classPackage;

import interfacePackage.MyStoreBiz;
import classPackage.MyStoreDPOImpl;


public class MyStoreBizImpl implements MyStoreBiz {

		private MyStoreDPOImpl storeDPO = new MyStoreDPOImpl();

		public boolean authenticate(String UserName, String Password) {
			// TODO Auto-generated method stub

				String pass = storeDPO.getPass(UserName);
				if (Password.equals(pass))
					return true;
				else
					return false;
				
		
	}
	
	

	
}
