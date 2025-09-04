# ShotSheet

<img src="media/ShotSheet.png" alt="ShotSheet" width="128"/>

## Summary

This script extracts metadata information from photos in the current folder and uses it to generate a "ShotSheet" PDF to annotate and share.

## Install

1. Clone the repository with `git clone git@github.com:jriverac/ShotSheet.git`
2. Install the dependencies:
   - **ExifTool** (for metadata extraction):
     On Mac, run: `brew install exiftool`
   - **ImageMagick** (for image processing and PDF generation):
     On Mac, run: `brew install imagemagick`
3. Make the script executable:
   `chmod +x shotsheet`
4. (Optional) Add the script to your PATH so you can run it from any folder:
   - Move the script to a directory in your PATH, e.g.:
     `mv shotsheet /usr/local/bin/`
   - Or add the ShotSheet folder to your PATH in your shell profile:
     `export PATH="$PATH:<Your Install>/ShotSheet"`

## Usage

1. Navigate to the folder containing your photos.
2. Run the script:
   `shotsheet`
3. Open `ShotSheet.pdf` to view your generated contact sheet.

## Notes

- Your photos should be in JPEG format (either .jpg or .jpeg).
- Your photos need to include the necessary metadata (Rating, Create Date, Caption-Abstract) for the script to work effectively.
- When your metadata is incomplete you might see
  - "REJECTED" when the rating is missing.
  - "No Caption" when the caption-abstract is missing.
  - "Unknown Date" when the create-date is missing.