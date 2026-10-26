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
    .locals 54

    .line 60
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ".estrongs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.estrongs.android.pop"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "360LiteBrowser"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.qihoo.contents"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ADM"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "com.dv.adm"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.dv.adm.pay"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Android"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "AndroLua"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "com.androlua"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "alipay"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "com.eg.android.AlipayGphone"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "baidu"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "com.baidu.netdisk"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "com.baidu.searchbox"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "BaiduNetdisk"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.baidu.netdisk"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "DCIM"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "com.android.camera"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Download"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "com.android.providers.downloads.ui"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "Documents"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "com.google.android.documentsui"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "douban"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "com.douban.frodo"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Pictures"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "com.miui.gallery"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Music"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "com.miui.player"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "tencent"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "com.tencent.mobileqq"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "com.tencent.qqlite"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "com.tencent.tim"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Tencent"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "com.tencent.mobileqq"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "com.tencent.qqlite"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "com.tencent.tim"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "huluxia"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "com.huati"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "huluxia"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "com.huluxia.gametools"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ".iFly"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "com.iflytek.inputmethod"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "iFlyIME"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "com.iflytek.inputmethod"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "NP"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "player.normal.np"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "MT2"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "bin.mt.plus"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "MiMarket"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "com.xiaomi.market"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "sjly"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-string v27, "cn.com.shouji.market"

    aput-object v27, v25, v26

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "sogou"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "com.sohu.inputmethod.sogou"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "com.sohu.inputmethod.sogou.xiaomi"

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const-string v28, "sogou.mobile.explorer"

    aput-object v28, v26, v27

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "netease"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string v29, "com.netease.cloudmusic"

    aput-object v29, v27, v28

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "qqmusic"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "com.tencent.qqmusic"

    aput-object v30, v28, v29

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "qqmusicconfig"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "com.tencent.qqmusic"

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "qqmusicexternalDB"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const-string v32, "com.tencent.qqmusic"

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "iApp"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "com.iapp.app"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string v34, "Quark"

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const-string v34, "com.quark.browser"

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "QQBrowser"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const-string v35, "com.tencent.mtt"

    aput-object v35, v33, v34

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "kugou"

    aput-object v36, v34, v35

    const/16 v35, 0x1

    const-string v36, "com.kugou.android"

    aput-object v36, v34, v35

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "TomVPN"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "me.xhss.tomvpn"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "WoodenLetter"

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const-string v38, "com.One.WoodenLetter"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const-string v39, "FusionApp"

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const-string v39, "cn.coldsong.fusionapp"

    aput-object v39, v37, v38

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "VMOSfiletransferstation"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "com.vmos.app"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const-string v41, "TaoKDao"

    aput-object v41, v39, v40

    const/16 v40, 0x1

    const-string v41, "tiiehenry.taokdao"

    aput-object v41, v39, v40

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "JavaNIDE"

    aput-object v42, v40, v41

    const/16 v41, 0x1

    const-string v42, "com.duy.compiler.javanide"

    aput-object v42, v40, v41

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const-string v43, "\u81ea\u52a8\u7cbe\u7075"

    aput-object v43, v41, v42

    const/16 v42, 0x1

    const-string v43, "com.zdanjian.zdanjian"

    aput-object v43, v41, v42

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const-string v44, "Apktool_M"

    aput-object v44, v42, v43

    const/16 v43, 0x1

    const-string v44, "ru.maximoff.apktool"

    aput-object v44, v42, v43

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "amap"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "com.autonavi.minimap"

    aput-object v45, v43, v44

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string v46, "MIUI"

    aput-object v46, v44, v45

    const/16 v45, 0x1

    const-string v46, "com.miui.core"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Json2Bean"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "com.s1243808733.java2beans"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "MxPlayerAd"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "com.mxtech.videoplayer.ad"

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-string v49, "ecloud"

    aput-object v49, v47, v48

    const/16 v48, 0x1

    const-string v49, "com.cn21.ecloud"

    aput-object v49, v47, v48

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "123\u4e91\u76d8"

    aput-object v50, v48, v49

    const/16 v49, 0x1

    const-string v50, "com.mfcloudcalculate.networkdisk"

    aput-object v50, v48, v49

    const/16 v49, 0x35

    move/from16 v0, v49

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-string v53, ".aide"

    aput-object v53, v51, v52

    const/16 v52, 0x1

    aput-object v1, v51, v52

    aput-object v51, v49, v50

    const/4 v1, 0x1

    aput-object v2, v49, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/16 v50, 0x0

    const-string v51, "360"

    aput-object v51, v2, v50

    const/16 v50, 0x1

    const-string v51, "com.qihoo360.mobilesafe"

    aput-object v51, v2, v50

    aput-object v2, v49, v1

    const/4 v1, 0x3

    aput-object v3, v49, v1

    const/4 v1, 0x4

    aput-object v4, v49, v1

    const/4 v1, 0x5

    aput-object v5, v49, v1

    const/4 v1, 0x6

    aput-object v6, v49, v1

    const/4 v1, 0x7

    aput-object v7, v49, v1

    const/16 v1, 0x8

    aput-object v8, v49, v1

    const/16 v1, 0x9

    aput-object v9, v49, v1

    const/16 v1, 0xa

    aput-object v10, v49, v1

    const/16 v1, 0xb

    aput-object v11, v49, v1

    const/16 v1, 0xc

    aput-object v12, v49, v1

    const/16 v1, 0xd

    aput-object v13, v49, v1

    const/16 v1, 0xe

    aput-object v14, v49, v1

    const/16 v1, 0xf

    aput-object v15, v49, v1

    const/16 v1, 0x10

    aput-object v16, v49, v1

    const/16 v1, 0x11

    aput-object v17, v49, v1

    const/16 v1, 0x12

    aput-object v18, v49, v1

    const/16 v1, 0x13

    aput-object v19, v49, v1

    const/16 v1, 0x14

    aput-object v20, v49, v1

    const/16 v1, 0x15

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "iFly"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.iflytek.inputmethod"

    aput-object v4, v2, v3

    aput-object v2, v49, v1

    const/16 v1, 0x16

    aput-object v21, v49, v1

    const/16 v1, 0x17

    aput-object v22, v49, v1

    const/16 v1, 0x18

    aput-object v23, v49, v1

    const/16 v1, 0x19

    aput-object v24, v49, v1

    const/16 v1, 0x1a

    aput-object v25, v49, v1

    const/16 v1, 0x1b

    aput-object v26, v49, v1

    const/16 v1, 0x1c

    aput-object v27, v49, v1

    const/16 v1, 0x1d

    aput-object v28, v49, v1

    const/16 v1, 0x1e

    aput-object v29, v49, v1

    const/16 v1, 0x1f

    aput-object v30, v49, v1

    const/16 v1, 0x20

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mangshedown"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.msdown.lbspms"

    aput-object v4, v2, v3

    aput-object v2, v49, v1

    const/16 v1, 0x21

    aput-object v31, v49, v1

    const/16 v1, 0x22

    aput-object v32, v49, v1

    const/16 v1, 0x23

    aput-object v33, v49, v1

    const/16 v1, 0x24

    aput-object v34, v49, v1

    const/16 v1, 0x25

    aput-object v35, v49, v1

    const/16 v1, 0x26

    aput-object v36, v49, v1

    const/16 v1, 0x27

    aput-object v37, v49, v1

    const/16 v1, 0x28

    aput-object v38, v49, v1

    const/16 v1, 0x29

    aput-object v39, v49, v1

    const/16 v1, 0x2a

    aput-object v40, v49, v1

    const/16 v1, 0x2b

    aput-object v41, v49, v1

    const/16 v1, 0x2c

    aput-object v42, v49, v1

    const/16 v1, 0x2d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AndroidIDEProjects"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.itsaky.androidide"

    aput-object v4, v2, v3

    aput-object v2, v49, v1

    const/16 v1, 0x2e

    aput-object v43, v49, v1

    const/16 v1, 0x2f

    aput-object v44, v49, v1

    const/16 v1, 0x30

    aput-object v45, v49, v1

    const/16 v1, 0x31

    aput-object v46, v49, v1

    const/16 v1, 0x32

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "blued"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.soft.blued"

    aput-object v4, v2, v3

    aput-object v2, v49, v1

    const/16 v1, 0x33

    aput-object v47, v49, v1

    const/16 v1, 0x34

    aput-object v48, v49, v1

    sput-object v49, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->SDCARD_DIR:[[Ljava/lang/String;

    .line 202
    const-string v1, "yy-MM-dd HH:mm"

    sput-object v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnNotifyDataSetChanged(Ljava/lang/Object;)V
    .locals 2

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
    .locals 2

    const/4 v1, 0x0

    .line 186
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_1

    :cond_0
    move-object v0, p0

    .line 187
    check-cast v0, Landroid/widget/BaseAdapter;

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    .line 188
    sput-object v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    .line 189
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
    .locals 1

    .line 429
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public static getListView()Landroid/widget/ListView;
    .locals 1

    .line 433
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 206
    invoke-static {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->checkAdapterAndUp(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez p2, :cond_18

    .line 212
    new-instance v2, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    invoke-direct {v2, v5}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;-><init>(Landroid/content/Context;)V

    .line 215
    :goto_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 217
    const-string v1, "j6"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/FileBrowser$b;

    move-object v1, v2

    .line 219
    check-cast v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    .line 220
    iget-object v6, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    .line 222
    iget-object v3, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v3, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 227
    iget v7, v0, Lcom/aide/ui/browsers/FileBrowser$b;->VH:I

    .line 228
    iget-object v3, v0, Lcom/aide/ui/browsers/FileBrowser$b;->FH:Ljava/lang/String;

    .line 230
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 232
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    const v8, 0x7f07003c

    if-ne v8, v7, :cond_2

    .line 234
    const v8, 0x7f0d0021

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 235
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    .line 250
    :cond_0
    :goto_1
    iget-object v4, v0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    if-eqz v4, :cond_16

    const v4, 0x7f07004b

    if-eq v7, v4, :cond_16

    .line 253
    new-instance v8, Ljava/io/File;

    iget-object v0, v0, Lcom/aide/ui/browsers/FileBrowser$b;->v5:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-static {v8}, Lcom/s1243808733/util/Utils;->isFileInArchive(Ljava/io/File;)Z

    move-result v3

    .line 257
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v3, :cond_5

    .line 264
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 371
    :cond_1
    :goto_2
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 372
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;

    invoke-direct {v3, v1, v2}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$1;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v2

    .line 235
    :cond_2
    const v8, 0x7f07003c

    if-ne v8, v7, :cond_3

    .line 238
    const v8, 0x7f0d0022

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 239
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto :goto_1

    :cond_3
    const v8, 0x7f0700f8

    if-ne v8, v7, :cond_4

    .line 242
    const v8, 0x7f0d0028

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 243
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto/16 :goto_1

    :cond_4
    const v8, 0x7f070012

    if-ne v8, v7, :cond_0

    .line 246
    const v8, 0x7f0d0024

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setItemType(I)V

    goto/16 :goto_1

    .line 266
    :cond_5
    if-nez v3, :cond_7

    .line 272
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "file_browser_display_folder_info"

    const/4 v9, 0x0

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v4, v0

    :goto_4
    if-nez v3, :cond_8

    .line 273
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "file_browser_display_file_info"

    const/4 v9, 0x0

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 275
    :goto_5
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    const/4 v3, 0x0

    if-eqz v9, :cond_a

    .line 276
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 280
    :goto_6
    if-eqz v4, :cond_6

    .line 282
    iget-object v3, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    sget-object v7, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_6
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->setIcon(Landroid/widget/ImageView;Ljava/io/File;)V

    goto/16 :goto_2

    .line 272
    :cond_7
    const/4 v0, 0x0

    move v4, v0

    goto :goto_4

    .line 273
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 280
    :cond_9
    array-length v0, v0

    goto :goto_6

    .line 286
    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_b

    .line 287
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    sget-object v10, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->dateFormat:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/s1243808733/util/Utils;->sizeFormat(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_b
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 292
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 293
    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->selected(Z)V

    .line 296
    :cond_c
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 298
    const-string v4, ".apk.bak"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 300
    :cond_d
    :try_start_0
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/blankj/utilcode/util/AppUtils;->getApkInfo(Ljava/io/File;)Lcom/blankj/utilcode/util/AppUtils$AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/AppUtils$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 303
    :catchall_0
    move-exception v0

    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 306
    :cond_e
    const-string v4, ".svg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 309
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 310
    :try_start_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v3

    .line 311
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 313
    iget-object v4, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    :cond_f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    move-object v3, v0

    .line 317
    :goto_7
    :try_start_3
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 320
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 321
    throw v0

    .line 323
    :cond_10
    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 324
    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 325
    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 326
    const-string v3, ".webp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 327
    :cond_11
    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 329
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 330
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 332
    :cond_12
    const-string v3, ".gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 333
    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 336
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    .line 337
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    iget-object v3, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 338
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 340
    :cond_13
    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 342
    const-string v3, ".7z"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 344
    const-string v3, ".tar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 345
    const-string v3, ".tar.gz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 346
    const-string v3, ".tar.xz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 347
    const-string v3, ".gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 348
    const-string v3, ".tar.bz2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 349
    const-string v3, ".bzip2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 351
    const-string v3, ".jar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 352
    const-string v3, ".rar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 354
    const-string v3, ".aar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 357
    :cond_14
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, "file_type_zip"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 359
    :cond_15
    const-string v3, ".pom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f070048

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 366
    :cond_16
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 376
    :cond_17
    iget-object v0, v6, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 396
    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :cond_18
    move-object v2, p2

    goto/16 :goto_0
.end method

.method public static notifyDataSetChanged()V
    .locals 1

    .line 437
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->sAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
