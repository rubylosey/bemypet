package org.staticservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/static/*")
public class StaticController {
	
	@RequestMapping(value="/aboutus", method=RequestMethod.GET)
	public void aboutus() throws Exception { } 
	
	@RequestMapping(value="/adopt", method=RequestMethod.GET)
	public void adopt() throws Exception { } 
	
	@RequestMapping(value="/benefit", method=RequestMethod.GET)
	public void benefit() throws Exception { } 
	
	@RequestMapping(value="/reivew", method=RequestMethod.GET)
	public void reivew() throws Exception { } 
	
	@RequestMapping(value="/step", method=RequestMethod.GET)
	public void step() throws Exception { }
	
	@RequestMapping(value="/support", method=RequestMethod.GET)
	public void support() throws Exception { } 
}
