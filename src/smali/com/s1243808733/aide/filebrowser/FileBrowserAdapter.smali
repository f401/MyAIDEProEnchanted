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
.method static constructor <clinit>()V
    .registers 52

    .line 60
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ".aide"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v5, ".estrongs"

    aput-object v5, v2, v3

    const-string v5, "com.estrongs.android.pop"

    aput-object v5, v2, v4

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "360"

    aput-object v6, v5, v3

    const-string v6, "com.qihoo360.mobilesafe"

    aput-object v6, v5, v4

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "360LiteBrowser"

    aput-object v7, v6, v3

    const-string v7, "com.qihoo.contents"

    aput-object v7, v6, v4

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "ADM"

    aput-object v9, v8, v3

    const-string v9, "com.dv.adm"

    aput-object v9, v8, v4

    const-string v9, "com.dv.adm.pay"

    aput-object v9, v8, v0

    new-array v9, v0, [Ljava/lang/String;

    const-string v10, "Android"

    aput-object v10, v9, v3

    const-string v10, "android"

    aput-object v10, v9, v4

    new-array v10, v0, [Ljava/lang/String;

    const-string v11, "AndroLua"

    aput-object v11, v10, v3

    const-string v11, "com.androlua"

    aput-object v11, v10, v4

    new-array v11, v0, [Ljava/lang/String;

    const-string v12, "alipay"

    aput-object v12, v11, v3

    const-string v12, "com.eg.android.AlipayGphone"

    aput-object v12, v11, v4

    new-array v12, v7, [Ljava/lang/String;

    const-string v13, "baidu"

    aput-object v13, v12, v3

    const-string v13, "com.baidu.netdisk"

    aput-object v13, v12, v4

    const-string v14, "com.baidu.searchbox"

    aput-object v14, v12, v0

    new-array v14, v0, [Ljava/lang/String;

    const-string v15, "DCIM"

    aput-object v15, v14, v3

    const-string v15, "com.android.camera"

    aput-object v15, v14, v4

    new-array v15, v0, [Ljava/lang/String;

    const-string v16, "Download"

    aput-object v16, v15, v3

    const-string v16, "com.android.providers.downloads.ui"

    aput-object v16, v15, v4

    new-array v7, v0, [Ljava/lang/String;

    const-string v17, "douban"

    aput-object v17, v7, v3

    const-string v17, "com.douban.frodo"

    aput-object v17, v7, v4

    new-array v4, v0, [Ljava/lang/String;

    const-string v18, "Pictures"

    aput-object v18, v4, v3

    const-string v18, "com.miui.gallery"

    const/16 v17, 0x1

    aput-object v18, v4, v17

    move-object/from16 v18, v4

    new-array v4, v0, [Ljava/lang/String;

    const-string v19, "Music"

    aput-object v19, v4, v3

    const-string v19, "com.miui.player"

    aput-object v19, v4, v17

    const/4 v0, 0x4

    move-object/from16 v20, v4

    new-array v4, v0, [Ljava/lang/String;

    const-string v21, "tencent"

    aput-object v21, v4, v3

    const-string v21, "com.tencent.mobileqq"

    aput-object v21, v4, v17

    const-string v22, "com.tencent.qqlite"

    const/4 v3, 0x2

    aput-object v22, v4, v3

    const-string v19, "com.tencent.tim"

    const/16 v16, 0x3

    aput-object v19, v4, v16

    new-array v3, v0, [Ljava/lang/String;

    const-string v25, "Tencent"

    const/16 v23, 0x0

    aput-object v25, v3, v23

    aput-object v21, v3, v17

    const/4 v0, 0x2

    aput-object v22, v3, v0

    aput-object v19, v3, v16

    move-object/from16 v22, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v19, "huluxia"

    aput-object v19, v3, v23

    const-string v24, "com.huati"

    aput-object v24, v3, v17

    move-object/from16 v24, v3

    new-array v3, v0, [Ljava/lang/String;

    aput-object v19, v3, v23

    const-string v19, "com.huluxia.gametools"

    aput-object v19, v3, v17

    move-object/from16 v25, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v19, ".iFly"

    aput-object v19, v3, v23

    const-string v19, "com.iflytek.inputmethod"

    aput-object v19, v3, v17

    move-object/from16 v26, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v27, "iFly"

    aput-object v27, v3, v23

    aput-object v19, v3, v17

    move-object/from16 v27, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v28, "iFlyIME"

    aput-object v28, v3, v23

    aput-object v19, v3, v17

    move-object/from16 v28, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v19, "NP"

    aput-object v19, v3, v23

    const-string v19, "player.normal.np"

    aput-object v19, v3, v17

    move-object/from16 v29, v3

    new-array v3, v0, [Ljava/lang/String;

    const-string v19, "MT2"

    aput-object v19, v3, v23

    const-string v19, "bin.mt.plus"

    aput-object v19, v3, v17

    move-object/from16 v30, v3

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "sogou"

    aput-object v0, v3, v23

    const-string v0, "com.sohu.inputmethod.sogou"

    aput-object v0, v3, v17

    const-string v0, "com.sohu.inputmethod.sogou.xiaomi"

    move-object/from16 v31, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v0, "sogou.mobile.explorer"

    const/16 v16, 0x3

    aput-object v0, v3, v16

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "netease"

    aput-object v19, v0, v23

    const-string v19, "com.netease.cloudmusic"

    aput-object v19, v0, v17

    move-object/from16 v32, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "qqmusic"

    aput-object v19, v0, v23

    const-string v19, "com.tencent.qqmusic"

    aput-object v19, v0, v17

    move-object/from16 v33, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v34, "qqmusicconfig"

    aput-object v34, v0, v23

    aput-object v19, v0, v17

    move-object/from16 v34, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v35, "qqmusicexternalDB"

    aput-object v35, v0, v23

    aput-object v19, v0, v17

    move-object/from16 v35, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "mangshedown"

    aput-object v19, v0, v23

    const-string v19, "com.msdown.lbspms"

    aput-object v19, v0, v17

    move-object/from16 v36, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "iApp"

    aput-object v19, v0, v23

    const-string v19, "com.iapp.app"

    aput-object v19, v0, v17

    move-object/from16 v37, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "Quark"

    aput-object v19, v0, v23

    const-string v19, "com.quark.browser"

    aput-object v19, v0, v17

    move-object/from16 v38, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "QQBrowser"

    aput-object v19, v0, v23

    const-string v19, "com.tencent.mtt"

    aput-object v19, v0, v17

    move-object/from16 v39, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "kugou"

    aput-object v19, v0, v23

    const-string v19, "com.kugou.android"

    aput-object v19, v0, v17

    move-object/from16 v40, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "TomVPN"

    aput-object v19, v0, v23

    const-string v19, "me.xhss.tomvpn"

    aput-object v19, v0, v17

    move-object/from16 v41, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "WoodenLetter"

    aput-object v19, v0, v23

    const-string v19, "com.One.WoodenLetter"

    aput-object v19, v0, v17

    move-object/from16 v42, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "FusionApp"

    aput-object v19, v0, v23

    const-string v19, "cn.coldsong.fusionapp"

    aput-object v19, v0, v17

    move-object/from16 v43, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "VMOSfiletransferstation"

    aput-object v19, v0, v23

    const-string v19, "com.vmos.app"

    aput-object v19, v0, v17

    move-object/from16 v44, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "JavaNIDE"

    aput-object v19, v0, v23

    const-string v19, "com.duy.compiler.javanide"

    aput-object v19, v0, v17

    move-object/from16 v45, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "自动精灵"

    aput-object v19, v0, v23

    const-string v19, "com.zdanjian.zdanjian"

    aput-object v19, v0, v17

    move-object/from16 v46, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "AndroidIDEProjects"

    aput-object v19, v0, v23

    const-string v19, "com.itsaky.androidide"

    aput-object v19, v0, v17

    move-object/from16 v47, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "amap"

    aput-object v19, v0, v23

    const-string v19, "com.autonavi.minimap"

    aput-object v19, v0, v17

    move-object/from16 v48, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "MxPlayerAd"

    aput-object v19, v0, v23

    const-string v19, "com.mxtech.videoplayer.ad"

    aput-object v19, v0, v17

    move-object/from16 v49, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "blued"

    aput-object v19, v0, v23

    const-string v19, "com.soft.blued"

    aput-object v19, v0, v17

    move-object/from16 v50, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "ecloud"

    aput-object v19, v0, v23

    const-string v19, "com.cn21.ecloud"

    aput-object v19, v0, v17

    move-object/from16 v51, v0

    new-array v0, v4, [Ljava/lang/String;

    const-string v19, "123云盘"

    aput-object v19, v0, v23

    const-string v19, "com.mfcloudcalculate.networkdisk"

    aput-object v19, v0, v17

    const/16 v4, 0x35

    new-array v4, v4, [[Ljava/lang/String;

    aput-object v1, v4, v23

    aput-object v2, v4, v17

    const/4 v1, 0x2

    aput-object v5, v4, v1

    const/4 v2, 0x3

    aput-object v6, v4, v2

    const/4 v2, 0x4

    aput-object v8, v4, v2

    const/4 v2, 0x5

    aput-object v9, v4, v2

    const/4 v2, 0x6

    aput-object v10, v4, v2

    const/4 v2, 0x7

    aput-object v11, v4, v2

    const/16 v2, 0x8

    aput-object v12, v4, v2

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "BaiduNetdisk"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v5, 0x1

    aput-object v13, v2, v5

    const/16 v8, 0x9

    aput-object v2, v4, v8

    const/16 v2, 0xa

    aput-object v14, v4, v2

    const/16 v2, 0xb

    aput-object v15, v4, v2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "Documents"

    aput-object v1, v2, v6

    const-string v1, "com.google.android.documentsui"

    aput-object v1, v2, v5

    const/16 v1, 0xc

    aput-object v2, v4, v1

    const/16 v1, 0xd

    aput-object v7, v4, v1

    const/16 v1, 0xe

    aput-object v18, v4, v1

    const/16 v1, 0xf

    aput-object v20, v4, v1

    const/16 v1, 0x10

    aput-object v31, v4, v1

    const/16 v1, 0x11

    aput-object v22, v4, v1

    const/16 v1, 0x12

    aput-object v24, v4, v1

    const/16 v1, 0x13

    aput-object v25, v4, v1

    const/16 v1, 0x14

    aput-object v26, v4, v1

    const/16 v1, 0x15

    aput-object v27, v4, v1

    const/16 v1, 0x16

    aput-object v28, v4, v1

    const/16 v1, 0x17

    aput-object v29, v4, v1

    const/16 v1, 0x18

    aput-object v30, v4, v1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "MiMarket"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "com.xiaomi.market"

    const/4 v7, 0x1

    aput-object v5, v2, v7

    const/16 v5, 0x19

    aput-object v2, v4, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "sjly"

    aput-object v1, v2, v6

    const-string v1, "cn.com.shouji.market"

    aput-object v1, v2, v7

    const/16 v1, 0x1a

    aput-object v2, v4, v1

    const/16 v1, 0x1b

    aput-object v3, v4, v1

    const/16 v1, 0x1c

    aput-object v32, v4, v1

    const/16 v1, 0x1d

    aput-object v33, v4, v1

    const/16 v1, 0x1e

    aput-object v34, v4, v1

    const/16 v1, 0x1f

    aput-object v35, v4, v1

    const/16 v1, 0x20

    aput-object v36, v4, v1

    const/16 v1, 0x21

    aput-object v37, v4, v1

    const/16 v1, 0x22

    aput-object v38, v4, v1

    const/16 v1, 0x23

    aput-object v39, v4, v1

    const/16 v1, 0x24

    aput-object v40, v4, v1

    const/16 v1, 0x25

    aput-object v41, v4, v1

    const/16 v1, 0x26

    aput-object v42, v4, v1

    const/16 v1, 0x27

    aput-object v43, v4, v1

    const/16 v1, 0x28

    aput-object v44, v4, v1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "TaoKDao"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string v3, "tiiehenry.taokdao"

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const/16 v3, 0x29

    aput-object v2, v4, v3

    const/16 v2, 0x2a

    aput-object v45, v4, v2

    const/16 v2, 0x2b

    aput-object v46, v4, v2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Apktool_M"

    aput-object v3, v2, v5

    const-string v3, "ru.maximoff.apktool"

    aput-object v3, v2, v6

    const/16 v3, 0x2c

    aput-object v2, v4, v3

    const/16 v2, 0x2d

    aput-object v47, v4, v2

    const/16 v2, 0x2e

    aput-object v48, v4, v2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "MIUI"

    aput-object v3, v2, v5

    const-string v3, "com.miui.core"

    aput-object v3, v2, v6

    const/16 v3, 0x2f

    aput-object v2, v4, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Json2Bean"

    aput-object v2, v1, v5

    const-string v2, "com.s1243808733.java2beans"

    aput-object v2, v1, v6

    const/16 v2, 0x30

    aput-object v1, v4, v2

    const/16 v1, 0x31

    aput-object v49, v4, v1

    const/16 v1, 0x32

    aput-object v50, v4, v1

    const/16 v1, 0x33

    aput-object v51, v4, v1

    const/16 v1, 0x34

    aput-object v0, v4, v1

    sput-object v4, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->SDCARD_DIR:[[Ljava/lang/String;

    .line 202
    const-string v0, "yy-MM-dd HH:mm"

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnNotifyDataSetChanged(Ljava/lang/Object;)V
    .registers 2

    .line 148
    invoke-static {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->checkAdapterAndUp(Ljava/lang/Object;)V

    .line 150
    check-cast p0, Landroid/widget/BaseAdapter;

    .line 152
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v0, "notifyDataSetChanged_"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method private static checkAdapterAndUp(Ljava/lang/Object;)V
    .registers 2

    .line 186
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_6

    if-eq v0, p0, :cond_10

    .line 187
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/widget/BaseAdapter;

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    .line 189
    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    .line 193
    :cond_10
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    if-nez v0, :cond_26

    .line 194
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v0, "Zo"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/aide/ui/browsers/FileBrowser;

    sput-object p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    .line 196
    :cond_26
    sget-object p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    if-nez p0, :cond_3e

    .line 197
    sget-object p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sFileBrowser:Lcom/aide/ui/browsers/FileBrowser;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v0, "getListView"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    sput-object p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    :cond_3e
    return-void
.end method

.method public static getAdapter()Landroid/widget/BaseAdapter;
    .registers 1

    .line 429
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public static getListView()Landroid/widget/ListView;
    .registers 1

    .line 433
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    .line 206
    invoke-static {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->checkAdapterAndUp(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p2, :cond_e

    .line 212
    new-instance p2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    invoke-direct {p2, p3}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;-><init>(Landroid/content/Context;)V

    .line 215
    :cond_e
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 217
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "j6"

    invoke-virtual {p0, p1, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/aide/ui/browsers/FileBrowser$b;

    .line 219
    move-object p1, p2

    check-cast p1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    .line 220
    iget-object v1, p1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    .line 222
    iget-object v3, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v3, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p1, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 227
    iget v3, p0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    .line 228
    iget-object v5, p0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    .line 230
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 232
    invoke-virtual {p1, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    const v7, 0x7f07003c

    if-ne v7, v3, :cond_5f

    .line 234
    const v8, 0x7f0d0021

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 235
    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto :goto_a0

    :cond_5f
    if-ne v7, v3, :cond_73

    .line 238
    const v7, 0x7f0d0022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 239
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto :goto_a0

    :cond_73
    const v7, 0x7f0700f8

    if-ne v7, v3, :cond_8a

    .line 242
    const v7, 0x7f0d0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 243
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto :goto_a0

    :cond_8a
    const v7, 0x7f070012

    if-ne v7, v3, :cond_a0

    .line 246
    const v7, 0x7f0d0024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 247
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    .line 250
    :cond_a0
    :goto_a0
    iget-object v6, p0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    if-eqz v6, :cond_2d2

    const v6, 0x7f07004b

    if-eq v3, v6, :cond_2d2

    .line 253
    new-instance v5, Ljava/io/File;

    iget-object p0, p0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-static {v5}, Lcom/s1243808733/util/Utils;->isFileInArchive(Ljava/io/File;)Z

    move-result p0

    .line 257
    iget-object v6, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v6, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p0, :cond_db

    .line 264
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2dc

    .line 266
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    goto/16 :goto_2dc

    :cond_db
    if-nez p0, :cond_eb

    .line 272
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "file_browser_display_folder_info"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_eb

    const/4 v6, 0x1

    goto :goto_ec

    :cond_eb
    const/4 v6, 0x0

    :goto_ec
    if-nez p0, :cond_fc

    .line 273
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v7, "file_browser_display_file_info"

    invoke-interface {p0, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_fc

    const/4 p0, 0x1

    goto :goto_fd

    :cond_fc
    const/4 p0, 0x0

    .line 275
    :goto_fd
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    const-string v8, " "

    const/4 v9, 0x0

    if-eqz v7, :cond_148

    .line 276
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    invoke-virtual {p0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_118

    const/4 p0, 0x0

    goto :goto_119

    .line 280
    :cond_118
    array-length p0, p0

    :goto_119
    if-eqz v6, :cond_141

    .line 282
    iget-object p3, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    sget-object v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_141
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    invoke-static {p0, v5}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->setIcon(Landroid/widget/ImageView;Ljava/io/File;)V

    goto/16 :goto_2dc

    .line 286
    :cond_148
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2dc

    if-eqz p0, :cond_17e

    .line 287
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    sget-object v10, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/s1243808733/util/Utils;->sizeFormat(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_17e
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_193

    .line 292
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 293
    invoke-virtual {p1, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 296
    :cond_193
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 297
    const-string v6, ".apk"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2bd

    .line 298
    const-string v6, ".apk.bak"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a9

    goto/16 :goto_2bd

    .line 306
    :cond_1a9
    const-string v6, ".svg"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ee

    .line 309
    :try_start_1b1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b6
    .catchall {:try_start_1b1 .. :try_end_1b6} :catchall_1d6

    .line 310
    :try_start_1b6
    invoke-static {p0}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p3

    .line 311
    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object p3

    if-eqz p3, :cond_1ca

    .line 313
    iget-object v5, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v6, p3}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1ca
    .catchall {:try_start_1b6 .. :try_end_1ca} :catchall_1d3

    .line 320
    :cond_1ca
    new-array p3, v0, [Ljava/io/Closeable;

    aput-object p0, p3, v2

    invoke-static {p3}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_2dc

    :catchall_1d3
    move-exception p3

    move-object v9, p0

    goto :goto_1d7

    .line 396
    :catchall_1d6
    move-exception p0

    .line 317
    :goto_1d7
    :try_start_1d7
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1dc
    .catchall {:try_start_1d7 .. :try_end_1dc} :catchall_1e5

    .line 320
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v9, p0, v2

    invoke-static {p0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_2dc

    :catchall_1e5
    move-exception p0

    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v9, p1, v2

    invoke-static {p1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 321
    throw p0

    .line 323
    :cond_1ee
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ab

    .line 324
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ab

    .line 325
    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ab

    .line 326
    const-string v0, ".webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_210

    goto/16 :goto_2ab

    .line 332
    :cond_210
    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_235

    .line 333
    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 334
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object p0

    sget-object p3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 336
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object p0

    .line 337
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object p0

    iget-object p3, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 338
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2dc

    .line 340
    :cond_235
    const-string p3, ".zip"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 342
    const-string p3, ".7z"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 344
    const-string p3, ".tar"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 345
    const-string p3, ".tar.gz"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 346
    const-string p3, ".tar.xz"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 347
    const-string p3, ".gzip"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 348
    const-string p3, ".tar.bz2"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 349
    const-string p3, ".bzip2"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 351
    const-string p3, ".jar"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 352
    const-string p3, ".rar"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_29f

    .line 354
    const-string p3, ".aar"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_28e

    goto :goto_29f

    .line 359
    :cond_28e
    const-string p3, ".pom"

    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2dc

    .line 360
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const p3, 0x7f070048

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2dc

    .line 357
    :cond_29f
    :goto_29f
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string p3, "file_type_zip"

    invoke-static {p3}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2dc

    .line 327
    :cond_2ab
    :goto_2ab
    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 328
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    .line 329
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p0

    iget-object p3, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 330
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_2dc

    .line 300
    :cond_2bd
    :goto_2bd
    :try_start_2bd
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/blankj/utilcode/util/AppUtils;->getApkInfo(Ljava/io/File;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2ca
    .catchall {:try_start_2bd .. :try_end_2ca} :catchall_2cb

    goto :goto_2dc

    .line 303
    :catchall_2cb
    move-exception p0

    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2dc

    .line 366
    :cond_2d2
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_2dc
    :goto_2dc
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2ee

    .line 372
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f3

    .line 376
    :cond_2ee
    iget-object p0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    :goto_2f3
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance p3, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    invoke-direct {p3, p1, p2}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p2
.end method

.method public static notifyDataSetChanged()V
    .registers 1

    .line 437
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_7

    .line 438
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
