package com.example.retrofitexample;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

       Call<ResponseBody> call = RetrofitClient
                                .getInstance()
                                .getApi()
                                .CreateStudent("test","test","1990-01-01","test","test");

       call.enqueue(new Callback<ResponseBody>() {
           @Override
           public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
               String s = response.body().toString();
               Toast.makeText(MainActivity.this,"Successfully registered",Toast.LENGTH_LONG).show();
           }

           @Override
           public void onFailure(Call<ResponseBody> call, Throwable t) {
               Log.d(MainActivity.this.toString(), "Failed: " + t.getMessage());
           }
       });
    }
}
