class Song { // add class song for encoding of all songs
  List<Map<String, dynamic>> songs = [
    {'title': 'Born to Win', 'singer': 'BINI', 'minutes': '03', 'second': '30'},
    {
      'title': 'Golden Arrow',
      'singer': 'BINI',
      'minutes': '03',
      'second': '15'
    },
    {'title': 'Na Na Na', 'singer': 'BINI', 'minutes': '03', 'second': '45'},
    {'title': 'Kapit', 'singer': 'BINI', 'minutes': '03', 'second': '00'},
    {'title': 'Lagi', 'singer': 'BINI', 'minutes': '03', 'second': '20'},
  ]; // Initializing All songs

  void listSongs() { // initialized this function to add songs
    if (songs.isNotEmpty) { // validation pag walang laman
      sortByArtist(); // recall sorting of song before printing

      for (var song in songs) { //looping of all songs
        print(song['title'] +
            ' by ' +
            song['singer'] +
            ' (' +
            song['minutes'] +
            ':' +
            song['second'] +
            ')'); // print song nag contatenate nadin ako sir para sa mga keys dun sa list
      }
    } else { // catcher pag walang laman
      print("Playlists Empty"); // to let user know na wala sialang playlist
    }
  }

  void sortByArtist() { // class para pang sort void sya kasi walang irereturn 
    songs.sort((a, b) => a['title'].compareTo(b['title'])); // pang sort ng map by value of specific key
  }

  int durationConversion(int minutes, int seconds) { // method na mag hahandle ng conversion ng duration
    return ((minutes * 60) + seconds); // pang convert ng minute and pag add  ng seconds
  }
}

// TODO: Implement the Playlist class
class Playlist {
//   final songs = new Song();
  // Properties, constructor, and methods go here
}

// TODO: Implement the MusicFestival class
class MusicFestival { // pang handle ng ibang logic para sa music fest
  Song song = new Song(); // redeclaration of Song class
  int getTotalDuration(arr) { // method pang kuha ng total festival duration
    int totalDuration = 0; //initialize total duration to 0

    arr.forEach((item) { //looping of all songs 
      int totalsecond = song.durationConversion(
          int.parse(item['minutes']), int.parse(item['second'])); // call ng conversion to secong from song class
      totalDuration += totalsecond; //adding of total seconds to total duration
    });
    return totalDuration; //return output
  }
  // Properties, constructor, and methods go here
}

void main() {
  Song song = new Song(); // recalling Song Class and assign to song variable
  MusicFestival musicFest = MusicFestival(); // recalling Music Festival Class and assign to musicFest variable
  
  print('Total Festival Duration: ' +
      (musicFest.getTotalDuration(song.songs).toString()) + ' seconds'); // printing of total duration (seconds)
  
  print('\nRandom Songs:'); //printing ng random songs title

  print('\n'); //new line before listing of allsong
  print('Main Stage playlist:'); // display title
  print('Playlist Main Stage:'); //display chosen playlist
  song.listSongs();

  // Your code to test the classes goes here
//   print('Welcome to the Music Festival Playlist Manager!');
//   print(Song);
  // Create and manipulate objects here
}
