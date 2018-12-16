import 'package:dali/image_cache_impl.dart';
import 'package:flutter/widgets.dart';

class DaliImageCache extends WidgetsFlutterBinding {
  @override
  ImageCache createImageCache() {
    // Set your image cache size
    var imageCache = new ImageCacheImpl();
    //imageCache.maximumSize = 10;
    return imageCache;
  }

  static WidgetsBinding ensureInitialized() {
    if (WidgetsBinding.instance == null) new DaliImageCache();
    return WidgetsBinding.instance;
  }
}