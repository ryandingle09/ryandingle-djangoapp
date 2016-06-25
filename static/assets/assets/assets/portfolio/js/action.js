var url = window.location.protocol+'//'+window.location.host;

$(document).ready(function(e){

    $.getJSON(url+'/header/',function(data){
    	if(data == '')
    	{
    		var videosandimages = ['Aloha-Mundo', 'Coder', 'Undo'];
		    var file = videosandimages[Math.floor(Math.random() * videosandimages.length)];
		    $('#video-background source').attr('src', 'static/portfolio/videos/' + file + '.mp4');
		    $('#video-background').attr('poster', 'static/portfolio/images/' + file + '.jpg');
		    $('#video-background').load();
    	}
    	else
    	{
    		var datas = data[Math.floor(Math.random() * data.length)];
    		//console.log(datas);
    		//alert(datas.fields.image);
    		var image = [datas.fields.image];
    		var video = [datas.fields.video];
		    var images = image[Math.floor(Math.random() * image.length)];
		    var videos = video[Math.floor(Math.random() * video.length)];
		    $('#video-background source').attr('src', '/media/' + videos );
		    $('#video-background').attr('poster', '/media/' + images);
		    $('#video-background').load();
    	}
    });

	$('.add').submit(function(e){
		e.preventDefault();
		var identity = $(this).attr('data-identity');
		if(identity ==  'contact')
		{
			$.ajax({
	           type: $(this).attr('method'),
	           url: url+'/contact/',
	           data: $(this).serialize(),
	           success: function (data) {
	           		$('.response').html(data);
	                $('#ok-modal').modal('show');
	           },
	           error: function(data) {
	               alert('Contact Software Developer!');
	           }
	        });
	    }
	    else if(identity == 'subscribe')
	    {
	    	$.ajax({
	           type: $(this).attr('method'),
	           url: url+'/subscribe/',
	           data: $(this).serialize(),
	           success: function (data) {
	           		$('.response').html(data);
	                $('#ok-modal').modal('show');
	           },
	           error: function(data) {
	               alert('Contact Software Developer!');
	           }
	        });
	    }
		else{
			alert('Invalid action.');
			console.log('Invalid action.');
		}
	});
});