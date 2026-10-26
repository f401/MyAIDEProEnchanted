.class public Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;
.super Ljava/lang/Object;
.source "Aapt2TaskFromZeroAicy.java"


# static fields
.field private static aapt$b:Ljava/lang/String; = "com.aide.ui.build.android.AaptService$b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 386
    iget-object v2, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 391
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-static {}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Path2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v3, "compile"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v3, "--dir"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v3, "-o"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    const-class v3, Labcd/Rl;

    invoke-static {v3}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    const-string v6, "j6"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v10

    aput-object v1, v7, v9

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x4

    aput-object v1, v7, v0

    const/4 v0, 0x5

    aput-object v1, v7, v0

    invoke-virtual {v3, v6, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Pl;

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "aapt2 call compile "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Error(Labcd/Pl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    sget-object v1, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method private static getAndroidManifestXml(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mergedAManifestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    invoke-static {v0}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->injectedAManifestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    invoke-static {v0}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->aManifestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-static {v0}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    :cond_0
    return-object v0

    .line 374
    :cond_1
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    const-string v1, "throw new Run \u6ca1\u6709AndroidManifest\u6587\u4ef6\u73a9\u5c3c\u739b\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6ca1\u6709AndroidManifest\u6587\u4ef6\u73a9\u5c3c\u739b\nFuck you! Not found AndroidManifest file!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasError(Ljava/lang/Object;Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 446
    iget-object v0, p1, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 447
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 449
    const-string v1, "Hw"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static link35(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    iget-object v2, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->androidJar:Ljava/lang/String;

    .line 259
    invoke-static {p0, p3}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->getAndroidManifestXml(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    new-instance v0, Lcom/s1243808733/aide/util/AndroidManifestRead;

    invoke-direct {v0, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getMiniSdk()I

    move-result v1

    .line 264
    invoke-virtual {v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getTargetSdk()I

    move-result v0

    if-gtz v1, :cond_0

    .line 267
    iget v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultMinSdk:I

    :cond_0
    if-gtz v0, :cond_1

    .line 270
    iget v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultTargetSdk:I

    .line 275
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const-string v5, "-I"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v2, "--allow-reserved-package-id"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v2, "--no-version-vectors"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v2, "--no-version-transitions"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v2, "--auto-add-overlay"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gtz v0, :cond_2

    if-gtz v1, :cond_2

    const/16 v0, 0x1c

    const/16 v1, 0x15

    .line 286
    :cond_2
    const-string v2, "--min-sdk-version"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v1, "--target-sdk-version"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    const-string v0, "--proguard"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 301
    const-string v2, "-R"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 307
    const-string v0, "--java"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p5, :cond_7

    .line 312
    const-string v0, "--non-final-ids"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 315
    const-string v0, "--manifest"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 322
    const-string v0, "-o"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v4, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_9
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 327
    const-string v0, "--output-text-symbols"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v4, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 331
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 334
    const-string v0, "-A"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_c
    const/4 v0, 0x0

    const-string v1, "link"

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 348
    const/4 v0, 0x0

    invoke-static {}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Path2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 353
    const-class v0, Labcd/Rl;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "j6"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const/4 v6, 0x0

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v4

    const/4 v4, 0x5

    const/4 v6, 0x0

    aput-object v6, v5, v4

    invoke-virtual {v0, v1, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Pl;

    .line 355
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aapt2 call link "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v1

    if-eqz v1, :cond_d

    .line 357
    invoke-virtual {p0, v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Error(Labcd/Pl;)Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wf VH \u9519\u8bef\u4fe1\u606f: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    .line 361
    sget-object v1, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static linkSubProject(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->genResDirsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    const-string v4, "/res"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v4}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    invoke-static {p0, v0, v4}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->compile(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    const-string v2, "compile aaptError: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v0

    .line 247
    :cond_1
    :goto_1
    return-object v6

    .line 238
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "Temp.ap_"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->link35(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v6, v0

    goto :goto_1
.end method

.method public static proxyAapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    new-instance v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;-><init>(Ljava/lang/Object;)V

    .line 36
    iget-object v8, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    .line 39
    iget-boolean v1, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->isBuildRefresh:Z

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildRefresh()V

    .line 47
    :cond_0
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mergedAndroidManifestxml()Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-static {v1, v0}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->hasError(Ljava/lang/Object;Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string v0, "merged error"

    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    .line 214
    :goto_0
    return-object v0

    .line 52
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    iget-object v1, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->allResourceMap:Ljava/util/Map;

    .line 58
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v0, v1, v3}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->compile(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    const-string v0, "compile aaptError: "

    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 100
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v3, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->assetsList:Ljava/util/List;

    if-nez v3, :cond_4

    .line 105
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 106
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_5
    iget-object v3, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v3, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mainProjectGenDir:Ljava/lang/String;

    .line 113
    iget-object v4, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resourcesApPath:Ljava/lang/String;

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/aapt_rules.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/R.txt"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 118
    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->link35(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v0, v1

    goto/16 :goto_0

    .line 127
    :cond_6
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy$1;

    invoke-direct {v2}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 133
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    .line 134
    iget-object v5, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 135
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_8
    iget-object v6, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->genPackageNameMap:Ljava/util/Map;

    .line 143
    iget-object v7, v0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mainProjectGenDir:Ljava/lang/String;

    .line 144
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/R.java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v3}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->listLine(Ljava/io/File;)Ljava/util/List;

    move-result-object v9

    const/4 v2, 0x0

    move v3, v2

    .line 156
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 157
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v3

    move-object v5, v2

    :goto_3
    const/4 v2, 0x0

    move v3, v2

    .line 165
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_b

    .line 166
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v10, " final int "

    const-string v11, " int "

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 158
    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v3

    move-object v5, v2

    goto :goto_3

    .line 166
    :cond_b
    if-ltz v4, :cond_c

    .line 169
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 166
    :cond_c
    sget-object v0, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "R.java \u751f\u6210\u9519\u8bef\uff0c\u6ca1\u6709\u627e\u5230Rpackage"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 173
    :cond_d
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 179
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x2e

    const/16 v13, 0x2f

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/R.java"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 183
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v12, v9}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->writeLines(Ljava/io/File;Ljava/util/List;)V

    .line 188
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v2, v9}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->writeLines(Ljava/io/File;Ljava/util/List;)V

    goto :goto_5

    .line 193
    :cond_f
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableViewBinding()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 195
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isViewBindingAndroidX()Z

    move-result v2

    .line 197
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->currentMainProject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->currentMainProject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->getProjectGen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/s1243808733/aide/functions/viewbinding/GenerateViewBindingTask;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_10
    :goto_6
    invoke-virtual {v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->generateBuildConfigJava()V

    .line 214
    sget-object v0, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 199
    const-string v2, "ViewBindingTask\uff1aError"

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 201
    invoke-virtual {v1, v8}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 202
    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 203
    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    goto :goto_6
.end method
