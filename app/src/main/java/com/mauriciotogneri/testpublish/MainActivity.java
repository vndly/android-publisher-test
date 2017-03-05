package com.mauriciotogneri.testpublish;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
{
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        try
        {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);

            TextView textView = (TextView) findViewById(R.id.version);
            textView.setText(String.format("%s - %s", packageInfo.versionCode, packageInfo.versionName));
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}