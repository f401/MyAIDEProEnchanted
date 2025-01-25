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
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentProject()Ljava/io/File;
    .registers 1

    .line 107
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidManifest(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 238
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 512
    const-string v0, ":"

    const-string v1, "@"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v3

    .line 513
    invoke-virtual {v3}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 515
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_d8

    .line 516
    :cond_1b
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 517
    invoke-virtual {v4, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 518
    const-string v5, "manifest"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 519
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-nez v5, :cond_34

    return-object v2

    .line 520
    :cond_34
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 521
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v6, 0x0

    .line 522
    :goto_3e
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_d8

    .line 523
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 524
    const-string v8, "application"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 525
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 526
    const-string v8, "android:icon"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_61

    return-object v2

    .line 528
    :cond_61
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 529
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_69
    .catchall {:try_start_5 .. :try_end_69} :catchall_d7

    const-string v9, "/"

    if-eqz v8, :cond_90

    :try_start_6d
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 530
    invoke-static {v7, v9, v2}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 531
    invoke-static {v7, v0, v9}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 532
    invoke-static {v7, v1, v0}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_d7

    .line 535
    :try_start_85
    invoke-virtual {v3, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_8d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_85 .. :try_end_8d} :catch_8e
    .catchall {:try_start_85 .. :try_end_8d} :catchall_d7

    return-object p0

    .line 546
    :catch_8e
    move-exception v7

    goto :goto_d3

    .line 538
    :cond_90
    :try_start_90
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 541
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    const-string v1, "res"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    const/4 p0, 0x1

    invoke-virtual {v7, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 545
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromRes(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c4

    goto :goto_d2

    .line 546
    :cond_c4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_d1
    .catchall {:try_start_90 .. :try_end_d1} :catchall_d7

    move-object v2, v0

    :cond_d2
    :goto_d2
    return-object v2

    :cond_d3
    :goto_d3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3e

    :catchall_d7
    move-exception p0

    :cond_d8
    :goto_d8
    return-object v2
.end method

.method public static getAppIconFromRes(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 559
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$3;

    invoke-direct {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 567
    array-length p1, p0

    if-lez p1, :cond_2d

    .line 568
    array-length p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p1, :cond_2d

    aget-object v2, p0, v1

    .line 569
    new-instance v3, Lcom/s1243808733/aide/util/ProjectUtils$4;

    invoke-direct {v3, p2}, Lcom/s1243808733/aide/util/ProjectUtils$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 577
    array-length v3, v2

    if-lez v3, :cond_2a

    .line 578
    aget-object p0, v2, v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppLabelFromManifest(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    .line 390
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f8

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_f8

    .line 391
    :cond_f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 392
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 393
    const-string v2, "manifest"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 394
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_28

    return-object v0

    .line 395
    :cond_28
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 396
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    .line 397
    :goto_32
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_f8

    .line 398
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 399
    const-string v5, "application"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 400
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 401
    const-string v5, "android:label"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_55

    return-object v0

    .line 403
    :cond_55
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 404
    const-string v5, "@android:string/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 405
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;

    move-result-object v5
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_f7

    .line 408
    const/16 v6, 0x10

    :try_start_6b
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_7b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6b .. :try_end_7b} :catch_7c
    .catchall {:try_start_6b .. :try_end_7b} :catchall_f7

    return-object p0

    .line 451
    :catch_7c
    move-exception v4

    goto/16 :goto_f3

    .line 411
    :cond_7f
    :try_start_7f
    const-string v1, "@string/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 412
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    const-string v3, "res"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    new-instance p0, Ljava/io/File;

    const-string v3, "values/strings.xml"

    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 417
    new-array v4, v5, [Ljava/io/File;

    aput-object p0, v4, v2

    invoke-static {v4, v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f1

    .line 421
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v4, Lcom/s1243808733/aide/util/ProjectUtils$1;

    invoke-direct {v4}, Lcom/s1243808733/aide/util/ProjectUtils$1;-><init>()V

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_e5

    .line 431
    array-length v4, v1

    if-lez v4, :cond_e5

    .line 433
    array-length v4, v1
    :try_end_c3
    .catchall {:try_start_7f .. :try_end_c3} :catchall_f7

    const/4 v5, 0x0

    :goto_c4
    if-ge v5, v4, :cond_e5

    aget-object v6, v1, v5

    .line 434
    :try_start_c8
    new-instance v7, Lcom/s1243808733/aide/util/ProjectUtils$2;

    invoke-direct {v7}, Lcom/s1243808733/aide/util/ProjectUtils$2;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_e2

    .line 441
    array-length v7, v6

    if-lez v7, :cond_e2

    .line 442
    array-length v7, v6
    :try_end_d7
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_f7

    const/4 v8, 0x0

    :goto_d8
    if-ge v8, v7, :cond_e2

    aget-object v9, v6, v8

    .line 443
    :try_start_dc
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_d8

    :cond_e2
    add-int/lit8 v5, v5, 0x1

    goto :goto_c4

    .line 451
    :cond_e5
    new-array v1, v2, [Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    invoke-static {p0, v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f1
    .catchall {:try_start_dc .. :try_end_f1} :catchall_f7

    :cond_f1
    return-object p0

    :cond_f2
    return-object v4

    :cond_f3
    :goto_f3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_32

    :catchall_f7
    move-exception p0

    :cond_f8
    :goto_f8
    return-object v0
.end method

.method public static getAppLabelFromProject(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 385
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 469
    const-string v0, "string"

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x0

    if-ge v3, v1, :cond_b6

    aget-object v5, p0, v3

    .line 471
    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_18

    goto/16 :goto_b0

    .line 472
    :cond_18
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 473
    invoke-virtual {v6, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 474
    const-string v6, "resources"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 475
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-nez v6, :cond_31

    return-object v4

    .line 476
    :cond_31
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    .line 477
    :goto_3a
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_b2

    .line 478
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 479
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 480
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 481
    const-string v9, "name"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_5b

    goto :goto_ad

    .line 483
    :cond_5b
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 484
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 485
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 486
    const-string v8, "@android:string/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 487
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v8

    .line 488
    invoke-virtual {v8}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;

    move-result-object v8
    :try_end_79
    .catchall {:try_start_a .. :try_end_79} :catchall_b1

    .line 490
    const/16 v9, 0x10

    :try_start_7b
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "android"

    invoke-virtual {v8, v7, v0, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_89
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_89} :catch_8a
    .catchall {:try_start_7b .. :try_end_89} :catchall_b1

    return-object p0

    .line 498
    :catch_8a
    move-exception v7

    goto :goto_ad

    .line 493
    :cond_8c
    :try_start_8c
    const-string v5, "@string/"

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 494
    const-string v5, "/"

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 495
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    return-object v4

    .line 498
    :cond_a7
    invoke-static {p0, v5}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_ab
    .catchall {:try_start_8c .. :try_end_ab} :catchall_b1

    return-object p0

    :cond_ac
    return-object v7

    :cond_ad
    :goto_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_b0
    :goto_b0
    return-object v4

    :catchall_b1
    move-exception v4

    :cond_b2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_b6
    return-object v4
.end method

.method public static getAppProjects()Ljava/io/File;
    .registers 3

    .line 39
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "project_home"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 40
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_28

    .line 41
    :cond_1d
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_27

    .line 42
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v0

    :cond_27
    return-object v0

    .line 40
    :cond_28
    :goto_28
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAssets(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 195
    const-string v0, "assets"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getAssets(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 199
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAssets(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBin(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 131
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    const-string v1, "bin"

    if-eqz v0, :cond_d

    .line 132
    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->getBuild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 133
    :cond_d
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 134
    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 135
    :cond_18
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 136
    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 142
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinClassesDebug(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 147
    const-string v0, "classesdebug"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinClassesDebug(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 151
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinClassesDebug(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinClassesRelease(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 156
    const-string v0, "classesrelease"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinClassesRelease(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 160
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinClassesRelease(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinInjectedManifest(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 165
    const-string v0, "injected/AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinJarDex(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 170
    const-string v0, "jardex"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinJarDex(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 174
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinJarDex(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBinResourcesAp(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 179
    const-string v0, "resources.ap_"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBuild(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 121
    const-string v0, "build"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBuild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 125
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBuild(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentProject()Ljava/io/File;
    .registers 1

    .line 111
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAppProjects()Ljava/io/File;
    .registers 2

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "AideProjects"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLibs(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 185
    const-string v0, "libs"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getLibs(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 189
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getLibs(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getMain(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 272
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    const-string v0, "src/main"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 274
    :cond_d
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object p0

    .line 276
    :cond_14
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 283
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 354
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-interface {v0, v1, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 356
    :goto_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_70

    .line 357
    const-string p0, "manifest"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_44

    if-nez p1, :cond_40

    .line 359
    :goto_28
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p0

    if-ge v1, p0, :cond_68

    .line 360
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 361
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 365
    :cond_40
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_68

    :cond_44
    if-eqz p1, :cond_68

    .line 367
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    .line 368
    :goto_50
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p0

    if-ge v1, p0, :cond_68

    .line 369
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 370
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 375
    :cond_68
    :goto_68
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_6c

    goto :goto_12

    :catchall_6c
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_70
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 340
    const-string v0, "package"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    .line 341
    const-string v0, "android:versionCode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 342
    const-string v0, "android:versionName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_33

    .line 344
    :cond_1a
    const-string v0, "android:minSdkVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 345
    const-string v0, "android:targetSdkVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    return-object v1

    .line 346
    :cond_2c
    :goto_2c
    const-string v0, "uses-sdk"

    invoke-static {p0, v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :cond_33
    :goto_33
    invoke-static {p0, v1, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinSdkVersionFromGradle(Ljava/io/File;I)I
    .registers 3

    .line 79
    :try_start_0
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getMinSdkVersion(I)I

    move-result p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return p0

    :catchall_a
    move-exception p0

    return p1
.end method

.method public static getMinSdkVersionFromProject(Ljava/io/File;I)I
    .registers 3

    .line 73
    const-string v0, "build.gradle"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 74
    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getMinSdkVersionFromGradle(Ljava/io/File;I)I

    move-result p0

    return p0
.end method

.method public static getOldDefaultAppProjects()Ljava/io/File;
    .registers 2

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "AppProjects"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 250
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 251
    :cond_b
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinInjectedManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public static getPackageNameFromManifest(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 242
    const-string v0, "package"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProguardFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 262
    const-string v0, "proguard-rules.pro"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isExists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 264
    :cond_d
    const-string v0, "proguard-project.txt"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 265
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 115
    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getRes(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 228
    const-string v0, "res"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getRes(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 232
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getSrcJava(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 205
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 206
    const-string v0, "java"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 207
    :cond_d
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    const-string v1, "src"

    if-eqz v0, :cond_1a

    .line 208
    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 209
    :cond_1a
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 210
    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSrcJava(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 216
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJava(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getSrcJavaPkg(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 220
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_8
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJava(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getTargetSdkVersionFromGradle(Ljava/io/File;I)I
    .registers 3

    .line 92
    :try_start_0
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getTargetSdkVersion(I)I

    move-result p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return p0

    :catchall_a
    move-exception p0

    return p1
.end method

.method public static getTargetSdkVersionFromProject(Ljava/io/File;I)I
    .registers 3

    .line 86
    const-string v0, "build.gradle"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 87
    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getTargetSdkVersionFromGradle(Ljava/io/File;I)I

    move-result p0

    return p0
.end method

.method public static getVersionName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 255
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getVersionNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 256
    :cond_b
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinInjectedManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getVersionNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public static getVersionNameFromManifest(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 246
    const-string v0, "android:versionName"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAndroidProject(Ljava/io/File;)Z
    .registers 2

    .line 289
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isEclipseProject(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_1d

    .line 299
    nop

    .line 300
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 301
    const-string v0, "src"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method private static isExists(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 336
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isGradleProject(Ljava/io/File;)Z
    .registers 3

    if-eqz p0, :cond_1e

    .line 293
    new-instance v0, Ljava/io/File;

    const-string v1, "build.gradle"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/io/File;

    const-string v1, "src"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static isJavaProject(Ljava/io/File;)Z
    .registers 3

    .line 305
    const-string v0, ".classpath"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 306
    const-string v1, "src"

    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz p0, :cond_28

    .line 308
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isAndroidProject(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_28

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method private static newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 328
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    return-object v0

    :catchall_10
    move-exception p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private static newFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 317
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-object v0

    :catchall_6
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method
