import 'model/music_model.dart';

void main() {
  MediaFile file1 = MediaFile(
    title: 'Song 1',
    duration: Duration(minutes: 3, seconds: 30),
    filePath: '/storage/emulated/0/Music/song1.mp3',
  );
  MediaFile file2 = MediaFile(
    title: 'Song 2',
    duration: Duration(minutes: 4, seconds: 15),
    filePath: '/storage/emulated/0/Music/song2.mp3',
  );
  MediaFile file3 = MediaFile(
    title: 'Song 3',
    duration: Duration(minutes: 5, seconds: 0),
    filePath: '/storage/emulated/0/Music/song3.mp3',
  );

  MediaFile file4 = MediaFile(
    title: 'Song 4',
    duration: Duration(minutes: 3, seconds: 45),
    filePath: '/storage/emulated/0/Music/song4.mp3',
  );
  MediaFile file5 = MediaFile(
    title: 'Song 5',
    duration: Duration(minutes: 4, seconds: 30),
    filePath: '/storage/emulated/0/Music/song5.mp3',
  );
  Playlist playlist = Playlist(name: "Liked", mediaFiles: [
    file1,
    file2,
    file3,
  ]);

  // playlist.playPlaylist();
  playlist.shufflePlaylist(playlist);

  file1.stop();
}
