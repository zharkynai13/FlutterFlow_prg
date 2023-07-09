bool? hasUploadMedia() {
  bool hasUploadedMedia(String mediaPath) {
    return mediaPath != null && mediaPath.isNotEmpty;
  }
}
