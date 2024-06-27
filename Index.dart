// Define the base class Media
class Media {
  void play() {
    print('Playing media...');
  }
}

// Define the derived class Song that inherits from Media
class Song extends Media {
  String artist;

  // Constructor to initialize the artist attribute
  Song(this.artist);

  // Override the play method to include the artist name
  @override
  void play() {
    print('Playing song by $artist...');
  }
}

void main() {
  // Create an instance of Media and call its play method
  Media media = Media();
  media.play();

  // Create an instance of Song and call its play method
  Song song = Song('Artist Name');
  song.play();
}
