.class public Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;
.super Ljava/lang/Object;
.source "Aapt2TaskFromZeroAicy.java"


# static fields
.field private static aapt$b:Ljava/lang/String; = "com.aide.ui.build.android.AaptService$b"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11

    .line 386
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 391
    iget-object v3, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-static {}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Path2()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v4, "compile"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v4, "--dir"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const-string p1, "-o"

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    const-class p1, Labcd/Rl;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, p2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, p2, v3

    const/4 v6, 0x2

    aput-object v5, p2, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, p2, v6

    const/4 v6, 0x4

    aput-object v5, p2, v6

    const/4 v6, 0x5

    aput-object v5, p2, v6

    const-string v6, "j6"

    invoke-virtual {p1, v6, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Pl;

    .line 431
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, "aapt2 call compile "

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    invoke-interface {p1}, Labcd/Pl;->DW()I

    move-result p2

    if-eqz p2, :cond_92

    .line 435
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Error(Labcd/Pl;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_92

    .line 437
    sget-object p1, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v4

    invoke-virtual {p1, p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_92
    return-object v5
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .registers 2

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static getAndroidManifestXml(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
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

    if-nez v1, :cond_3c

    .line 370
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->injectedAManifestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 371
    invoke-static {v0}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->fileExists(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 372
    iget-object p1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->aManifestMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-static {v0}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->fileExists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_3c

    .line 374
    :cond_2d
    iget-object p0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    const-string p1, "throw new Run 没有AndroidManifest文件玩尼玛\n"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 376
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "没有AndroidManifest文件玩尼玛\nFuck you! Not found AndroidManifest file!!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method public static hasError(Ljava/lang/Object;Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;)Z
    .registers 3

    if-eqz p0, :cond_19

    .line 446
    iget-object p1, p1, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 447
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    .line 449
    const-string p1, "Hw"

    invoke-virtual {p0, p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static link35(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
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
    iget-object v0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->androidJar:Ljava/lang/String;

    .line 259
    invoke-static {p0, p3}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->getAndroidManifestXml(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Lcom/s1243808733/aide/util/AndroidManifestRead;

    invoke-direct {v2, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getMiniSdk()I

    move-result v3

    .line 264
    invoke-virtual {v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getTargetSdk()I

    move-result v2

    if-gtz v3, :cond_17

    .line 267
    iget v3, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultMinSdk:I

    :cond_17
    if-gtz v2, :cond_1b

    .line 270
    iget v2, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->defaultTargetSdk:I

    .line 275
    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const-string v5, "-I"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v0, "--allow-reserved-package-id"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v0, "--no-version-vectors"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v0, "--no-version-transitions"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v0, "--auto-add-overlay"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gtz v2, :cond_44

    if-gtz v3, :cond_44

    const/16 v2, 0x1c

    const/16 v3, 0x15

    .line 286
    :cond_44
    const-string v0, "--min-sdk-version"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v0, "--target-sdk-version"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 294
    const-string v0, "--proguard"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_6a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_94

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_74
    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 301
    const-string v0, "-R"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 306
    :cond_94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a2

    .line 307
    const-string p1, "--java"

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a2
    if-eqz p5, :cond_a9

    .line 312
    const-string p1, "--non-final-ids"

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_a9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b7

    .line 315
    const-string p1, "--manifest"

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_b7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 322
    const-string p1, "-o"

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v4, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_c5
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d3

    .line 327
    const-string p1, "--output-text-symbols"

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v4, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_d3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_101

    .line 331
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_dd
    :goto_dd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_101

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 332
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 334
    const-string p2, "-A"

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dd

    .line 347
    :cond_101
    const-string p1, "link"

    const/4 p2, 0x0

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 348
    invoke-static {}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Path2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 353
    const-class p1, Labcd/Rl;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/Object;

    aput-object v4, p5, p2

    const/4 p6, 0x1

    const/4 p7, 0x0

    aput-object p7, p5, p6

    const/4 v0, 0x2

    aput-object p7, p5, v0

    const/4 v0, 0x3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p5, v0

    const/4 v0, 0x4

    aput-object p7, p5, v0

    const/4 v0, 0x5

    aput-object p7, p5, v0

    const-string v0, "j6"

    invoke-virtual {p1, v0, p5}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Pl;

    .line 355
    iget-object p5, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aapt2 call link "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    invoke-interface {p1}, Labcd/Pl;->DW()I

    move-result p3

    if-eqz p3, :cond_18c

    .line 357
    invoke-virtual {p0, p1}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getAapt2Error(Labcd/Pl;)Ljava/lang/String;

    move-result-object p1

    .line 358
    iget-object p0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "wf VH 错误信息: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_18c

    .line 361
    sget-object p0, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    new-array p3, p6, [Ljava/lang/Object;

    aput-object p1, p3, p2

    invoke-virtual {p0, p3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18c
    return-object p7
.end method

.method private static linkSubProject(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    if-eqz v0, :cond_6e

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    const-string v4, "/res"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v4}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 231
    invoke-static {p0, v3, v4}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->compile(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 233
    iget-object p1, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    const-string v0, "compile aaptError: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 234
    iget-object p0, p0, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v3

    .line 238
    :cond_6a
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 245
    :cond_6e
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->link35(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8d

    return-object p0

    :cond_8d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static proxyAapt(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    new-instance v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;-><init>(Ljava/lang/Object;)V

    .line 36
    iget-object v10, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->log:Ljava/io/PrintStream;

    .line 39
    iget-boolean v0, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->isBuildRefresh:Z

    if-eqz v0, :cond_10

    .line 41
    invoke-virtual {v9}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildRefresh()V

    .line 47
    :cond_10
    invoke-virtual {v9}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mergedAndroidManifestxml()Ljava/lang/Object;

    move-result-object v0

    .line 48
    invoke-static {v0, v9}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->hasError(Ljava/lang/Object;Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 49
    const-string v1, "merged error"

    invoke-virtual {v10, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    .line 52
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "merged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    iget-object v0, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->allResourceMap:Ljava/util/Map;

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_3b

    .line 62
    :cond_53
    invoke-virtual {v9}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lio/github/zeroaicy/util/MD5Util;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v9, v1, v2}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->compile(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 72
    const-string v0, "compile aaptError: "

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    .line 100
    :cond_88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v0, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->assetsList:Ljava/util/List;

    if-nez v0, :cond_9c

    .line 105
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 106
    :cond_9c
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_9f
    iget-object v0, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v4, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mainProjectGenDir:Ljava/lang/String;

    .line 113
    iget-object v5, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resourcesApPath:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/aapt_rules.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->buildBin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/R.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 118
    const/4 v6, 0x0

    move-object v1, v9

    invoke-static/range {v1 .. v8}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->link35(Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d7

    return-object v0

    .line 127
    :cond_d7
    invoke-virtual {v9}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->getCompileDirFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy$1;

    invoke-direct {v1}, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 133
    array-length v1, v0

    const/4 v3, 0x0

    :goto_e6
    if-ge v3, v1, :cond_fc

    aget-object v4, v0, v3

    .line 134
    iget-object v5, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->resCompiledSet:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f9

    .line 135
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 141
    :cond_fc
    iget-object v0, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->genPackageNameMap:Ljava/util/Map;

    .line 143
    iget-object v1, v9, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->mainProjectGenDir:Ljava/lang/String;

    .line 144
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/R.java"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v8}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->listLine(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x0

    .line 156
    :goto_129
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_13f

    .line 157
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 158
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_13c

    goto :goto_141

    :cond_13c
    add-int/lit8 v8, v8, 0x1

    goto :goto_129

    :cond_13f
    const/4 v11, 0x0

    const/4 v8, -0x1

    :goto_141
    const/4 v12, 0x0

    .line 165
    :goto_142
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_15c

    .line 166
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, " final int "

    const-string v15, " int "

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_142

    :cond_15c
    if-ltz v8, :cond_20a

    .line 169
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_168

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_20c

    .line 173
    :cond_168
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_170
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1be

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 175
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18d

    goto :goto_170

    .line 179
    :cond_18d
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v11, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v8, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v12, v4}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->writeLines(Ljava/io/File;Ljava/util/List;)V

    .line 188
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v12, v4}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->writeLines(Ljava/io/File;Ljava/util/List;)V

    goto :goto_170

    .line 193
    :cond_1be
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableViewBinding()Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 195
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isViewBindingAndroidX()Z

    move-result v0

    .line 197
    :try_start_1c8
    invoke-static {}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->currentMainProject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->currentMainProject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->getProjectGen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/s1243808733/aide/functions/viewbinding/GenerateViewBindingTask;->run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1db} :catch_1dc

    goto :goto_1ee

    :catch_1dc
    move-exception v0

    .line 199
    const-string v1, "ViewBindingTask：Error"

    invoke-virtual {v10, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 201
    invoke-virtual {v0, v10}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 202
    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 203
    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 211
    :cond_1ee
    :goto_1ee
    invoke-virtual {v9}, Lio/github/zeroaicy/aide/aapt2/AaptServiceArgs;->generateBuildConfigJava()V

    .line 214
    sget-object v0, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 166
    :cond_20a
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    :goto_20c
    sget-object v0, Lio/github/zeroaicy/aide/aapt2/Aapt2TaskFromZeroAicy;->aapt$b:Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "R.java 生成错误，没有找到Rpackage"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->create([Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
