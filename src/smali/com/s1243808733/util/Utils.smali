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
    .locals 3

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
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDirectoryWritable(Ljava/lang/String;)Z
    .locals 2

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

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

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyToClipboard(Ljava/lang/CharSequence;)V
    .locals 1

    .line 841
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static copyToClipboard(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 845
    invoke-static {p0}, Lcom/blankj/utilcode/util/ClipboardUtils;->copyText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 847
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    :cond_0
    return-void

    :cond_1
    const-string v0, "Clipboard to copied"

    goto :goto_0
.end method

.method public static dp2px(F)I
    .locals 2

    .line 778
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public static fullScrollToBottom(Landroid/app/AlertDialog;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 439
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "scrollView"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 441
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->fullScrollToBottom(Landroid/widget/ScrollView;)V

    :cond_0
    return-void
.end method

.method public static fullScrollToBottom(Landroid/widget/ScrollView;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 446
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method

.method public static getApkSignaturesHashCode(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 196
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 197
    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 198
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 199
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 198
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    .line 199
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1

    .line 541
    sget-object v0, Lcom/s1243808733/util/Utils;->app:Landroid/app/Application;

    return-object v0
.end method

.method public static getArch()Ljava/lang/String;
    .locals 1

    .line 431
    sget-object v0, Lcom/s1243808733/util/Utils;->sArch:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 432
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getArch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/util/Utils;->sArch:Ljava/lang/String;

    .line 434
    :cond_0
    sget-object v0, Lcom/s1243808733/util/Utils;->sArch:Ljava/lang/String;

    return-object v0
.end method

.method public static getArch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 403
    const/16 v1, 0x61

    if-eq v0, v1, :cond_6

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_3

    .line 420
    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 415
    :cond_1
    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mips64"

    goto :goto_0

    .line 416
    :cond_2
    const-string v0, "mips"

    goto :goto_0

    .line 411
    :cond_3
    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    :cond_4
    const-string v0, "x86_64"

    goto :goto_0

    .line 413
    :cond_5
    const-string v0, "x86"

    goto :goto_0

    .line 405
    :cond_6
    const-string v0, "amd64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 406
    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "arm64"

    goto :goto_0

    .line 408
    :cond_7
    const-string v0, "arm"

    goto :goto_0
.end method

.method public static getAssetsDataFile()Ljava/lang/String;
    .locals 1

    .line 751
    sget-object v0, Lcom/s1243808733/util/Utils;->ASSETS_DATA_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->getAssetsDataFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1

    .line 596
    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorBackground(Landroid/content/Context;)I
    .locals 1

    .line 602
    const v0, 0x1010031

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorFromResources(I)I
    .locals 1

    .line 641
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDataFile()Ljava/io/File;
    .locals 2

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
    .locals 2

    .line 359
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getDataFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDexElements(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
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

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
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

    move-result-object v0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNamePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 624
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 626
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileNameSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 632
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFiles(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 355
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFilesDir()Ljava/io/File;
    .locals 1

    .line 351
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionDir()Ljava/io/File;
    .locals 3

    .line 308
    sget-object v0, Lcom/s1243808733/util/Utils;->HOT_FUNCTION:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "functions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/util/Utils;->HOT_FUNCTION:Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method public static getMainActivity()Lcom/aide/ui/MainActivity;
    .locals 1

    .line 549
    sget-object v0, Lcom/s1243808733/util/Utils;->mainActivity:Lcom/aide/ui/MainActivity;

    return-object v0
.end method

.method private static getPathList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    move-result-object v0

    return-object v0
.end method

.method public static getRootView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 554
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSdConfigFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 745
    new-instance v0, Ljava/io/File;

    const-string v1, "config"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getSdDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSdDataFile()Ljava/io/File;
    .locals 1

    .line 732
    sget-object v0, Lcom/s1243808733/util/Utils;->SDCARD_DATA_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getSdDataFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 736
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSdDataFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSdDataLocationFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 741
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSdDataFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/aide/util/ResUtils;->getLocaleFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectableItemBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v2, 0x0

    .line 337
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030e

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 339
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 341
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    throw v1
.end method

.method public static getSp()Landroid/content/SharedPreferences;
    .locals 1

    .line 770
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 774
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

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

    move-result-object v0

    return-object v0
.end method

.method public static getTextColorHint(Landroid/content/Context;)I
    .locals 1

    .line 587
    const v0, 0x101009a

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getTextColorSecondary(Landroid/content/Context;)I
    .locals 1

    .line 591
    const v0, 0x1010038

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getTextColorTertiary(Landroid/content/Context;)I
    .locals 1

    .line 582
    const v0, 0x1010212

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 3

    const/4 v1, 0x0

    .line 572
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 574
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 576
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 577
    throw v1
.end method

.method public static getUpdateVersionCode()J
    .locals 2

    .line 380
    invoke-static {}, Lcom/s1243808733/util/Utils;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersionCode()J
    .locals 3

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

    if-lt v1, v2, :cond_0

    .line 371
    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    .line 373
    :goto_0
    return-wide v0

    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getViewBlurForS(Landroid/view/View;Ljava/lang/Integer;F)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 90
    const-string v2, "getViewRootImpl"

    invoke-virtual {v0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "viewRootImpl == null"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    move-object v0, v1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v2, "createBackgroundBlurDrawable"

    invoke-virtual {v0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    .line 98
    const-string v3, "setBlurRadius"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 99
    const-string v3, "setCornerRadius"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    if-eqz p1, :cond_0

    .line 100
    const-string v3, "setColor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static gzip([B)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 187
    :goto_0
    return-object v0

    .line 176
    :cond_0
    :try_start_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 187
    :try_start_1
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static varargs installFunctions([Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 297
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 298
    invoke-static {v3}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/blankj/utilcode/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v4

    const-string v5, "addDexPath"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 302
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "Failure"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static isCN()Z
    .locals 2

    .line 523
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 528
    :goto_0
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

    .line 526
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCN(Ljava/util/Locale;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    const-string v0, "zh"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCnFast()Z
    .locals 1

    .line 533
    sget-object v0, Lcom/s1243808733/util/Utils;->FAST_ISCN:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static isFileInArchive(Ljava/io/File;)Z
    .locals 1

    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 83
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLightColor(I)Z
    .locals 4

    .line 510
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadDexFile(Ljava/lang/String;)V
    .locals 5

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 225
    new-instance v2, Ldalvik/system/DexClassLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 229
    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 230
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getDexElements(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 232
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->getDexElements(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 233
    invoke-static {v3, v1}, Lcom/s1243808733/util/Utils;->combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dexElements"

    invoke-static {v0, v3, v4, v1}, Lcom/s1243808733/util/Utils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static logObject(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 452
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 454
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nObject\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nObject#toString()\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v0, "\n[Fields]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    move v1, v2

    .line 461
    :goto_0
    if-eqz v5, :cond_2

    array-length v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v0, :cond_2

    .line 462
    aget-object v0, v5, v1

    .line 463
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    if-lez v1, :cond_0

    .line 464
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 471
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 474
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 502
    :catchall_0
    move-exception v0

    .line 505
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 479
    :cond_2
    :try_start_4
    const-string v0, "\n\n[Methods]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_7

    .line 481
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    move v1, v2

    :goto_3
    if-eqz v3, :cond_7

    .line 482
    array-length v0, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v1, v0, :cond_7

    .line 483
    aget-object v0, v3, v1

    .line 484
    const/4 v5, 0x1

    :try_start_5
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 485
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 497
    :cond_3
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 486
    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_3

    if-lez v1, :cond_5

    .line 487
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_5
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 491
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 494
    :catch_1
    move-exception v0

    .line 497
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 494
    :cond_6
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 502
    :cond_7
    const/4 v0, 0x1

    :try_start_9
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 4

    .line 783
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 784
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 785
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 783
    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static read2String(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1

    .line 385
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 766
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAlertDialogMovementMethod(Landroid/app/AlertDialog;)V
    .locals 2

    .line 610
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public static setApp(Landroid/app/Application;)V
    .locals 0

    .line 537
    sput-object p0, Lcom/s1243808733/util/Utils;->app:Landroid/app/Application;

    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
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

    move-result-object v0

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 270
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setMainActivity(Lcom/aide/ui/MainActivity;)V
    .locals 0

    .line 545
    sput-object p0, Lcom/s1243808733/util/Utils;->mainActivity:Lcom/aide/ui/MainActivity;

    return-void
.end method

.method public static setMessageIsSelectable(Landroid/app/AlertDialog;)V
    .locals 1

    .line 615
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;Z)V

    return-void
.end method

.method public static setMessageIsSelectable(Landroid/app/AlertDialog;Z)V
    .locals 1

    .line 618
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_0
    return-void
.end method

.method public static setOptionalIconsVisible(Landroid/view/Menu;Z)V
    .locals 5

    .line 647
    :try_start_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "setOptionalIconsVisible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public static setSystemStatusBarLight(Landroid/app/Activity;Z)V
    .locals 2

    .line 561
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 562
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 566
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static showExDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v1, 0x0

    .line 794
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 796
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/Utils$2;

    invoke-direct {v2, p2}, Lcom/s1243808733/util/Utils$2;-><init>(Ljava/lang/Throwable;)V

    .line 797
    const v3, 0x1040001

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 804
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 805
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8be6\u60c5"

    :goto_1
    new-instance v2, Lcom/s1243808733/util/Utils$1;

    invoke-direct {v2, p0, p2}, Lcom/s1243808733/util/Utils$1;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 829
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void

    .line 796
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 805
    :cond_1
    const-string v0, "Detail"

    goto :goto_1
.end method

.method public static showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 790
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u53d1\u751f\u9519\u8bef"

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v0, "Error"

    goto :goto_0
.end method

.method public static showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 867
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 868
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 869
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/Utils$3;

    invoke-direct {v1}, Lcom/s1243808733/util/Utils$3;-><init>()V

    .line 870
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 879
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static sizeFormat(J)Ljava/lang/String;
    .locals 8

    const-wide/32 v6, 0x40000000

    const-wide/32 v4, 0x100000

    const-wide/16 v2, 0x400

    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    .line 321
    const-wide/16 v2, 0x1

    const-string v0, "B"

    .line 333
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/s1243808733/util/Utils;->sizeFormat:Ljava/text/DecimalFormat;

    long-to-double v6, p0

    long-to-double v2, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    .line 324
    const-string v0, "K"

    goto :goto_0

    :cond_1
    cmp-long v0, p0, v6

    if-gez v0, :cond_2

    .line 327
    const-string v0, "M"

    move-wide v2, v4

    goto :goto_0

    .line 330
    :cond_2
    const-string v0, "G"

    move-wide v2, v6

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 681
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :goto_0
    return-void

    .line 681
    :catchall_0
    move-exception v0

    .line 683
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 667
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p2, :cond_0

    .line 672
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 674
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    :cond_1
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityTransition(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    .line 689
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :goto_0
    return-void

    .line 689
    :catchall_0
    move-exception v0

    .line 693
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 853
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 860
    :goto_0
    return-object v0

    .line 853
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 857
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 860
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toLowerCaseFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 660
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-object p0

    .line 661
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 662
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 663
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-object p0

    .line 654
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 655
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 656
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toast(Ljava/lang/Object;)Landroid/widget/Toast;
    .locals 2

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static toast(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 2

    .line 712
    sget-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 713
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    .line 714
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 715
    sget-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static toast(Ljava/lang/Throwable;)Landroid/widget/Toast;
    .locals 1

    .line 704
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/storage/emulated/0/aide_err.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static toastError(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 1

    .line 725
    sget-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 726
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    .line 727
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 728
    sget-object v0, Lcom/s1243808733/util/Utils;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static toastError(Ljava/lang/Throwable;)Landroid/widget/Toast;
    .locals 1

    .line 721
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toastError(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static ungzip([B)[B
    .locals 7

    const/4 v2, 0x0

    if-nez p0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v2

    .line 129
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 131
    :try_start_2
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    const/16 v0, 0x2000

    :try_start_3
    new-array v0, v0, [B

    .line 134
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 135
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 156
    :goto_2
    if-eqz v1, :cond_2

    .line 143
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 148
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    :cond_3
    :goto_4
    if-eqz v4, :cond_0

    .line 153
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 137
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v2

    .line 143
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 148
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 153
    :goto_6
    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_7
    if-eqz v1, :cond_5

    .line 143
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 148
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 153
    :try_start_d
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 156
    :cond_7
    :goto_a
    throw v0

    .line 153
    :catch_3
    move-exception v0

    move-object v0, v3

    move-object v4, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v2

    move-object v4, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_b
    move-object v4, v2

    move-object v3, v2

    goto :goto_7

    .line 156
    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    move-object v4, v2

    goto :goto_2

    .line 153
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_6

    .line 143
    :catch_8
    move-exception v1

    goto :goto_8

    .line 148
    :catch_9
    move-exception v1

    goto :goto_9

    .line 153
    :catch_a
    move-exception v1

    goto :goto_a

    .line 143
    :catch_b
    move-exception v1

    goto :goto_3

    .line 148
    :catch_c
    move-exception v0

    goto :goto_4

    .line 153
    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_7
.end method

.method public static zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method
