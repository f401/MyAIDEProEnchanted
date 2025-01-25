.class public Lcom/s1243808733/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ASSETS_DATA_DIR:Ljava/lang/String; = "data/"

.field static FAST_ISCN:Ljava/lang/Boolean;

.field private static HOT_FUNCTION:Ljava/io/File;

.field public static final SDCARD_AIDE:Ljava/io/File;

.field public static final SDCARD_DATA_DIR:Ljava/io/File;

.field public static app:Landroid/app/Application;

.field public static mainActivity:Lcom/aide/ui/MainActivity;

.field static sArch:Ljava/lang/String;

.field static sizeFormat:Ljava/text/DecimalFormat;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".aide"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/util/Utils;->SDCARD_AIDE:Ljava/io/File;

    .line 77
    new-instance v1, Ljava/io/File;

    const-string v2, "data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/util/Utils;->SDCARD_DATA_DIR:Ljava/io/File;

    .line 312
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/util/Utils;->sizeFormat:Ljava/text/DecimalFormat;

    .line 520
    const/4 v0, 0x0

    sput-object v0, Lcom/s1243808733/util/Utils;->FAST_ISCN:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDirectoryWritable(Ljava/lang/String;)Z
    .registers 3

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_18

    const/4 p0, 0x1

    return p0

    :catch_18
    move-exception p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private static combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 260
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyToClipboard(Ljava/lang/CharSequence;)V
    .registers 2

    .line 841
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static copyToClipboard(Ljava/lang/CharSequence;Z)V
    .registers 2

    .line 845
    invoke-static {p0}, Lcom/blankj/utilcode/util/ClipboardUtils;->copyText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_13

    .line 847
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "已复制到剪贴板"

    goto :goto_10

    :cond_e
    const-string p0, "Clipboard to copied"

    :goto_10
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    :cond_13
    return-void
.end method

.method public static dp2px(F)I
    .registers 2

    .line 778
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public static fullScrollToBottom(Landroid/app/AlertDialog;)V
    .registers 5

    if-eqz p0, :cond_1d

    .line 439
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "scrollView"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    .line 441
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->fullScrollToBottom(Landroid/widget/ScrollView;)V

    :cond_1d
    return-void
.end method

