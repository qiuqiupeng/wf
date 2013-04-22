/**
 * 
 */
package test;

import java.util.HashMap;
import java.util.Map;

import com.jgeppert.struts2.jquery.tree.views.jsp.ui.TreeTag;

import person.leep.wf.struts2.action.BaseAction;

/**
 * @author lipeng
 * 
 */
public class Test extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String user;
	private Map<String, String> mylist;


	/**
	 * @return the user
	 */
	public String getUser() {
		return user;
	}

	/**
	 * @param user
	 *            the user to set
	 */
	public void setUser(String user) {
		this.user = user;
	}

	public String index() throws Exception {
		// TODO Auto-generated method stub

//		ScmSysAccount account = service.check();
//		setUser(account.getAccountId());
//		setSysAccount(account);
		System.out.println("-------------------");
		return SUCCESS;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		mylist = new HashMap<String, String>();
        mylist.put("Section 1", "Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.");
        mylist.put("Section 2", "Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna.");
        mylist.put("Section 3", "Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.");
        mylist.put("Section 4", "Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.");

        TreeTag tree = new TreeTag();
//        tree.setroot
		return SUCCESS;
	}
	
	public Map<String, String> getMylist() {
        return mylist;
}

}
