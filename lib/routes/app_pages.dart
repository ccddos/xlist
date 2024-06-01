import 'package:get/get.dart';

import 'package:xlist/pages/file/index.dart';
import 'package:xlist/pages/splash/index.dart';
import 'package:xlist/pages/detail/index.dart';
import 'package:xlist/pages/search/index.dart';
import 'package:xlist/pages/setting/index.dart';
import 'package:xlist/pages/notfound/index.dart';
import 'package:xlist/pages/homepage/index.dart';
import 'package:xlist/pages/document/index.dart';
import 'package:xlist/pages/directory/index.dart';
import 'package:xlist/pages/video_player/index.dart';
import 'package:xlist/pages/audio_player/index.dart';
import 'package:xlist/pages/setting/about/index.dart';
import 'package:xlist/pages/image_preview/index.dart';
import 'package:xlist/pages/setting/recent/index.dart';
import 'package:xlist/pages/setting/server/index.dart';
import 'package:xlist/pages/setting/preview/index.dart';
import 'package:xlist/pages/setting/favorite/index.dart';
import 'package:xlist/pages/setting/download/index.dart';

import 'package:xlist/routes/middlewares/auth_middleware.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = _Paths.SPLASH;

  static final routes = [
    unknownRoute,
    GetPage(name: _Paths.SPLASH, page: () => const SplashPage()),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const Homepage(),
      binding: HomepageBinding(),
      transitionDuration: Duration.zero,
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailPage(),
      binding: DetailBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchPage(),
      binding: SearchBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.DIRECTORY,
      page: () => DirectoryPage(),
      binding: DirectoryBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.DOCUMENT,
      page: () => const DocumentPage(),
      binding: DocumentBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.FILE,
      page: () => const FilePage(),
      binding: FileBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.IMAGE_PREVIEW,
      page: () => const ImagePreviewPage(),
      binding: ImagePreviewBinding(),
      opaque: false,
      showCupertinoParallax: false,
      transition: Transition.fadeIn,
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.VIDEO_PLAYER,
      page: () => const VideoPlayerPage(),
      binding: VideoPlayerBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.AUDIO_PLAYER,
      page: () => const AudioPlayerPage(),
      binding: AudioPlayerBinding(),
      showCupertinoParallax: false,
      transition: Transition.downToUp,
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingPage(),
      binding: SettingBinding(),
      children: [
        GetPage(
          name: _Paths.SERVER,
          page: () => const ServerPage(),
          binding: ServerBinding(),
        ),
        GetPage(
          name: _Paths.DOWNLOAD,
          page: () => const DownloadPage(),
          binding: DownloadBinding(),
        ),
        GetPage(
          name: _Paths.ABOUT,
          page: () => const AboutPage(),
          binding: AboutBinding(),
        ),
        GetPage(
          name: _Paths.RECENT,
          page: () => const RecentPage(),
          binding: RecentBinding(),
        ),
        GetPage(
          name: _Paths.FAVORITE,
          page: () => const FavoritePage(),
          binding: FavoriteBinding(),
        ),
        GetPage(
          name: _Paths.PREVIEW_IMAGE,
          page: () => const SettingImagePage(),
          binding: SettingImageBinding(),
        ),
        GetPage(
          name: _Paths.PREVIEW_AUDIO,
          page: () => const SettingAudioPage(),
          binding: SettingAudioBinding(),
        ),
        GetPage(
          name: _Paths.PREVIEW_VIDEO,
          page: () => const SettingVideoPage(),
          binding: SettingVideoBinding(),
        ),
        GetPage(
          name: _Paths.PREVIEW_DOCUMENT,
          page: () => const SettingDocumentPage(),
          binding: SettingDocumentBinding(),
        ),
      ],
    ),
  ];

  static final unknownRoute = GetPage(
    name: _Paths.NOTFOUND,
    page: () => const NotfoundPage(),
  );
}