.method public static fullScrollToBottom(Landroid/widget/ScrollView;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 446
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_7
    return-void
.end method

.method public static getApkSignaturesHashCode(Ljava/lang/String;)I
    .registers 4

    .line 196
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 197
    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 198
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_25

    .line 199
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    .line 198
    :goto_26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    move-exception p0

    return v0
.end method

.method public static getApp()Landroid/app/Application;
    .registers 1

    .line 541
    sget-object v0, Lcom/s1243808733/util/Utils;->app:Landroid/app/Application;

    return-object v0
.end method

.method public static getArch()Ljava/lang/String;
    .registers 1

    .line 431
    sget-object v0, Lcom/s1243808733/util/Utils;->sArch:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 432
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getArch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/util/Utils;->sArch:Ljava/lang/String;

    .line 434
    :cond_10
    sget-object v0, Lcom/s1243808733/util/Utils;->sArch:Ljava/lang/String;

    return-object v0
.end method

.method public static getArch(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4f

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 403
    const/16 v1, 0x61

    const-string v2, "64"

    if-eq v0, v1, :cond_38

    const/16 v1, 0x69

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_22

    const/16 v1, 0x78

    if-eq v0, v1, :cond_2e

    goto :goto_4f

    .line 415
    :cond_22
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const-string p0, "mips64"

    goto :goto_51

    .line 416
    :cond_2b
    const-string p0, "mips"

    goto :goto_51

    .line 411
    :cond_2e
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_40

    .line 413
    :cond_35
    const-string p0, "x86"

    goto :goto_51

    .line 405
    :cond_38
    const-string v0, "amd64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 420
    :goto_40
    const-string p0, "x86_64"

    goto :goto_51

    .line 406
    :cond_43
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4c

    const-string p0, "arm64"

    goto :goto_51

    .line 408
    :cond_4c
    const-string p0, "arm"

    goto :goto_51

    .line 420
    :cond_4f
    :goto_4f
    const-string p0, "unknown"

    :goto_51
    return-object p0
.end method

.method public static getAssetsDataFile()Ljava/lang/String;
    .registers 1

    .line 751
    sget-object v0, Lcom/s1243808733/util/Utils;->ASSETS_DATA_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->getAssetsDataFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .registers 2

    .line 596
    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorBackground(Landroid/content/Context;)I
    .registers 2

    .line 602
    const v0, 0x1010031

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorFromResources(I)I
    .registers 2

    .line 641
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getDataFile()Ljava/io/File;
    .registers 2

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 359
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getDataFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDexElements(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dexElements"

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Utils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private static getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 277
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNamePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 624
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    .line 626
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileNameSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 632
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFiles(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 355
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFilesDir()Ljava/io/File;
    .registers 1

    .line 351
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionDir()Ljava/io/File;
    .registers 3

    .line 308
    sget-object v0, Lcom/s1243808733/util/Utils;->HOT_FUNCTION:Ljava/io/File;

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "functions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/util/Utils;->HOT_FUNCTION:Ljava/io/File;

    :cond_17
    return-object v0
.end method

.method public static getMainActivity()Lcom/aide/ui/MainActivity;
    .registers 1

    .line 549
    sget-object v0, Lcom/s1243808733/util/Utils;->mainActivity:Lcom/aide/ui/MainActivity;

    return-object v0
.end method

.method private static getPathList(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 248
    const-string v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pathList"

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Utils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRootView(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 554
    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_a
    return-object p0
.end method

.method public static getSdConfigFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 745
    new-instance v0, Ljava/io/File;

    const-string v1, "config"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getSdDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSdDataFile()Ljava/io/File;
    .registers 1

    .line 732
    sget-object v0, Lcom/s1243808733/util/Utils;->SDCARD_DATA_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getSdDataFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 736
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSdDataFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSdDataLocationFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 741
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSdDataFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/aide/util/ResUtils;->getLocaleFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getSelectableItemBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 337
    const v0, 0x101030e

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 339
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 341
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_14
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    throw v0
.end method

.method public static getSp()Landroid/content/SharedPreferences;
    .registers 1

    .line 770
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3

    .line 774
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 834
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 835
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 836
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 837
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextColorHint(Landroid/content/Context;)I
    .registers 2

    .line 587
    const v0, 0x101009a

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getTextColorSecondary(Landroid/content/Context;)I
    .registers 2

    .line 591
    const v0, 0x1010038

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getTextColorTertiary(Landroid/content/Context;)I
    .registers 2

    .line 582
    const v0, 0x1010212

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .registers 2

    .line 572
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 574
    const/4 p1, 0x0

    :try_start_9
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 576
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_11
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 577
    throw p1
.end method

.method public static getUpdateVersionCode()J
    .registers 2

    .line 380
    invoke-static {}, Lcom/s1243808733/util/Utils;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersionCode()J
    .registers 3

    .line 368
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 369
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 370
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_20

    .line 371
    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    .line 373
    :cond_20
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_22} :catch_24

    int-to-long v0, v0

    return-wide v0

    :catch_24
    move-exception v0

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getViewBlurForS(Landroid/view/View;Ljava/lang/Integer;F)Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 90
    const-string v3, "getViewRootImpl"

    invoke-virtual {p0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1d

    .line 92
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "viewRootImpl == null"

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    return-object v0

    .line 95
    :cond_1d
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v3, "createBackgroundBlurDrawable"

    invoke-virtual {p0, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    .line 98
    const-string v4, "setBlurRadius"

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 99
    const-string v4, "setCornerRadius"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v6, 0x3

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    if-eqz p1, :cond_6d

    .line 100
    const-string p2, "setColor"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, p2, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6d} :catch_6e

    :cond_6d
    return-object p0

    :catch_6e
    move-exception p0

    .line 103
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static gzip([B)[B
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 176
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 179
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 180
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    return-object p0

    :catchall_1c
    move-exception p0

    .line 187
    :try_start_1d
    throw p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    return-object v0
.end method

.method public static varargs installFunctions([Ljava/lang/String;)V
    .registers 7

    .line 297
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_36

    aget-object v3, p0, v2

    .line 298
    invoke-static {v3}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2a

    invoke-static {v3}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "addDexPath"

    invoke-virtual {v4, v3, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    goto :goto_33

    .line 302
    :cond_2a
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "Failure"

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_36
    return-void
.end method

.method public static isCN()Z
    .registers 2

    .line 523
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 524
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_17

    .line 526
    :cond_f
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 528
    :goto_17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 529
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isCN(Ljava/util/Locale;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/s1243808733/util/Utils;->FAST_ISCN:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0
.end method

.method public static isCN(Ljava/util/Locale;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 515
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    return v0

    .line 517
    :cond_b
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCnFast()Z
    .registers 1

    .line 533
    sget-object v0, Lcom/s1243808733/util/Utils;->FAST_ISCN:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0
.end method

.method public static isFileInArchive(Ljava/io/File;)Z
    .registers 2

    .line 206
    nop

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isLandscape(Landroid/content/res/Configuration;)Z
    .registers 2

    .line 83
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isLightColor(I)Z
    .registers 5

    .line 510
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe4cccccccccccdL  # 0.65

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static loadDexFile(Ljava/lang/String;)V
    .registers 5

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 223
    :try_start_b
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 225
    new-instance v2, Ldalvik/system/DexClassLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 229
    check-cast v1, Ldalvik/system/PathClassLoader;

    .line 230
    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 231
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->getDexElements(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 232
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getDexElements(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 233
    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "dexElements"

    invoke-static {p0, v1, v3, v0}, Lcom/s1243808733/util/Utils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method

.method public static logObject(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 15

    .line 452
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 454
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\nObject："

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\nObject#toString()："

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v4, "\n[Fields]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_13f

    const/4 v5, 0x0

    .line 461
    :goto_3f
    const-string v6, "error:"

    const-string v7, "="

    const-string v8, "\n"

    const-string v9, ""

    const/4 v10, 0x0

    if-eqz v4, :cond_af

    :try_start_4a
    array-length v11, v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_13f

    if-ge v5, v11, :cond_af

    .line 462
    aget-object v11, v4, v5

    .line 463
    :try_start_4f
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    if-lez v5, :cond_57

    .line 464
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    :cond_57
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_13f

    .line 468
    :try_start_61
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ac

    .line 471
    :cond_82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_98} :catch_99
    .catchall {:try_start_61 .. :try_end_98} :catchall_13f

    goto :goto_ac

    :catch_99
    move-exception v7

    .line 474
    :try_start_9a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 479
    :cond_af
    const-string v4, "\n\n[Methods]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_133

    .line 481
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v2, 0x0

    :goto_bb
    if-eqz p2, :cond_133

    .line 482
    array-length v4, p2
    :try_end_be
    .catchall {:try_start_9a .. :try_end_be} :catchall_13f

    if-ge v2, v4, :cond_133

    .line 483
    aget-object v4, p2, v2

    .line 484
    :try_start_c2
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 485
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_cd

    goto :goto_130

    .line 486
    :cond_cd
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v11, :cond_d6

    goto :goto_130

    :cond_d6
    if-lez v2, :cond_db

    .line 487
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_db
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e5
    .catchall {:try_start_c2 .. :try_end_e5} :catchall_13f

    .line 491
    :try_start_e5
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_106

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_130

    .line 494
    :cond_106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_11c} :catch_11d
    .catchall {:try_start_e5 .. :try_end_11c} :catchall_13f

    goto :goto_130

    :catch_11d
    move-exception v4

    .line 497
    :try_start_11e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_130
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 502
    :cond_133
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13e
    .catchall {:try_start_11e .. :try_end_13e} :catchall_13f

    goto :goto_147

    :catchall_13f
    move-exception p1

    .line 505
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_147
    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .registers 4

    .line 783
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 784
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 785
    const/high16 p0, 0x10000000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 783
    invoke-static {v0, p0}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static read2String(Ljava/io/Reader;)Ljava/lang/String;
    .registers 1

    .line 385
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 2

    .line 766
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAlertDialogMovementMethod(Landroid/app/AlertDialog;)V
    .registers 2

    .line 610
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_12

    .line 611
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_12
    return-void
.end method

.method public static setApp(Landroid/app/Application;)V
    .registers 1

    .line 537
    sput-object p0, Lcom/s1243808733/util/Utils;->app:Landroid/app/Application;

    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 268
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 269
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 270
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setMainActivity(Lcom/aide/ui/MainActivity;)V
    .registers 1

    .line 545
    sput-object p0, Lcom/s1243808733/util/Utils;->mainActivity:Lcom/aide/ui/MainActivity;

    return-void
.end method

.method public static setMessageIsSelectable(Landroid/app/AlertDialog;)V
    .registers 2

    .line 615
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;Z)V

    return-void
.end method

.method public static setMessageIsSelectable(Landroid/app/AlertDialog;Z)V
    .registers 3

    .line 618
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_e

    .line 620
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_e
    return-void
.end method

.method public static setOptionalIconsVisible(Landroid/view/Menu;Z)V
    .registers 5

    .line 647
    :try_start_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v0, "setOptionalIconsVisible"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_15

    :catchall_14
    move-exception p0

    :goto_15
    return-void
.end method

.method public static setSystemStatusBarLight(Landroid/app/Activity;Z)V
    .registers 4

    .line 561
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_23

    .line 562
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_1a

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_23

    .line 566
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_23
    :goto_23
    return-void
.end method

.method public static showExDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 794
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 796
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    move-object v0, v1

    goto :goto_1a

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/util/Utils$2;

    invoke-direct {v0, p2}, Lcom/s1243808733/util/Utils$2;-><init>(Ljava/lang/Throwable;)V

    .line 797
    const v2, 0x1040001

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 804
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 805
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "详情"

    goto :goto_3b

    :cond_39
    const-string v0, "Detail"

    :goto_3b
    new-instance v1, Lcom/s1243808733/util/Utils$1;

    invoke-direct {v1, p0, p2}, Lcom/s1243808733/util/Utils$1;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 827
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 828
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 829
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 3

    .line 790
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "发生错误"

    goto :goto_b

    :cond_9
    const-string v0, "Error"

    :goto_b
    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 867
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 868
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 869
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/s1243808733/util/Utils$3;

    invoke-direct {p1}, Lcom/s1243808733/util/Utils$3;-><init>()V

    .line 870
    const p2, 0x104000a

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 877
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 878
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 879
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static sizeFormat(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_b

    .line 321
    const-wide/16 v0, 0x1

    const-string v2, "B"

    goto :goto_24

    :cond_b
    const-wide/32 v2, 0x100000

    cmp-long v4, p0, v2

    if-gez v4, :cond_15

    .line 324
    const-string v2, "K"

    goto :goto_24

    :cond_15
    const-wide/32 v0, 0x40000000

    cmp-long v4, p0, v0

    if-gez v4, :cond_22

    .line 327
    const-string v0, "M"

    move-wide v5, v2

    move-object v2, v0

    move-wide v0, v5

    goto :goto_24

    .line 330
    :cond_22
    const-string v2, "G"

    .line 333
    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/s1243808733/util/Utils;->sizeFormat:Ljava/text/DecimalFormat;

    long-to-double p0, p0

    long-to-double v0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-virtual {v4, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 681
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p1

    .line 683
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 667
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p2, :cond_11

    .line 672
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_16

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_16

    .line 674
    :cond_11
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    :cond_16
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityTransition(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 2

    .line 689
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p1

    .line 693
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method public static subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 853
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_16
    move-exception p0

    goto :goto_3c

    :cond_18
    if-nez p1, :cond_26

    if-eqz p2, :cond_26

    .line 855
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    if-eqz p1, :cond_3f

    if-nez p2, :cond_3f

    .line 857
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_16

    return-object p0

    .line 860
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toLowerCaseFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1a

    .line 660
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 661
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 662
    const/4 v0, 0x0

    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, p0, v0

    .line 663
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1a

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 654
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 655
    const/4 v0, 0x0

    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, p0, v0

    .line 656
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static toast(Ljava/lang/Object;)Landroid/widget/Toast;
    .registers 2

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static toast(Ljava/lang/String;)Landroid/widget/Toast;
    .registers 3

    .line 712
    sget-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 713
    :cond_7
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    .line 714
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 715
    sget-object p0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static toast(Ljava/lang/Throwable;)Landroid/widget/Toast;
    .registers 2

    .line 704
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;
    .registers 2

    if-eqz p1, :cond_7

    .line 708
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_b
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static toastError(Ljava/lang/String;)Landroid/widget/Toast;
    .registers 2

    .line 725
    sget-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 726
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    .line 727
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 728
    sget-object p0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static toastError(Ljava/lang/Throwable;)Landroid/widget/Toast;
    .registers 1

    .line 721
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static ungzip([B)[B
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 129
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_66
    .catchall {:try_start_4 .. :try_end_9} :catchall_4d

    .line 130
    :try_start_9
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_49
    .catchall {:try_start_9 .. :try_end_e} :catchall_47

    .line 131
    :try_start_e
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_44
    .catchall {:try_start_e .. :try_end_13} :catchall_3e

    .line 132
    const/16 v3, 0x2000

    :try_start_15
    new-array v3, v3, [B

    .line 134
    :goto_17
    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    .line 135
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_17

    .line 137
    :cond_23
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_3c
    .catchall {:try_start_15 .. :try_end_27} :catchall_37

    .line 143
    :try_start_27
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2c

    .line 153
    :catch_2b
    move-exception v1

    .line 148
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_31

    .line 153
    :catch_30
    move-exception p0

    :goto_31
    :try_start_31
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move-exception p0

    :goto_36
    return-object v0

    :catchall_37
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_50

    :catch_3c
    move-exception v3

    goto :goto_6a

    :catchall_3e
    move-exception v2

    move-object v6, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, v6

    goto :goto_50

    :catch_44
    move-exception v2

    move-object v2, v0

    goto :goto_6a

    :catchall_47
    move-exception p0

    goto :goto_4f

    :catch_49
    move-exception p0

    move-object p0, v0

    move-object v2, p0

    goto :goto_6a

    :catchall_4d
    move-exception p0

    move-object v1, v0

    :goto_4f
    move-object v2, v0

    :goto_50
    if-eqz v1, :cond_57

    .line 143
    :try_start_52
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v1

    :cond_57
    :goto_57
    if-eqz v0, :cond_5e

    .line 148
    :try_start_59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    :cond_5e
    :goto_5e
    if-eqz v2, :cond_65

    .line 153
    :try_start_60
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v0

    .line 156
    :cond_65
    :goto_65
    throw p0

    :catch_66
    move-exception p0

    move-object p0, v0

    move-object v1, p0

    move-object v2, v1

    :goto_6a
    if-eqz v1, :cond_71

    .line 143
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-exception v1

    :cond_71
    :goto_71
    if-eqz p0, :cond_78

    .line 148
    :try_start_73
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    move-exception p0

    :cond_78
    :goto_78
    if-eqz v2, :cond_7f

    .line 153
    :try_start_7a
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-exception p0

    :cond_7f
    :goto_7f
    return-object v0
.end method

.method public static zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 347
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method
