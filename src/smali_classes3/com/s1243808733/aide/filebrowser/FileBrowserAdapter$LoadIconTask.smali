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
        "Landroid/os/AsyncTask",
        "<",
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
            "Ljava/util/Map",
            "<",
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
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->iconMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/io/File;)V
    .registers 3

    .line 434
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->img:Landroid/widget/ImageView;

    .line 436
    iput-object p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 460
    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/AppUtils;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    .line 460
    :catch_0
    move-exception v0

    .line 463
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getProjectAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    const-string v2, "AndroidManifest.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 522
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "java_project.png"

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ImageUtils;->getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 530
    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 535
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    const-string v3, "AndroidManifest.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    const-string v4, "apktool.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    const-string v3, "settings.gradle"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2List(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 551
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 560
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 571
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    new-instance v3, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$100000002;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask$100000002;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 578
    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    .line 579
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v1, v2

    .line 583
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 590
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 597
    :cond_7
    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 551
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 553
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "include"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 554
    const-string v4, "(?<=\':).*(?=\')|(?<=\":).*(?=\")"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 555
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 557
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-static {v1}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 559
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 583
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 584
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 587
    invoke-static {v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 589
    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static setIcon(Landroid/widget/ImageView;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 442
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->iconMaps:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 450
    if-nez v0, :cond_2

    .line 451
    new-instance v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;-><init>(Landroid/widget/ImageView;Ljava/io/File;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 475
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 476
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-object v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "/sdcard"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/mnt/sdcard"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v2, v3

    .line 489
    :goto_1
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->SDCARD_DIR:[[Ljava/lang/String;

    array-length v0, v0

    if-lt v2, v0, :cond_6

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 507
    invoke-direct {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->getProjectAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    if-nez v0, :cond_0

    .line 515
    :cond_5
    :goto_2
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 490
    :cond_6
    sget-object v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->SDCARD_DIR:[[Ljava/lang/String;

    aget-object v4, v0, v2

    .line 491
    array-length v0, v4

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    aget-object v0, v4, v3

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    const/4 v0, 0x1

    move v1, v0

    :goto_3
    array-length v0, v4

    if-lt v1, v0, :cond_8

    .line 489
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 493
    :cond_8
    aget-object v0, v4, v1

    .line 494
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 495
    if-nez v0, :cond_0

    .line 492
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 511
    :cond_9
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 602
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    invoke-static {}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 606
    if-eqz v0, :cond_0

    .line 607
    sget-object v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->iconMaps:Ljava/util/Map;

    iget-object v2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 610
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/16 v1, 0x64

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    return-void
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 468
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 469
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$LoadIconTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
