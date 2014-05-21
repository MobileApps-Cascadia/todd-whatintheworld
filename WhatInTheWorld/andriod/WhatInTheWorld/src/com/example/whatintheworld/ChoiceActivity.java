package com.example.whatintheworld;

import android.support.v7.app.ActionBarActivity;
import android.support.v7.app.ActionBar;
import android.support.v4.app.Fragment;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.os.Build;

public class ChoiceActivity extends ActionBarActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_choice);
		initfonts();
		initStateButton();
		initWorldButton();

		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {

		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.choice, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	private void initfonts()
    {
    	TextView tv = (TextView) findViewById(R.id.textView1);
    	TextView tv1 = (TextView) findViewById(R.id.textView2);
    	TextView tv2 = (TextView) findViewById(R.id.textView3);
    	TextView tv3 = (TextView) findViewById(R.id.textView4);
    	Typeface tf = Typeface.createFromAsset(getAssets(), "fonts/eraserregular-webfont.ttf");
    	tv.setTypeface(tf);	
    	tv1.setTypeface(tf);	
    	tv2.setTypeface(tf);	
    	tv3.setTypeface(tf);	
    	
    }
	private void initStateButton() {
    	Button start = (Button) findViewById(R.id.button1); //1
    	start.setOnClickListener( new View.OnClickListener() { //2
    	public void onClick(View v) {
    	Intent intent = new Intent(ChoiceActivity. this , StateActivity.class );
    	intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP); //4
    	startActivity(intent);
    	}
    	});
    	}
	private void initWorldButton() {
    	Button start = (Button) findViewById(R.id.button1); //1
    	start.setOnClickListener( new View.OnClickListener() { //2
    	public void onClick(View v) {
    	Intent intent = new Intent(ChoiceActivity. this , WorldActivity.class );
    	intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP); //4
    	startActivity(intent);
    	}
    	});
    	}


	

}
