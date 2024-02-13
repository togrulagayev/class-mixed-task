// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Playable {
  void play();
  void stop();
  void pause();
}

class MediaFile implements Playable {
  String title;
  Duration duration;
  String filePath;

  MediaFile({
    required this.title,
    required this.duration,
    required this.filePath,
  });

  @override
  void pause() {
    print('$title pause');
  }

  @override
  void play() {
    print('$title play');
  }

  @override
  void stop() {
    print('$title stop');
  }
}

class Playlist with Shuffleable {
  String name;
  List<MediaFile> mediaFiles;

  Playlist({
    required this.name,
    required this.mediaFiles,
  });

  void playPlaylist() {
    for (MediaFile music in mediaFiles) {
      print('Playing $name playlist: ${music.title}');
    }
  }
}

mixin Shuffleable {
  void shufflePlaylist(Playlist playlist) {
    playlist.mediaFiles.shuffle();
    for (MediaFile music in playlist.mediaFiles) {
      print('Playing ${playlist.name} playlist: ${music.title}');
    }
  }
}
