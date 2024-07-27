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

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentProject()Ljava/io/File;
    .registers 1

    .line 106
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidManifest(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 237
    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAppIconFromManifest(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 511
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 514
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 554
    :goto_0
    return-object v0

    .line 515
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 516
    invoke-virtual {v2, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 517
    const-string v4, "manifest"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 518
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 519
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 520
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v2, v0

    .line 521
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v2, v0, :cond_3

    :goto_2
    move-object v0, v1

    .line 554
    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 522
    :cond_3
    :try_start_1
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 523
    const-string v5, "application"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 524
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 525
    const-string v5, "android:icon"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 526
    if-nez v0, :cond_4

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 527
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 528
    const-string v0, "@"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 529
    const-string v6, "/"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    const-string v6, ":"

    const-string v7, "/"

    invoke-static {v5, v6, v7}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 531
    const-string v7, "@"

    const-string v8, ":"

    invoke-static {v5, v7, v8}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 534
    :try_start_2
    invoke-virtual {v3, v0, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 537
    :cond_5
    :try_start_3
    const-string v0, "@"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 540
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "res"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 542
    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 544
    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppIconFromRes(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    if-nez v2, :cond_6

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ImageUtils;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 521
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 547
    :cond_7
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 534
    :catch_1
    move-exception v0

    .line 521
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1
.end method

.method public static getAppIconFromRes(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 558
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$100000002;

    invoke-direct {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$100000002;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 566
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    move v0, v1

    .line 577
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 581
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    .line 567
    :cond_1
    aget-object v3, v2, v0

    .line 568
    new-instance v4, Lcom/s1243808733/aide/util/ProjectUtils$100000003;

    invoke-direct {v4, p2}, Lcom/s1243808733/aide/util/ProjectUtils$100000003;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 576
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 577
    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAppLabelFromManifest(Ljava/io/File;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 464
    :cond_1
    :goto_0
    return-object v0

    .line 390
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 391
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 392
    const-string v2, "manifest"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 393
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 394
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v2, v3

    .line 396
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lt v2, v0, :cond_4

    :goto_2
    move-object v0, v1

    .line 464
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_4
    :try_start_1
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 398
    const-string v5, "application"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 399
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 400
    const-string v5, "android:label"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 401
    if-nez v0, :cond_5

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 402
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string v5, "@android:string/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 404
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v5

    .line 405
    invoke-virtual {v5}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 407
    :try_start_2
    const-string v6, "@android:string/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_6
    :try_start_3
    const-string v2, "@string/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string v5, "res"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    new-instance v4, Ljava/io/File;

    const-string v5, "values/strings.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 416
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    invoke-static {v0, v5}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    if-nez v0, :cond_1

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$100000000;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ProjectUtils$100000000;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 430
    if-eqz v6, :cond_7

    array-length v0, v6

    if-lez v0, :cond_7

    move v2, v3

    .line 442
    :goto_3
    array-length v0, v6

    if-lt v2, v0, :cond_8

    .line 450
    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-static {v0, v5}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 432
    :cond_8
    aget-object v0, v6, v2

    .line 433
    :try_start_4
    new-instance v7, Lcom/s1243808733/aide/util/ProjectUtils$100000001;

    invoke-direct {v7}, Lcom/s1243808733/aide/util/ProjectUtils$100000001;-><init>()V

    invoke-virtual {v0, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    .line 440
    if-eqz v7, :cond_9

    array-length v0, v7

    if-lez v0, :cond_9

    move v0, v3

    .line 442
    :goto_4
    array-length v8, v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-lt v0, v8, :cond_a

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 441
    :cond_a
    aget-object v8, v7, v0

    .line 442
    :try_start_5
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 407
    :catch_0
    move-exception v0

    .line 396
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public static getAppLabelFromProject(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 384
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v3, v4

    .line 476
    :goto_0
    array-length v2, p0

    if-lt v3, v2, :cond_0

    .line 506
    check-cast v1, Ljava/lang/String;

    :goto_1
    return-object v1

    .line 468
    :cond_0
    aget-object v2, p0, v3

    .line 470
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 471
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 472
    invoke-virtual {v5, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 473
    const-string v5, "resources"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 474
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 475
    :cond_3
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v5, v4

    .line 476
    :goto_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v5, v2, :cond_4

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 477
    :cond_4
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 478
    const-string v7, "string"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 479
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 480
    const-string v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 481
    if-nez v7, :cond_6

    .line 476
    :cond_5
    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 482
    :cond_6
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 483
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 484
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 485
    const-string v7, "@android:string/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 486
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v7

    .line 487
    invoke-virtual {v7}, Lcom/s1243808733/aide/application/App;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 489
    :try_start_1
    const-string v8, "@android:string/"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "string"

    const-string v9, "android"

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto/16 :goto_1

    .line 492
    :cond_7
    :try_start_2
    const-string v5, "@string/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 493
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 495
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_1

    .line 497
    :cond_8
    invoke-static {p0, v2}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppLabelFromStrings([Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto/16 :goto_1

    .line 489
    :catch_0
    move-exception v2

    goto :goto_4

    .line 476
    :catch_1
    move-exception v2

    goto/16 :goto_3

    :cond_9
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public static getAppProjects()Ljava/io/File;
    .registers 3

    .line 38
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "project_home"

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v0

    .line 41
    :cond_1
    :goto_0
    return-object v0

    .line 40
    :cond_2
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAssets(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 194
    const-string v0, "assets"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAssets(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 198
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAssets(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBin(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 130
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "bin"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBuild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "bin"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const-string v0, "bin"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public static getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 141
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesDebug(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 146
    const-string v0, "classesdebug"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesDebug(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 150
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinClassesDebug(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesRelease(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 155
    const-string v0, "classesrelease"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinClassesRelease(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 159
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinClassesRelease(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinInjectedManifest(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 164
    const-string v0, "injected/AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinJarDex(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 169
    const-string v0, "jardex"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinJarDex(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 173
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBinJarDex(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBinResourcesAp(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 178
    const-string v0, "resources.ap_"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBuild(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 120
    const-string v0, "build"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBuild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 124
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getBuild(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentProject()Ljava/io/File;
    .registers 1

    .line 110
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAppProjects()Ljava/io/File;
    .registers 2

    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "AideProjects"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLibs(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 184
    const-string v0, "libs"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLibs(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 188
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getLibs(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMain(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 271
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string v0, "src/main"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 278
    :cond_0
    :goto_0
    return-object p0

    .line 273
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    move-object p0, v0

    goto :goto_0
.end method

.method public static getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 282
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    .line 353
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 354
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "utf-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 355
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 379
    :goto_1
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_2
    return-object v0

    .line 356
    :cond_0
    :try_start_1
    const-string v0, "manifest"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    if-nez p1, :cond_4

    move v0, v1

    .line 358
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 374
    :cond_1
    :goto_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 359
    :cond_2
    :try_start_2
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 358
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 364
    :cond_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_4

    .line 366
    :cond_5
    if-eqz p1, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 367
    :goto_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 368
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 369
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    .line 367
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 339
    sget-object v1, Lcom/s1243808733/aide/util/ProjectUtils;->MANIFEST_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/s1243808733/aide/util/ProjectUtils;->MANIFEST_VERSION_CODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/s1243808733/aide/util/ProjectUtils;->MANIFEST_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    .line 343
    :cond_1
    sget-object v1, Lcom/s1243808733/aide/util/ProjectUtils;->MANIFEST_MIN_SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/s1243808733/aide/util/ProjectUtils;->MANIFEST_TARGET_SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    :cond_2
    const-string v0, "uses-sdk"

    invoke-static {p0, v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestAttributeValueByName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_3
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMinSdkVersionFromGradle(Ljava/io/File;I)I
    .registers 3

    .line 78
    :try_start_0
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getMinSdkVersion(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 80
    :goto_0
    return p1

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getMinSdkVersionFromProject(Ljava/io/File;I)I
    .registers 3

    .line 72
    const-string v0, "build.gradle"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getMinSdkVersionFromGradle(Ljava/io/File;I)I

    move-result v0

    return v0
.end method

.method public static getOldDefaultAppProjects()Ljava/io/File;
    .registers 2

    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "AppProjects"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 249
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

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
    .registers 2

    .line 241
    const-string v0, "package"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProguardFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 261
    const-string v0, "proguard-rules.pro"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isExists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 263
    :cond_1
    const-string v0, "proguard-project.txt"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public static getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 114
    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRes(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 227
    const-string v0, "res"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRes(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 231
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSrcJava(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 204
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "java"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getMain(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "src"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isJavaProject(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string v0, "src"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public static getSrcJava(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 215
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJava(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSrcJavaPkg(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 219
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    .line 221
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
    .registers 3

    .line 91
    :try_start_0
    new-instance v0, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils$GradleInfo;->getTargetSdkVersion(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 93
    :goto_0
    return p1

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getTargetSdkVersionFromProject(Ljava/io/File;I)I
    .registers 3

    .line 85
    const-string v0, "build.gradle"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getProjectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 86
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getTargetSdkVersionFromGradle(Ljava/io/File;I)I

    move-result v0

    return v0
.end method

.method public static getVersionName(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 254
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getVersionNameFromManifest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

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
    .registers 2

    .line 245
    const-string v0, "android:versionName"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getManifestValue(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroidProject(Ljava/io/File;)Z
    .registers 2

    .line 288
    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isEclipseProject(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEclipseProject(Ljava/io/File;)Z
    .registers 2

    .line 298
    if-eqz p0, :cond_0

    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "src"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isExists(Ljava/io/File;)Z
    .registers 2

    .line 335
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGradleProject(Ljava/io/File;)Z
    .registers 3

    .line 292
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "build.gradle"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "src"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isJavaProject(Ljava/io/File;)Z
    .registers 4

    .line 304
    const-string v0, ".classpath"

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 305
    const-string v1, "src"

    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/ProjectUtils;->newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 306
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/s1243808733/aide/util/ProjectUtils;->isAndroidProject(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static newFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 323
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method private static newFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 316
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method
