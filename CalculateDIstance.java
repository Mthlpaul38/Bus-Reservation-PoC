package com.example.BusReservation.dao;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;


public class CalculateDIstance {

	private static final String USER_AGENT = "Mozilla/5.0";
	
	
	public double getDistance(String source,String destination) throws IOException
	{

		source=source+",India";
		destination=destination+",India";
		String Url="https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins="+source+"&destinations="+destination
				+"&key=AIzaSyAv2VMBe1-mwqqXQ3UCyrsMoAyqd7GU7ss" ;
		
		double dist=0;
		
		URL obj = new URL(Url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("User-Agent", USER_AGENT);
		int responseCode = con.getResponseCode();
		System.out.println("GET Response Code :: " + responseCode);
		if (responseCode == HttpURLConnection.HTTP_OK) {  
			BufferedReader in = new BufferedReader(new InputStreamReader(
					con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			//System.out.println(response.toString());
			
			JSONObject jobj1=new JSONObject(response.toString());
			
			JSONArray jarr1=jobj1.getJSONArray("rows");
			
			JSONObject jobj2=jarr1.getJSONObject(0);
			
			JSONArray jarr2=jobj2.getJSONArray("elements");
			
			JSONObject jobj3=jarr2.getJSONObject(0);
			
			JSONObject jobj4=jobj3.getJSONObject("distance");
			System.out.println(jobj4.get("text"));
		dist= jobj4.getLong("value");
		
}
		else
		{
			System.out.println("get request does not worked");
		}
	return dist;
		
	}
	
}

