class ApiUrlConstant {
  ApiUrlConstant._();
  static const hostDlUrl = "https://techblog.sasansafari.com";
  static const baseUrl = "https://techblog.sasansafari.com/Techblog/api/";
<<<<<<< HEAD
  static const getHomeItems = baseUrl + "home/?command=index";
  static const getArticleList =
      baseUrl + "article/get.php?command=new&user_id=";
  static const publishedByMe =
      baseUrl + "article/get.php?command=published_by_me&user_id=";
  static const getArticleInfo =
      baseUrl + "article/get.php?command=info&id=1&user_id=1";
  static const postRegister = baseUrl + "register/action.php";
  static const articlePost = baseUrl + "article/post.php";
  static const podcastFiles =
      baseUrl + "podcast/get.php?command=get_files&podcats_id=";
  static const postPodcast = baseUrl + "podcast/post.php";
  static const PublishedByMePodcast =
      baseUrl + "podcast/get.php?command=published_by_me&user_id=";
=======
  static const getHomeItems = "${baseUrl}home/?command=index";
  static const getArticleList =
      "${baseUrl}article/get.php?command=new&user_id=";
  static const publishedByMe =
      "${baseUrl}article/get.php?command=published_by_me&user_id=";
  static const getArticleInfo =
      "${baseUrl}article/get.php?command=info&id=1&user_id=1";
  static const postRegister = "${baseUrl}register/action.php";
  static const articlePost = "${baseUrl}article/post.php";
  static const podcastFiles =
      "${baseUrl}podcast/get.php?command=get_files&podcats_id=";
  static const postPodcast = "${baseUrl}podcast/post.php";
  // ignore: constant_identifier_names
  static const PublishedByMePodcast =
      "${baseUrl}podcast/get.php?command=published_by_me&user_id=";
>>>>>>> origin/main
}