.class public final Lcom/termux/app/BackgroundJob;
.super Ljava/lang/Object;
.source "BackgroundJob.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "termux-task"


# instance fields
.field final mProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/termux/app/TermuxService;)V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/termux/app/BackgroundJob;->buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 36
    sget-object p1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR_PATH:Ljava/lang/String;

    .line 38
    :cond_0
    invoke-static {p2, p3}, Lcom/termux/app/BackgroundJob;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    .line 52
    invoke-static {v0}, Lcom/termux/app/BackgroundJob;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 54
    new-instance v1, Lcom/termux/app/BackgroundJob$1;

    invoke-direct {v1, p0, v0, v2, p4}, Lcom/termux/app/BackgroundJob$1;-><init>(Lcom/termux/app/BackgroundJob;ILjava/lang/String;Lcom/termux/app/TermuxService;)V

    .line 82
    invoke-virtual {v1}, Lcom/termux/app/BackgroundJob$1;->start()V

    .line 85
    new-instance v1, Lcom/termux/app/BackgroundJob$2;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/BackgroundJob$2;-><init>(Lcom/termux/app/BackgroundJob;I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed running background job: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "termux-task"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {p1}, Lnet/f401/aide/FUtils;->buildEnvironment(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 213
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/16 v2, 0x100

    :try_start_1
    new-array v2, v2, [B

    .line 216
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 218
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_3

    aget-byte v6, v2, v8

    const/16 v7, 0x45

    if-ne v6, v7, :cond_3

    aget-byte v6, v2, v1

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_3

    const/4 v6, 0x3

    aget-byte v6, v2, v6

    const/16 v7, 0x46

    if-ne v6, v7, :cond_3

    .line 247
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 253
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 255
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 256
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 218
    :cond_3
    const/16 v6, 0x23

    if-ne v5, v6, :cond_8

    .line 220
    aget-byte v5, v2, v8

    const/16 v6, 0x21

    if-ne v5, v6, :cond_8

    .line 222
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-ge v1, v4, :cond_0

    .line 224
    aget-byte v6, v2, v1

    int-to-char v6, v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_4

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5

    .line 226
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_6

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 247
    :catchall_0
    move-exception v1

    .line 214
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 230
    :cond_6
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string v2, "/usr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "/bin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :cond_7
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 233
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bin/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bin/sh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 214
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-static {v1, v2}, Lcom/s1243808733/aide/builder/D8Dex$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4
.end method
