

///图片工具类
class AppImage {
  static AppImage? appImage;

  factory AppImage() => AppImage._getInstance();

  AppImage._();

  static AppImage _getInstance() {
    if (appImage == null) appImage = AppImage._();
    return appImage!;
  }

  ///背景图
  String balanceNotEnoughDialogBg = "assets/images/balance_not_enough_dialog_bg.png";
  String commentButtonBg = "assets/images/comment_button_bg.png";
  String emptyBg = "assets/images/empty_bg.png";
  String firstLoginTopBg = "assets/images/first_login_top_bg.png";
  String incomeHintDialogBg = "assets/images/income_hint_dialog_bg.png";
  String incomeDetailBg = "assets/images/income_detail_bg.png";
  String loginHeaderOtherBg = "assets/images/login_header_other_bg.png";
  String loginTopBg = "assets/images/login_top_bg.png";
  String mineDiamondDetailBg = "assets/images/mine_diamond_detail_bg.png";
  String mineHeaderBg = "assets/images/mine_header_bg.png";
  String mineIncomeDetailBg = "assets/images/mine_income_detail_bg.png";
  String myDiamondDetailBg = "assets/images/my_diamond_bg.png";
  String oneKeyMatchBg = "assets/images/one_key_match_bg.png";
  String otherPageHeaderBg = "assets/images/other_page_header_bg.png";
  String pageHeaderBg = "assets/images/page_header_bg.png";
  String praiseButtonBg = "assets/images/praise_button_bg.png";
  String sysmsgButtonBg = "assets/images/sysmsg_button_bg.png";
  String defaultBannerBg = "assets/images/default_banner_bg.png";


