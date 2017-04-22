$(document).ready(function(){
//Set the configuration for your app
// TODO: Replace with your project's config object
var downloadURL="";
var config = {
		apiKey: "AIzaSyBIs_ee86VeLrfax-R6sonQkMDsr_VtbLg",
	    authDomain: "celeprokart-913f5.firebaseapp.com",
	    databaseURL: "https://celeprokart-913f5.firebaseio.com",
	    projectId: "celeprokart-913f5",
	    storageBucket: "celeprokart-913f5.appspot.com",
};
firebase.initializeApp(config);

// Get a reference to the storage service, which is used to create references in your storage bucket
var storage = firebase.storage();

// Create a storage reference from our storage service
var storageRef = storage.ref();

//Create a child reference
var imagesRef = storageRef.child('images');


$(".upload_action").click(function(e){
	
	e.preventDefault();
	var data = new FormData();
	jQuery.each(jQuery('.imgData')[0].files, function(i, file) {
	    data.append('img-'+i, file);
	    
	    console.log('Upload is ' + progress + '% done');
	
});

//File or Blob named mountains.jpg

// Upload file and metadata to the object 'images/mountains.jpg'
var uploadTask = storageRef.child('images_new/'+$(".imgData")[0].files[0].name).put($('.imgData')[0].files[0]);

// Listen for state changes, errors, and completion of the upload.
uploadTask.on(firebase.storage.TaskEvent.STATE_CHANGED, // or 'state_changed'
  function(snapshot) {
    // Get task progress, including the number of bytes uploaded and the total number of bytes to be uploaded
    var progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
    console.log('Upload is ' + progress + '% done');
    switch (snapshot.state) {
      case firebase.storage.TaskState.PAUSED: // or 'paused'
        console.log('Upload is paused');
        break;
      case firebase.storage.TaskState.RUNNING: // or 'running'
        console.log('Upload is running');
        break;
    }
  }, function(error) {

  // A full list of error codes is available at
  // https://firebase.google.com/docs/storage/web/handle-errors
  switch (error.code) {
    case 'storage/unauthorized':
      // User doesn't have permission to access the object
      break;

    case 'storage/canceled':
      // User canceled the upload
      break;
      
    case 'storage/unknown':
      // Unknown error occurred, inspect error.serverResponse
      break;
  }
}, function() {
  // Upload completed successfully, now we can get the download URL
	 downloadURL = uploadTask.snapshot.downloadURL;
	  $(".img-upload").attr("src",downloadURL);
	  $(".imgURL").val(downloadURL);

});

})
})
1