import 'dart:math';

// TODO: Implement the Song class
class Song {
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
  ]; //list all

  void listSongs() {
    if (songs.isNotEmpty) {
      sortByArtist();

      for (var song in songs) {
        print(song['title'] +
            ' by ' +
            song['singer'] +
            ' (' +
            song['minutes'] +
            ':' +
            song['second'] +
            ')');
      }
    } else {
      print("Playlists Empty");
    }
  }

  void sortByArtist() {
    songs.sort((a, b) => a['title'].compareTo(b['title']));
  }

  int durationConversion(int minutes, int seconds) {
    return ((minutes * 60) + seconds);
  }
}

// TODO: Implement the Playlist class
class Playlist {
//   final songs = new Song();
  // Properties, constructor, and methods go here
}

// TODO: Implement the MusicFestival class
class MusicFestival {
  Song song = new Song();
  int getTotalDuration(arr) {
    int totalDuration = 0;

    arr.forEach((item) {
      int totalsecond = song.durationConversion(
          int.parse(item['minutes']), int.parse(item['second']));
      totalDuration += totalsecond;
    });
    return totalDuration;
  }
  // Properties, constructor, and methods go here
}

void main() {
  Song song = new Song();
  MusicFestival musicFest = MusicFestival();
  print('Total Festival Duration: ' +
      (musicFest.getTotalDuration(song.songs).toString()));
  print('\n');
  song.listSongs();
//   print('Welcome to the Music Festival Playlist Manager!');
//   print(Song);
  // Create and manipulate objects here
}
