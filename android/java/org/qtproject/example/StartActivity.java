package org.qtproject.example;

import android.content.Intent;
import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
//import android.R;
import android.widget.Toast;

import java.util.Timer;
import java.util.TimerTask;


public class StartActivity extends AppCompatActivity {

     public Context ctx;
//     public Intent myIntent = new Intent(ctx, org.qtproject.qt5.android.bindings.QtActivity.class);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_start);


        ctx=getBaseContext();
        Toast.makeText(ctx.getApplicationContext() , "StartActivity Loaded" , Toast.LENGTH_SHORT).show();



        TimerTask myTimerTask = new TimerTask() {

            Intent myIntent = new Intent(ctx, org.qtproject.qt5.android.bindings.QtActivity.class);

                    @Override
                    public void run() {
                        ctx.startActivity(myIntent);
                    }

                };

                Timer timer = new Timer();

                timer.schedule(myTimerTask, 10000);



//         new FileObserver("/sdcard/") {
//             @Override
//             public void onEvent(int event, String path) {
//                 if (event == FileObserver.CREATE)
//                     Toast.makeText(ctx.getApplicationContext() , "File createdxx" , Toast.LENGTH_SHORT).show();
//             }
//         }.startWatching();
    }
}
