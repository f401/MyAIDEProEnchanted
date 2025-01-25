.class Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "FileBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static iconMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final file:Ljava/io/File;

.field final img:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 445
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->iconMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/io/File;)V
    .registers 3

    .line 447
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 448
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->img:Landroid/widget/ImageView;

    .line 449
    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 474
    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/AppUtils;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p1

    :catchall_5
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private getProjectAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 536
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    const-string v1, "AndroidManifest.xml"

    if-eqz v0, :cond_16

    .line 537
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 538
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 542
    :cond_16
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 544
    :try_start_1f
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "java_project.png"

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ImageUtils;->getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    move-exception v0

    return-object v2

    .line 552
    :cond_3d
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5e

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    const-string v4, "apktool.json"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 555
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 560
    :cond_5e
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    const-string v3, "settings.gradle"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 567
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b7

    .line 568
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 570
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "include"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 571
    const-string v4, "(?<=\':).*(?=\')|(?<=\":).*(?=\")"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 572
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 573
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 574
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 576
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_b7
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    new-instance v3, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$1;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$1;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 595
    array-length v3, v0

    if-lez v3, :cond_ce

    .line 596
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 600
    :cond_ce
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 601
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 604
    invoke-static {v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d2

    .line 605
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 606
    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_102
    return-object v2
.end method

.method public static setIcon(Landroid/widget/ImageView;Ljava/io/File;)V
    .registers 6

    .line 453
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 455
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 456
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".aide"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_4d

    .line 462
    :cond_2f
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->iconMaps:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_49

    .line 464
    new-instance v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;-><init>(Landroid/widget/ImageView;Ljava/io/File;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4c

    .line 467
    :cond_49
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4c
    return-void

    .line 459
    :cond_4d
    :goto_4d
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 490
    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_31

    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_31

    .line 491
    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_31

    return-object p1

    .line 495
    :cond_31
    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 496
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 497
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 498
    :cond_51
    const-string v0, "/sdcard"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 499
    const-string v0, "/mnt/sdcard"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    :cond_69
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 504
    :goto_6b
    sget-object v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->SDCARD_DIR:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_99

    .line 505
    sget-object v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->SDCARD_DIR:[[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 506
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_96

    aget-object v2, v1, p1

    iget-object v3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    const/4 v2, 0x1

    .line 507
    :goto_87
    array-length v3, v1

    if-ge v2, v3, :cond_96

    .line 508
    aget-object v3, v1, v2

    .line 509
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_93

    return-object v3

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 521
    :cond_99
    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 522
    invoke-direct {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->getProjectAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_ad

    return-object p1

    .line 527
    :cond_a8
    iget-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    :cond_ad
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 442
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 619
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_42

    .line 621
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 622
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_42

    .line 624
    sget-object v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->iconMaps:Ljava/util/Map;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 627
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 628
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 629
    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_42
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 442
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 483
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 484
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
