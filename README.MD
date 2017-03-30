# Voice KTN Build 

### Prerequisites 

1. Install [Java](https://www.java.com/) version 7 or higher
2. Install [Praat](http://praat.org/) version 6.x
3. Install [SoX](http://sox.sourceforge.net/)
4. Install [Edinburgh Speech Tools](http://www.cstr.ed.ac.uk/projects/speech_tools/)

### Usage

To run a local MaryTTS server with the new voice:

    ./gradlew run
    
Then go to `http://localhost:59125`.

### Data

The data (speech + annotation) for this voice can be found in the [voice-ktn-data](https://github.com/ioonaa/voice-ktn-data) repository (mind the license).
Note that it is not required to download the data manually, for the build script does it for you!