/**
 * 
 */
package com.borek.telecom.tests;

import javax.ws.rs.core.Response;

import junit.framework.Assert;

import org.jboss.resteasy.client.jaxrs.ResteasyClient;
import org.jboss.resteasy.client.jaxrs.ResteasyClientBuilder;
import org.jboss.resteasy.client.jaxrs.ResteasyWebTarget;
import org.junit.Test;

/**
 * @author Piotr Borek
 *
 */

public class Tests {

    @Test
    public void met() {

	ResteasyClient client = new ResteasyClientBuilder().build();
	ResteasyWebTarget target = client
		.target("http://localhost:8080/telecom/accountService/accounts");
	Response response = target.request().get();
	System.out.println(response.getStatus());
	Integer s = response.getStatus();
	Assert.assertTrue(s.toString().equals("200"));

    }

}
