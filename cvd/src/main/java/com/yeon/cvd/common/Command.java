package com.yeon.cvd.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	public String run(HttpServletRequest request, HttpServletResponse response);

}
