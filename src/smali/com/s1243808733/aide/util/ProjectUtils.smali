.class public Lcom/s1243808733/aide/util/ProjectUtils;
.super Ljava/lang/Object;
.source "ProjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;
    }
.end annotation


# static fields
.field public static final MANIFEST_MIN_SDK_VERSION:Ljava/lang/String; = "android:minSdkVersion"

.field public static final MANIFEST_PACKAGE:Ljava/lang/String; = "package"

.field public static final MANIFEST_TARGET_SDK_VERSION:Ljava/lang/String; = "android:targetSdkVersion"

.field public static final MANIFEST_VERSION_CODE:Ljava/lang/String; = "android:versionCode"

.field public static final MANIFEST_VERSION_NAME:Ljava/lang/String; = "android:versionName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentProject()Ljava/io/File;
    .locals 1

    .line 107
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidManifest(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 238
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 512
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v2

    .line 513
    invoke-virtual {v2}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 515
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-object v0

    .line 516
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 517
    invoke-virtual {v3, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 518
    const-string v4, "manifest"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 519
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 521
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 522
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 523
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 524
    const-string v5, "application"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 525
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 526
    const-string v5, "android:icon"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 528
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 529
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 530
    const-string v5, "/"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 531
    const-string v6, ":"

    const-string v7, "/"

    invoke-static {v4, v6, v7}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 532
    const-string v7, "@"

    const-string v8, ":"

    invoke-static {v4, v7, v8}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 535
    :try_start_1
    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_2
    :try_start_2
    const-string v1, "@"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "res"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromRes(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ImageUtils;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static getAppIconFromRes(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    .line 559
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$3;

    invoke-direct {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 567
    array-length v0, v2

    if-lez v0, :cond_1

    .line 568
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 569
    new-instance v5, Lcom/s1243808733/aide/util/ProjectUtils$4;

    invoke-direct {v5, p2}, Lcom/s1243808733/aide/util/ProjectUtils$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 577
    array-length v5, v4

    if-lez v5, :cond_0

    .line 578
    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAppLabelFromManifest(Ljava/io/File;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 390
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    move-object v0, v1

    .line 451
    :cond_1
    :goto_1
    return-object v0

    .line 391
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 392
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 393
    const-string v3, "manifest"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v1

    goto :goto_1

    .line 395
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v3, v2

    .line 397
    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 398
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 399
    const-string v5, "application"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 400
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 401
    const-string v5, "android:label"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 403
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v5, "@android:string/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 405
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 408
    const/16 v6, 0x10

    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 411
    :cond_5
    :try_start_2
    const-string v3, "@string/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string v5, "res"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    new-instance v4, Ljava/io/File;

    const-string v5, "values/strings.xml"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 417
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    invoke-static {v0, v5}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 421
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$1;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ProjectUtils$1;-><init>()V

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 431
    array-length v0, v6

    if-lez v0, :cond_7

    .line 433
    array-length v7, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    :goto_3
    if-ge v0, v7, :cond_7

    aget-object v3, v6, v0

    .line 434
    :try_start_3
    new-instance v8, Lcom/s1243808733/aide/util/ProjectUtils$2;

    invoke-direct {v8}, Lcom/s1243808733/aide/util/ProjectUtils$2;-><init>()V

    invoke-virtual {v3, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 441
    array-length v3, v8

    if-lez v3, :cond_6

    .line 442
    array-length v9, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    :goto_4
    if-ge v3, v9, :cond_6

    aget-object v10, v8, v3

    .line 443
    :try_start_4
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 451
    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-static {v0, v5}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static getAppLabelFromProject(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 385
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 469
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p0, v4

    .line 471
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 498
    :cond_0
    :goto_1
    return-object v0

    .line 472
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 473
    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 474
    const-string v2, "resources"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 475
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v2, v3

    .line 477
    :goto_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 478
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 479
    const-string v7, "string"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 480
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 481
    const-string v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_3

    .line 498
    :cond_2
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 483
    :cond_3
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 484
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 485
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 486
    const-string v7, "@android:string/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 487
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v7

    .line 488
    invoke-virtual {v7}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 490
    const/16 v8, 0x10

    :try_start_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "string"

    const-string v9, "android"

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 493
    :cond_4
    :try_start_2
    const-string v2, "@string/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 494
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :cond_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public static getAppProjects()Ljava/io/File;
    .locals 3

    .line 39
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "project_home"

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v0

    .line 42
    :cond_1
    :goto_0
    return-object v0

    .line 41
    :cond_2
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAssets(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 195
    const-string v0, "assets"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAssets(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 199
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAssets(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBin(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "bin"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBuild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "bin"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "bin"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 142
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesDebug(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 147
    const-string v0, "classesdebug"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesDebug(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 151
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinClassesDebug(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesRelease(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 156
    const-string v0, "classesrelease"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesRelease(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 160
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinClassesRelease(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinInjectedManifest(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 165
    const-string v0, "injected/AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinJarDex(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 170
    const-string v0, "jardex"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinJarDex(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 174
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinJarDex(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinResourcesAp(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 179
    const-string v0, "resources.ap_"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBuild(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 121
    const-string v0, "build"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBuild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 125
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBuild(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentProject()Ljava/io/File;
    .locals 1

    .line 111
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAppProjects()Ljava/io/File;
    .locals 2

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "AideProjects"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLibs(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 185
    const-string v0, "libs"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLibs(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 189
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getLibs(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMain(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 272
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "src/main"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 276
    :cond_0
    :goto_0
    return-object p0

    .line 274
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 283
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    .line 354
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 355
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "utf-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 356
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 357
    const-string v0, "manifest"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    move v0, v1

    .line 359
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 360
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_2
    return-object v0

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 375
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 365
    :cond_4
    if-eqz p1, :cond_2

    .line 367
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 368
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 369
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 370
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 340
    const-string v1, "package"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    const-string v1, "android:versionCode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const-string v1, "android:versionName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_1
    :goto_0
    return-object v0

    .line 344
    :cond_2
    const-string v1, "android:minSdkVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 345
    const-string v1, "android:targetSdkVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    :cond_3
    const-string v0, "uses-sdk"

    invoke-static {p0, v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMinSdkVersionFromGradle(Ljava/io/File;I)I
    .locals 1

    .line 79
    :try_start_0
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getMinSdkVersion(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    :goto_0
    return p1

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public static getMinSdkVersionFromProject(Ljava/io/File;I)I
    .locals 1

    .line 73
    const-string v0, "build.gradle"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 74
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getMinSdkVersionFromGradle(Ljava/io/File;I)I

    move-result v0

    return v0
.end method

.method public static getOldDefaultAppProjects()Ljava/io/File;
    .locals 2

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "AppProjects"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 250
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinInjectedManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageNameFromManifest(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 242
    const-string v0, "package"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProguardFile(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 262
    const-string v0, "proguard-rules.pro"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isExists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 264
    :cond_1
    const-string v0, "proguard-project.txt"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 115
    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRes(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 228
    const-string v0, "res"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRes(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 232
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSrcJava(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 205
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "java"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "src"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const-string v0, "src"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSrcJava(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 216
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJava(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSrcJavaPkg(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 220
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJava(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const-string v2, "."

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTargetSdkVersionFromGradle(Ljava/io/File;I)I
    .locals 1

    .line 92
    :try_start_0
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getTargetSdkVersion(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    :goto_0
    return p1

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public static getTargetSdkVersionFromProject(Ljava/io/File;I)I
    .locals 1

    .line 86
    const-string v0, "build.gradle"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 87
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getTargetSdkVersionFromGradle(Ljava/io/File;I)I

    move-result v0

    return v0
.end method

.method public static getVersionName(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 255
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getVersionNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinInjectedManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getVersionNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVersionNameFromManifest(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 246
    const-string v0, "android:versionName"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroidProject(Ljava/io/File;)Z
    .locals 1

    .line 289
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEclipseProject(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 299
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "src"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isExists(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 336
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGradleProject(Ljava/io/File;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 293
    new-instance v0, Ljava/io/File;

    const-string v1, "build.gradle"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "src"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJavaProject(Ljava/io/File;)Z
    .locals 3

    .line 305
    const-string v0, ".classpath"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 306
    const-string v1, "src"

    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 308
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isAndroidProject(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 317
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
