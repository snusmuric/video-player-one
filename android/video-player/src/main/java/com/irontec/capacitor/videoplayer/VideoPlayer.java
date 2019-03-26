package com.irontec.capacitor.videoplayer;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;


@NativePlugin()
public class VideoPlayer extends Plugin {
    private static final String TAG = "VideoPlayer";

    @PluginMethod()
    public void play(PluginCall call) {
        String url = call.getString("url");
        if(url == null) {
            call.reject("Must provide an url");
            return;
        }
        Log.v(TAG,"display url: "+url);
        Uri uri = Uri.parse(url);
        Intent intent = new Intent(getActivity(), VideoPlayerActivity.class);
        intent.putExtra("videoUri",uri);
        getActivity().startActivity(intent);
        
        JSObject ret = new JSObject();
        ret.put("result", true);
        call.success(ret);
    }
}
