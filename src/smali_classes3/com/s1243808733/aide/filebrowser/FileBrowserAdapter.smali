.class public Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemType;,
        Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;,
        Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;,
        Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;,
        Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static SDCARD_DIR:[[Ljava/lang/String;

.field static dateFormat:Ljava/lang/String;

.field private static sAdapter:Landroid/widget/BaseAdapter;

.field private static sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

.field private static sListView:Landroid/widget/ListView;


# direct methods
.method static final constructor <clinit>()V
    .registers 15

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".aide"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ADM"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.dv.adm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.dv.adm.pay"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "BaiduNetdisk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.baidu.netdisk"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Download"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.android.providers.downloads.ui"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ".iFly"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "com.iflytek.inputmethod"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "MiMarket"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "com.xiaomi.market"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "sogou"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "com.sohu.inputmethod.sogou"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "com.sohu.inputmethod.sogou.xiaomi"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "sogou.mobile.explorer"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "FusionApp"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "cn.coldsong.fusionapp"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "TaoKDao"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "tiiehenry.taokdao"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "AndroidIDEProjects"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.itsaky.androidide"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ecloud"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "com.cn21.ecloud"

    aput-object v12, v10, v11

    const/16 v11, 0x35

    new-array v11, v11, [[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, ".estrongs"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "com.estrongs.android.pop"

    aput-object v14, v12, v13

    aput-object v12, v11, v0

    const/4 v0, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "360"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "com.qihoo360.mobilesafe"

    aput-object v14, v12, v13

    aput-object v12, v11, v0

    const/4 v0, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "360LiteBrowser"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "com.qihoo.contents"

    aput-object v14, v12, v13

    aput-object v12, v11, v0

    const/4 v0, 0x4

    aput-object v1, v11, v0

    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Android"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "android"

    aput-object v13, v1, v12

    aput-object v1, v11, v0

    const/4 v0, 0x6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "AndroLua"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "com.androlua"

    aput-object v13, v1, v12

    aput-object v1, v11, v0

    const/4 v0, 0x7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "alipay"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "com.eg.android.AlipayGphone"

    aput-object v13, v1, v12

    aput-object v1, v11, v0

    const/16 v0, 0x8

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "baidu"

    aput-object v13, v1, v12

    const/4 v12, 0x1

    const-string v13, "com.baidu.netdisk"

    aput-object v13, v1, v12

    const/4 v12, 0x2

    const-string v13, "com.baidu.searchbox"

    aput-object v13, v1, v12

    aput-object v1, v11, v0

    const/16 v0, 0x9

    aput-object v2, v11, v0

    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v12, "DCIM"

    aput-object v12, v1, v2

    const/4 v2, 0x1

    const-string v12, "com.android.camera"

    aput-object v12, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0xb

    aput-object v3, v11, v0

    const/16 v0, 0xc

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Documents"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.android.documentsui"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0xd

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "douban"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.douban.frodo"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0xe

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Pictures"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.miui.gallery"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0xf

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Music"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.miui.player"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x10

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tencent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.mobileqq"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.tencent.qqlite"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.tencent.tim"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x11

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Tencent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.mobileqq"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.tencent.qqlite"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.tencent.tim"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x12

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "huluxia"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.huati"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x13

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "huluxia"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.huluxia.gametools"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x14

    aput-object v4, v11, v0

    const/16 v0, 0x15

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iFly"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.iflytek.inputmethod"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x16

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iFlyIME"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.iflytek.inputmethod"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x17

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "NP"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "player.normal.np"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x18

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MT2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "bin.mt.plus"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x19

    aput-object v5, v11, v0

    const/16 v0, 0x1a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sjly"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "cn.com.shouji.market"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x1b

    aput-object v6, v11, v0

    const/16 v0, 0x1c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "netease"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.netease.cloudmusic"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x1d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "qqmusic"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.qqmusic"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x1e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "qqmusicconfig"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.qqmusic"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x1f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "qqmusicexternalDB"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.qqmusic"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x20

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mangshedown"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.msdown.lbspms"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x21

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.iapp.app"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x22

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Quark"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.quark.browser"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x23

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "QQBrowser"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.mtt"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x24

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "kugou"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.kugou.android"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x25

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TomVPN"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "me.xhss.tomvpn"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x26

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "WoodenLetter"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.One.WoodenLetter"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x27

    aput-object v7, v11, v0

    const/16 v0, 0x28

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "VMOSfiletransferstation"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.vmos.app"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x29

    aput-object v8, v11, v0

    const/16 v0, 0x2a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "JavaNIDE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.duy.compiler.javanide"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x2b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u81ea\u52a8\u7cbe\u7075"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.zdanjian.zdanjian"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x2c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Apktool_M"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ru.maximoff.apktool"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x2d

    aput-object v9, v11, v0

    const/16 v0, 0x2e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "amap"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.autonavi.minimap"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x2f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MIUI"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.miui.core"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x30

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Json2Bean"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.s1243808733.java2beans"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x31

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MxPlayerAd"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.mxtech.videoplayer.ad"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x32

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "blued"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.soft.blued"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    const/16 v0, 0x33

    aput-object v10, v11, v0

    const/16 v0, 0x34

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "123\u4e91\u76d8"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.mfcloudcalculate.networkdisk"

    aput-object v3, v1, v2

    aput-object v1, v11, v0

    sput-object v11, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->SDCARD_DIR:[[Ljava/lang/String;

    const-string v0, "yy-MM-dd HH:mm"

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnNotifyDataSetChanged(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->checkAdapterAndUp(Ljava/lang/Object;)V

    .line 150
    check-cast p0, Landroid/widget/BaseAdapter;

    .line 152
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "notifyDataSetChanged_"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method private static checkAdapterAndUp(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 186
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    if-eq v0, p0, :cond_1

    :cond_0
    move-object v0, p0

    .line 187
    check-cast v0, Landroid/widget/BaseAdapter;

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    move-object v0, v1

    .line 188
    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    .line 189
    check-cast v1, Lcom/aide/ui/browsers/FileBrowser;

    sput-object v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    .line 193
    :cond_1
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    if-nez v0, :cond_2

    .line 194
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "Zo"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/FileBrowser;

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    .line 196
    :cond_2
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    if-nez v0, :cond_3

    .line 197
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "getListView"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    :cond_3
    return-void
.end method

.method public static getAdapter()Landroid/widget/BaseAdapter;
    .registers 1

    .line 416
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public static getListView()Landroid/widget/ListView;
    .registers 1

    .line 420
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .annotation runtime Landroid/support/annotation/Keep;
    .end annotation

    .line 206
    invoke-static {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->checkAdapterAndUp(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 211
    if-nez p2, :cond_1a

    .line 212
    new-instance v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    invoke-direct {v2, v4}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;-><init>(Landroid/content/Context;)V

    .line 215
    :goto_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 217
    const-string v1, "j6"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/FileBrowser$b;

    move-object v1, v2

    .line 219
    check-cast v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    .line 220
    iget-object v5, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    .line 222
    iget-object v3, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v3, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 227
    iget v6, v0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    .line 228
    iget-object v3, v0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    .line 230
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 232
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    .line 233
    const v8, 0x7f07003c

    if-ne v8, v6, :cond_2

    const v8, 0x7f0d0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 235
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    .line 247
    :cond_0
    :goto_1
    iget-object v7, v0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    if-eqz v7, :cond_18

    const v7, 0x7f07004b

    if-eq v6, v7, :cond_18

    .line 250
    new-instance v7, Ljava/io/File;

    iget-object v0, v0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {v7}, Lcom/s1243808733/util/Utils;->isFileInArchive(Ljava/io/File;)Z

    move-result v8

    .line 254
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    if-eqz v8, :cond_5

    .line 261
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 359
    :cond_1
    :goto_2
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 360
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;

    invoke-direct {v3, v1, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$100000001;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 411
    return-object v2

    .line 236
    :cond_2
    const v8, 0x7f07003c

    if-ne v8, v6, :cond_3

    const v8, 0x7f0d0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 238
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto :goto_1

    .line 239
    :cond_3
    const v8, 0x7f0700f8

    if-ne v8, v6, :cond_4

    const v8, 0x7f0d0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 241
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto/16 :goto_1

    .line 242
    :cond_4
    const v8, 0x7f070012

    if-ne v8, v6, :cond_0

    const v8, 0x7f0d0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 244
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto/16 :goto_1

    .line 269
    :cond_5
    if-nez v8, :cond_6

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "file_browser_display_folder_info"

    const/4 v9, 0x0

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    const/4 v0, 0x0

    move v3, v0

    .line 270
    :goto_4
    if-nez v8, :cond_7

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v8, "file_browser_display_file_info"

    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_7
    const/4 v0, 0x0

    .line 272
    :goto_5
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 273
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v4, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 277
    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 279
    :goto_6
    if-eqz v3, :cond_8

    iget-object v3, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    sget-object v9, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_8
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->setIcon(Landroid/widget/ImageView;Ljava/io/File;)V

    goto/16 :goto_2

    .line 269
    :cond_9
    const/4 v0, 0x1

    move v3, v0

    goto :goto_4

    .line 270
    :cond_a
    const/4 v0, 0x1

    goto :goto_5

    .line 277
    :cond_b
    array-length v0, v0

    goto :goto_6

    .line 282
    :cond_c
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    if-eqz v0, :cond_d

    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    sget-object v10, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/s1243808733/util/Utils;->sizeFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_d
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_e

    .line 288
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 289
    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 292
    :cond_e
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, ".apk.bak"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 296
    :cond_f
    :try_start_0
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/blankj/utilcode/util/AppUtils;->getApkInfo(Ljava/io/File;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 298
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 300
    :cond_10
    const-string v3, ".svg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 301
    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileInputStream;

    .line 303
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    :try_start_2
    invoke-static {v3}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_11

    .line 307
    iget-object v4, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 312
    :cond_11
    :goto_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_2

    .line 307
    :catch_1
    move-exception v3

    move-object v3, v0

    .line 310
    :goto_8
    :try_start_3
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    .line 312
    :goto_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    throw v1

    .line 314
    :cond_12
    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ".webp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 318
    :cond_13
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 322
    :cond_14
    const-string v3, ".gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 323
    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 329
    :cond_15
    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".7z"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".tar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".tar.gz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".tar.xz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".tar.bz2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".bzip2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".jar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".rar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".aar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 346
    :cond_16
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, "file_type_zip"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 347
    :cond_17
    const-string v3, ".pom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f070048

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 354
    :cond_18
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 363
    :cond_19
    iget-object v0, v5, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 310
    :catchall_1
    move-exception v1

    move-object v2, v0

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_9

    :cond_1a
    move-object v2, p2

    .line 307
    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_8
.end method

.method public static notifyDataSetChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
