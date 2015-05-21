# ASWArchive
A Softer World is ending, so just to be safe I wrote a script to download all the comics.

asw.sh takes two integers and scrapes the website for all comics in the range of the given inputs, inclusively.

show.sh looks in ~/asw/ for .jpgs, and displays a random one (uses gnome-open, which works for me! no promises).

To setup, mkdir ~/asw/ and run './asw.sh 1 1237' from inside. This will take several minutes to download all the comics. Then run show.sh whenever you want a comic.

TODO: should default to 1-[maxComicIndex], so will have to do some more magic to figure that out.
