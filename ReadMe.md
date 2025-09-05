# ShotSheet

<img src="media/ShotSheet.png" alt="ShotSheet" width="128"/>

## Summary

This script extracts metadata information from photos in the current folder and uses it to generate a "ShotSheet" PDF to annotate and share.

## Install

1. Clone the repository with `git clone git@github.com:jriverac/ShotSheet.git`
2. Navigate to the repository folder:
   `cd ShotSheet`
3. Run the Makefile to install the script, and follow the prompts:
   `make install`

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
- The best software I found to enter the notes for the photos is [digiKam](https://www.digikam.org), most others just wasted time and got nowhere. Feel free to send me recommendations for other (Mac) software to catalog and write EXIF.
