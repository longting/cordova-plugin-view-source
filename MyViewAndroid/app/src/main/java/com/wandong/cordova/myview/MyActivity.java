package com.wandong.cordova.myview;


import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MyActivity extends Activity {

    private FakeR fakeR;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        fakeR = new FakeR(this);
        // setContentView(R.layout.activity_my);
        //setContentView(FakeR.getIdByName(this,"layout", "activity_my"));// 方式1
        setContentView(fakeR.getId("layout", "activity_my"));// 方式2
        //以下实现获取打开此Activity时传进来的参数值（参数的key是thisText），并显示到一个TextView
        TextView txt = (TextView) this.findViewById(FakeR.getIdByName(this,"id", "txtInput"));
        txt.setText(this.getIntent().getStringExtra("thisText"));

    }
}
