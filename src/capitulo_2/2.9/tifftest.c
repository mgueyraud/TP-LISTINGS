#include <stdio.h>
#include <tiffio.h>
int main (int argc, char** argv)
{
TIFF* tiff;
tiff = TIFFOpen ("photo.tiff", "r");
TIFFClose (tiff);
return 0;
}