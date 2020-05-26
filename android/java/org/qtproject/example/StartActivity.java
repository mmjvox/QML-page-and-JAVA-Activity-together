package org.qtproject.example;

import android.content.Intent;
import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
//import android.R;
import android.widget.Toast;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;


public class StartActivity extends AppCompatActivity {

     public Context ctx;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_start);


        ctx=getBaseContext();

        Toast.makeText(ctx.getApplicationContext() , "StartActivity Loaded" , Toast.LENGTH_SHORT).show();

        RelativeLayout layout = new RelativeLayout(this);
                Button btnChangeColour = new Button(this);
                btnChangeColour.setText("Open QML Page");
                btnChangeColour.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        Intent myIntent = new Intent(ctx, org.qtproject.qt5.android.bindings.QtActivity.class);
                        ctx.startActivity(myIntent);
                    }
                });
                layout.addView(btnChangeColour);
                setContentView(layout);


    }
}
