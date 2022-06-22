import android.widget.Toast;
import android.app.Activity;
Activity act;

void setup(){
  act = this.getActivity();
  showToast("Hello World");
}

void draw(){}

void showToast(final String message) { 
  act.runOnUiThread(new Runnable() {
    public void run() { 
      android.widget.Toast.makeText(act.getApplicationContext(), message, android.widget.Toast.LENGTH_SHORT).show();
    }
  }
  );
}