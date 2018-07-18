package com.mauriciotogneri.testpublish;

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

        TextView textView = findViewById(R.id.version);
        textView.setText(String.format("%s - %s", BuildConfig.VERSION_CODE, BuildConfig.VERSION_NAME));
    }
}