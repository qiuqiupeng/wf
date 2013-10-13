/**
 * 
 */
package me.leep.wf.actions;

import java.util.HashMap;
import java.util.Map;

import me.leep.wf.actions.base.EditAction;

/**
 * @author lipeng
 *
 */
public class AccordionAjaxAction extends EditAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* （非 Javadoc）
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	private Map<String, String> accordion;

    public String execute() throws Exception {
        accordion = new HashMap<String, String>();
        accordion.put("Section 1", "Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.");
        accordion.put("Section 2", "Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna.");
        accordion.put("Section 3", "Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.");
        accordion.put("Section 4", "Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.");
        return SUCCESS;
    }

    public Map<String, String> getAccordion() {
        return accordion;
    }
	 

}
