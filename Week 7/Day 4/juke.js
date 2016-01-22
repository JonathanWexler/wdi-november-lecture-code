// Some ideas for Jukebox
function Jukebox() {
    this.songs = []
    // play
    this.play = function(){
        document.createElement('audio');
    }
    this.addSong = function(song){
        this.songs.push(song)
    }
    // stop
    // playlist
    // songlist
    // shuffle
    // next
    // back
    // currentSong
}

function Song (url) {
    this.url = url
}

var new_song = new Song("thriller.mp3")
var second_song = new Song("bad.mp3")
new_song.url
var my_juke = new Jukebox();
my_juke.addSong(new_song);
my_juke.addSong(second_song);
my_juke.play()






