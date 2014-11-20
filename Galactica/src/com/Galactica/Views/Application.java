package com.Galactica.Views;

import javax.swing.JFrame;


//import Controllers.GameController;

public class Application extends JFrame {

	// constants
	public static final int SCREEN_WIDTH = 400;
	public static final int SCREEN_HEIGHT = 600;
	public static final String APP_NAME = "Galactica";
	
	public static final int TIMEOUT = 20;
	
	
	//protected GameController controller = new GameController();
	
	public  Application(){
		init();
	}
	
	/**
	 * Initialize the window
	 */
	private void init(){
		//add(controller.getField());
		setSize(SCREEN_WIDTH,SCREEN_HEIGHT);	
		setTitle(APP_NAME);
		//pack();
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLocationRelativeTo(null);
		setVisible(true);
	}
}

