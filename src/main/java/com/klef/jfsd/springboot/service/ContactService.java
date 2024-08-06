package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Contactus;

public interface ContactService  
{
	public String insert(Contactus c);
	public List<Contactus> viewallcontactus();

}
