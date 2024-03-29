package com.example.appbanhang.activity;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.apachat.loadingbutton.core.customViews.CircularProgressButton;
import com.example.appbanhang.R;
import com.example.appbanhang.ultil.DatalocalManager;
import com.example.appbanhang.ultil.server;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;
import android.view.View;

public class LoginActivity extends AppCompatActivity {

    EditText edtTextEmailLogin, edtTextPasswordLogin;
    String email, password;
    CircularProgressButton cirLoginButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        mapping();
        cirLoginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                login();

            }

        });
    }



    public void login() {

        email = edtTextEmailLogin.getText().toString().trim();
        password = edtTextPasswordLogin.getText().toString().trim();
        RequestQueue requestQueue = Volley.newRequestQueue(getApplicationContext());
        if (!email.equals("") && !password.equals("")) {
            String URL = server.Duongdandangnhap;
            StringRequest stringRequest = new StringRequest(Request.Method.POST, URL, new Response.Listener<String>() {
                @Override
                public void onResponse(String response) {
                    JSONObject jsonObject = null;
                    try {
                        jsonObject = new JSONObject(response);
                        String result = jsonObject.getString("status");
                        JSONArray jsonArray = jsonObject.getJSONArray("data");
                        if (result.equals("success")) {
                            JSONObject object = jsonArray.getJSONObject(0);
                            String fullname = object.getString("fullname");
                            String phone_number = object.getString("phone_number");
                            String email1 = object.getString("email");
                            Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                            intent.putExtra("fullname", fullname);
                            intent.putExtra("phone_number", phone_number);
                            intent.putExtra("email", email1);
                            startActivity(intent);
                            finish();

                        } else {
                            Toast.makeText(LoginActivity.this, "Đăng nhập thất bại", Toast.LENGTH_LONG).show();
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }, new Response.ErrorListener() {
                @Override
                public void onErrorResponse(VolleyError error) {
                    Toast.makeText(LoginActivity.this, error.toString(), Toast.LENGTH_LONG).show();

                }
            }) {
                @Nullable
                @Override
                protected Map<String, String> getParams() throws AuthFailureError {
                    Map<String, String> data = new HashMap<>();
                    data.put("email", email);
                    data.put("password", password);
                    return data;
                }
            };
            requestQueue.add(stringRequest);
        } else {
            Toast.makeText(LoginActivity.this, "Bạn chưa điền đẩy đủ thông tin", Toast.LENGTH_LONG).show();
        }
    }


        public void onLoginClick(View view){
            startActivity(new Intent(this, RegisterActivity.class));
            overridePendingTransition(R.anim.slide_in_right, R.anim.stay);
        }
    private void mapping() {
        edtTextEmailLogin = findViewById(R.id.edtTextEmailLogin);
        edtTextPasswordLogin = findViewById(R.id.edtTextPasswordLogin);
        cirLoginButton = findViewById(R.id.cirLoginButton);
    }
}
