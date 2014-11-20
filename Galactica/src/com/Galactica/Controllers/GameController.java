package com.Galactica.Controllers;

import java.awt.Graphics;
import java.awt.Toolkit;

import com.Galactica.Views.Field;

public class GameController {
	
	protected Field mField;
	
	public GameController()
	{
		//create Field with paint function defined in controller
		mField = new Field(ka){
			@Override
			public void paintComponent(Graphics g){
				super.paintComponent(g);
		        Toolkit.getDefaultToolkit().sync();
			}
		};
	}

}
