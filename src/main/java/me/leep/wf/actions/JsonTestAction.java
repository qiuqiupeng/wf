package me.leep.wf.actions;

import me.leep.wf.actions.base.BaseJsonData;

import org.apache.struts2.convention.annotation.Action;  
import org.apache.struts2.convention.annotation.ParentPackage;  
import org.apache.struts2.convention.annotation.Result;  

import com.opensymphony.xwork2.ActionSupport;  
  
public class JsonTestAction extends BaseJsonData {  
  
    private static final long serialVersionUID = 4242612202520616657L;  
      
    private String name = "fish119";  
  
    public String getName() {  
        return name;  
    }  
      
    public void setName(String name) {  
        this.name = name;  
    }  
      
    @Action(value="test",results={@Result(type="json",name="test")})  
    public String test() throws Exception{  
        this.name += ": Test method!!";  
          
        return "test";  
    }  
      
    @Action(results={@Result(type="json",name="success")})  
    public String execute() throws Exception{  
        this.name +=": This is the default method!"; 
          
        return SUCCESS;  
    }  
      
} 