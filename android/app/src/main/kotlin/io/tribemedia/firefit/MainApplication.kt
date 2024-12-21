package io.tribemedia.firefit

import io.flutter.app.FlutterApplication
import com.instabug.library.Instabug
import com.instabug.library.invocation.InstabugInvocationEvent

class MainApplication : FlutterApplication() {
    override fun onCreate() {
        super.onCreate()
        // Initialize Instabug
        Instabug.Builder(this, "e5cf2628390ab6c34d103a488909cc93")
            .setInvocationEvents(InstabugInvocationEvent.SHAKE)
            .build()
    }
} 