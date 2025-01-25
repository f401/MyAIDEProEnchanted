.class public final Lcom/termux/app/BackgroundJob;
.super Ljava/lang/Object;
.source "BackgroundJob.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "termux-task"


# instance fields
.field final mProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/termux/app/TermuxService;)V
    .registers 8

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/termux/app/BackgroundJob;->buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_c

    .line 36
    sget-object p1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR_PATH:Ljava/lang/String;

    .line 38
    :cond_c
    invoke-static {p2, p3}, Lcom/termux/app/BackgroundJob;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 43
    :try_start_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_35

    .line 51
    iput-object p1, p0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    .line 52
    invoke-static {p1}, Lcom/termux/app/BackgroundJob;->getPid(Ljava/lang/Process;)I

    move-result p1

    .line 54
    new-instance p2, Lcom/termux/app/BackgroundJob$1;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/termux/app/BackgroundJob$1;-><init>(Lcom/termux/app/BackgroundJob;ILjava/lang/String;Lcom/termux/app/TermuxService;)V

    .line 82
    invoke-virtual {p2}, Lcom/termux/app/BackgroundJob$1;->start()V

    .line 85
    new-instance p2, Lcom/termux/app/BackgroundJob$2;

    invoke-direct {p2, p0, p1}, Lcom/termux/app/BackgroundJob$2;-><init>(Lcom/termux/app/BackgroundJob;I)V

    return-void

    :catch_35
    move-exception p1

    .line 45
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Failed running background job: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "termux-task"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method public static buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 104
    invoke-static {p1}, Lnet/f401/aide/FUtils;->buildEnvironment(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    return-object p0
.end method

.method static setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 213
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_b4

    .line 215
    const/16 v1, 0x100

    :try_start_d
    new-array v1, v1, [B

    .line 216
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_aa

    const/4 v4, 0x4

    if-le v3, v4, :cond_a6

    .line 218
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    const/16 v5, 0x7f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v4, v5, :cond_34

    aget-byte v5, v1, v7

    const/16 v8, 0x45

    if-ne v5, v8, :cond_34

    aget-byte v5, v1, v6

    const/16 v8, 0x4c

    if-ne v5, v8, :cond_34

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    const/16 v8, 0x46

    if-ne v5, v8, :cond_34

    goto/16 :goto_a6

    :cond_34
    const/16 v5, 0x23

    if-ne v4, v5, :cond_93

    .line 220
    aget-byte v4, v1, v7

    const/16 v5, 0x21

    if-ne v4, v5, :cond_93

    .line 222
    :try_start_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_aa

    :goto_43
    if-ge v6, v3, :cond_a6

    .line 224
    aget-byte v5, v1, v6

    int-to-char v5, v5

    const/16 v8, 0x20

    if-eq v5, v8, :cond_55

    const/16 v8, 0xa

    if-ne v5, v8, :cond_51

    goto :goto_55

    .line 239
    :cond_51
    :try_start_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 226
    :cond_55
    :goto_55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_5e

    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 230
    :cond_5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string v3, "/usr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "/bin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 232
    :cond_72
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 233
    array-length v3, v1

    sub-int/2addr v3, v7

    aget-object v1, v1, v3

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bin/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a6

    .line 244
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bin/sh"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a6
    .catchall {:try_start_51 .. :try_end_a6} :catchall_aa

    .line 247
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_b4

    goto :goto_b5

    :catchall_aa
    move-exception v1

    .line 214
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b3

    :catchall_af
    move-exception v2

    :try_start_b0
    invoke-static {v1, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_b3
    throw v1
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b4} :catch_b4

    :catch_b4
    move-exception v1

    .line 252
    :goto_b5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_bf

    .line 253
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_bf
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_c7

    .line 255
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 256
    :cond_c7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
