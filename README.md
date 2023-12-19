# tracer_app


## Project Setup

We are using Google Maps to render the location of tracker device so for that we need to get API key.
- [Follow Documentation to generate Google Map API Key](https://developers.google.com/maps/documentation)

Once you get the API Key, In AndroidManifest.xml

Replace 
```
<meta-data android:name="com.google.android.geo.API_KEY"
            android:value="@string/google_api_key"/>
```
With
```
<meta-data android:name="com.google.android.geo.API_KEY"
               android:value="<<<YOUR-API-KEY-HERE>>>"/>
```


Now Create a new project on the Firebase:
## Reminder use same firebase project for both Tracker and Tracer App
- [Firebase Project Setup Documentation](https://firebase.google.com/docs/flutter/setup?platform=ios)
- Enable Firestore Database


