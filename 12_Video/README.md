It appears that using 640x360 may result in some improper squishing of the video on some machines. You can use 640x480 instead. 


If you are getting a fatal error on a Mac, you can try using this code instead to access the camera

video = new Capture(this, 640, 480, "pipeline:autovideosrc");
