package com.wandong.cordova.myview;

import android.content.Intent;
import android.util.Log;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaArgs;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class MyViewPlugin extends CordovaPlugin {
    @Override
    public boolean execute(String action, String rawArgs, CallbackContext callbackContext) throws JSONException {
        return super.execute(action, rawArgs, callbackContext);
    }

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        return super.execute(action, args, callbackContext);
    }

    @Override
    public boolean execute(String action, CordovaArgs args, CallbackContext callbackContext) throws JSONException {
        //以下用原生代码打开一个Act1Activity（可以理解为让界面跳转到Act1Activity这个界面）
        //PS：原生很多地方都要获取当前Activity的实例对象（如果在Activity里就用this），在CordovaPlugin用的是cordova.getActivity()
        Log.i("MyView",action+",param:"+ args.getString(0));
//        Intent intent = new Intent();
//        intent.setAction("com.wandong.cordova.myview.MyActivity");
        Intent intent = new Intent(this.cordova.getActivity().getApplicationContext(),MyActivity.class );
        //传入参数，参数分别是key和value
        intent.putExtra("thisText", args.getString(0));
        cordova.getActivity().startActivity(intent);
        return true;
    }
}
