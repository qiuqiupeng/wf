/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package me.leep.wf.actions.system;

import me.leep.wf.actions.base.BaseAction;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class EchoAction extends BaseAction {

    private static final long serialVersionUID = 7968544374444173511L;
    private static final Log log = LogFactory.getLog(EchoAction.class);

    private String echo;
    private boolean escape = true;

    public String execute() throws Exception {

	log.debug("Echo : " + echo);
	System.out.println("Echo : " + echo);

	return SUCCESS;
    }


    public boolean isEscape() {
	return escape;
    }

    public void setEscape(boolean escape) {
	this.escape = escape;
    }


	/**
	 * @return the echo
	 */
	public String getEcho() {
		return echo;
	}


	/**
	 * @param echo the echo to set
	 */
	public void setEcho(String echo) {
		this.echo = echo;
	}
    
    
}