  ///Icon
  String iconHomeNormal = "assets/images/icon_home_normal.png";
  String iconHomeSelected = "assets/images/icon_home_selected.png";
  String iconSquareNormal = "assets/images/icon_square_normal.png";
  String iconSquareSelected = "assets/images/icon_square_selected.png";
  String iconChatNormal = "assets/images/icon_chat_normal.png";
  String iconChatSelected = "assets/images/icon_chat_selected.png";
  String iconMineNormal = "assets/images/icon_mine_normal.png";
  String iconMineSelected = "assets/images/icon_mine_selected.png";
  String iconAdd = "assets/images/icon_add.png";
  String iconAlipay = "assets/images/icon_alipay.png";
  String iconArrowRight = "assets/images/icon_arrow_right.png";
  String iconArrowRightWhite = "assets/images/icon_arrow_right_white.png";
  String iconCameraBlack = "assets/images/icon_camera_black.png";
  String iconCameraCircle = "assets/images/icon_camera_circle.png";
  String iconDelete = "assets/images/icon_delete.png";
  String iconDeleteGray = "assets/images/icon_delete_gray.png";
  String iconDiamond = "assets/images/icon_diamond.png";
  String iconDiamondPurple = "assets/images/icon_diamond_purple.png";
  String iconEdit = "assets/images/icon_edit.png";
  String iconEditGray = "assets/images/icon_edit_gray.png";
  String iconFlash = "assets/images/icon_flash.png";
  String iconFlashRed = "assets/images/icon_flash_red.png";
  String iconFlashWhite = "assets/images/icon_flash_white.png";
  String iconGallery = "assets/images/icon_gallery.png";
  String iconHeartRed = "assets/images/icon_heart_red.png";
  String iconHint = "assets/images/icon_hint.png";
  String iconHintGray = "assets/images/icon_hint_gray.png";
  String iconKeyBoard = "assets/images/icon_keyboard.png";
  String iconLikeGray = "assets/images/icon_like_gray.png";
  String iconLikeRed = "assets/images/icon_like_red.png";
  String iconLikeWhite = "assets/images/icon_like_white.png";
  String iconLocationGray = "assets/images/icon_location_gray.png";
  String iconLocationWhite = "assets/images/icon_location_white.png";
  String iconManBlue = "assets/images/icon_man_blue.png";
  String iconManGray = "assets/images/icon_man_gray.png";
  String iconMessage = "assets/images/icon_message.png";
  String iconMore = "assets/images/icon_more.png";
  String iconNoSelectedRectangle = "assets/images/icon_no_selected_rectangle.png";
  String iconNotSelected = "assets/images/icon_not_selected.png";
  String iconPhi1 = "assets/images/icon_phiz1.png";
  String iconPhi2 = "assets/images/icon_phiz2.png";
  String iconPhi3 = "assets/images/icon_phiz3.png";
  String iconPhi4 = "assets/images/icon_phiz4.png";
  String iconPhi5 = "assets/images/icon_phiz5.png";
  String iconPhi6 = "assets/images/icon_phiz6.png";
  String iconPhi7 = "assets/images/icon_phiz7.png";
  String iconPhi8 = "assets/images/icon_phiz8.png";
  String iconPhi9 = "assets/images/icon_phiz9.png";
  String iconPhi10 = "assets/images/icon_phiz10.png";
  String iconPhi11 = "assets/images/icon_phiz11.png";
  String iconPhi12 = "assets/images/icon_phiz12.png";
  String iconPhi13 = "assets/images/icon_phiz13.png";
  String iconPhi14 = "assets/images/icon_phiz14.png";
  String iconPhi15 = "assets/images/icon_phiz15.png";
  String iconPhi16 = "assets/images/icon_phiz16.png";
  String iconPhi17 = "assets/images/icon_phiz17.png";
  String iconPhi18 = "assets/images/icon_phiz18.png";
  String iconPhi19 = "assets/images/icon_phiz19.png";
  String iconPhi20 = "assets/images/icon_phiz20.png";
  String iconPhi21 = "assets/images/icon_phiz21.png";
  String iconPhi22 = "assets/images/icon_phiz22.png";
  String iconPhi23 = "assets/images/icon_phiz23.png";
  String iconPhi24 = "assets/images/icon_phiz24.png";
  String iconPhi25 = "assets/images/icon_phiz25.png";
  String iconPhi26 = "assets/images/icon_phiz26.png";
  String iconPhi27 = "assets/images/icon_phiz27.png";
  String iconPhi28 = "assets/images/icon_phiz28.png";
  String iconPhi29 = "assets/images/icon_phiz29.png";
  String iconPhi30 = "assets/images/icon_phiz30.png";
  String iconPhi31 = "assets/images/icon_phiz31.png";
  String iconPhi32 = "assets/images/icon_phiz32.png";
  String iconPhi33 = "assets/images/icon_phiz33.png";
  String iconPhi34 = "assets/images/icon_phiz34.png";
  String iconPhi35 = "assets/images/icon_phiz35.png";
  String iconPhi36 = "assets/images/icon_phiz36.png";
  String iconPhi37 = "assets/images/icon_phiz37.png";
  String iconPhi38 = "assets/images/icon_phiz38.png";
  String iconPhi39 = "assets/images/icon_phiz39.png";
  String iconPhi40 = "assets/images/icon_phiz40.png";
  String iconPhi41 = "assets/images/icon_phiz41.png";
  String iconPlayVideo = "assets/images/icon_play_video.png";
  String iconPraiseGray = "assets/images/icon_praise_gray.png";
  String iconPraiseRed = "assets/images/icon_praise_red.png";
  String iconRefresh = "assets/images/icon_refresh.png";
  String iconRubber = "assets/images/icon_rubber.png";
  String iconSecuritySafety = "assets/images/icon_security_safety.png";
  String iconSecuritySafetyOther = "assets/images/icon_security_safety_other.png";
  String iconSelected = "assets/images/icon_selected.png";
  String iconSelectedRectangle = "assets/images/icon_selected_rectangle.png";
  String iconSignOut = "assets/images/icon_signout.png";
  String iconSmileyWhite = "assets/images/icon_smiley_white.png";
  String iconToggleOff = "assets/images/icon_toggle_off.png";
  String iconTransfer = "assets/images/icon_transfer.png";
  String iconUser = "assets/images/icon_user.png";
  String iconWallet = "assets/images/icon_wallet.png";
  String iconWechat = "assets/images/icon_wechat.png";
  String iconWomanGray = "assets/images/icon_woman_gray.png";
  String iconWomanPink = "assets/images/icon_woman_pink.png";
  String iconBackBlack = "assets/images/icon_back_black.png";




}
