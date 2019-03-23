package com.example.retrofitexample;

import java.util.Date;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

public interface API {


    //Registering a student

    @FormUrlEncoded
    @POST("registerstudent.php")
    Call<ResponseBody> CreateStudent(
            @Field("fname") String fname,
            @Field("lname") String lname,
            @Field("dob") String dob,
            @Field("username") String username,
            @Field("password") String password
    );


}
