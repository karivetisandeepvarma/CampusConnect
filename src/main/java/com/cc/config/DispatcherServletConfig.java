package com.cc.config;

import org.jspecify.annotations.Nullable;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletConfig extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?> @Nullable [] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?> @Nullable [] getServletConfigClasses() {
		@SuppressWarnings("rawtypes")
		Class[] configClasses = {Configs.class};
		return configClasses;
	}

	@Override
	protected String[] getServletMappings() {
		String[] mappings = {"/cc/*"};
		
		return mappings;
	}
	
	

}
