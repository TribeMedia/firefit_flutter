# Keep Stripe classes that are referenced but might be considered unused by R8
-keep class com.stripe.android.** { *; }
-keep class com.stripe.android.pushProvisioning.** { *; }

# Specific rules for problematic classes
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivity$g
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Args
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Error
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningEphemeralKeyProvider
-dontwarn com.stripe.android.pushProvisioning.EphemeralKeyUpdateListener

# Additional rules for Stripe SDK
-keep class com.stripe.android.model.** { *; }
-keep class com.stripe.android.view.** { *; }
-keep class com.stripe.android.core.** { *; }
-keep class com.stripe.android.paymentsheet.** { *; }
-keep class com.stripe.android.payments.** { *; }

# Keep React Native Stripe SDK classes
-keep class com.reactnativestripesdk.** { *; }
-keep class com.facebook.react.** { *; }

# General rules for Android
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class * extends java.lang.Exception

# Keep the support library
-keep class androidx.** { *; }
-keep interface androidx.** { *; }
-keep class com.google.android.material.** { *; }
-dontwarn com.google.android.material.**
-dontnote com.google.android.material.**

# Prevent proguard from stripping interface information from TypeAdapter, TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * extends com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

# Prevent R8 from leaving Data object members always null
-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
}
