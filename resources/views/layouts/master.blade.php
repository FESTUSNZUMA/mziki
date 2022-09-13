<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Mziki</title>
<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
<link rel="stylesheet" type="text/css" href="/css/artists.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="/assets/js/min.js"></script>
<script src="/assets/js/play.js"></script>

<script src="/assets/js/slider.js"></script>		


</head>
<body>



@yield("content")


<script type="text/javascript">
	var trackName =  document.getElementById('trackName')
	var artistName = document.getElementById("artistName")
	var play = document.getElementsByClassName('play')[0];
	var pause = document.getElementsByClassName("pause")[0];

$(document).ready(function(){
fetch('http://127.0.0.1:8000/allsongs')
	.then((res)=>res.json())
	.then((songs)=>{ 
currentPlaylist = songs 
 audioElement = new Audio()
setTrack(currentPlaying, currentPlaylist, false)

audioElement.audio.addEventListener("ended", function(){
	
		nextSong();
	})
})
	
})

function timeFromOffset(mouse, progressBar){

}

function playSong(){
audioElement.play()
pause.style.display = "block"
play.style.display = "none"
console.log(audioElement.audio.duration)
}
function nextSong(){
	if(repeat === true){
		currentPlaying === 0;
	}
	else{
	currentPlaying +=1;
if (currentPlaying >= currentPlaylist.length){
	currentPlaying =0;
}
	}
	setTrack(currentPlaying, currentPlaylist, true)
console.log(currentPlaylist)
console.log(currentPlaying)
}

function prevSong(){
	currentPlaying -=1;
	if (currentPlaying === -1){
		currentPlaying = currentPlaylist.length-1
	}

}

function pauseSong(){
	audioElement.pause()
	pause.style.display = "none"
play.style.display = "block"
}
function repeatSong(){
	if(repeat ===true){
		repeat = false
	}
	else {
		repeat=true
	}
	setTrack(currentPlaying, currentPlaylist,true)
}
var trackName = document.getElementById("trackName")
var artistName = document.getElementById("artistName")
function setTrack(currentPlaying,newPlaylist,play){
	var playBtn = document.getElementsByClassName('play')[0];
	var pause = document.getElementsByClassName("pause")[0];
//	console.log(newPlaylist.length)
	
	var trackId =  newPlaylist[currentPlaying].id
	currentPlaylist = newPlaylist
//	console.log(trackId)
	fetch(`http://127.0.0.1:8000/getsong/${trackId}`)
	.then((res)=> res.json())
.then((data)=>{console.log(data)
trackName.innerHTML = data.title

audioElement.setTrack(data.path)


if (play) 
{		
playBtn.style.display = "none"
pause.style.display ="block"
		audioElement.play();
}
})
}



</script>
</body>
</html>