.class public final Lcom/termux/app/BackgroundJob;
.super Ljava/lang/Object;
.source "BackgroundJob.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "termux-task"


# instance fields
.field final mProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/termux/app/TermuxService;)V
    .registers 10

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/termux/app/BackgroundJob;->buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    if-nez p1, :cond_0

    sget-object p1, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR_PATH:Ljava/lang/String;

    .line 38
    :cond_0
    invoke-static {p2, p3}, Lcom/termux/app/BackgroundJob;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 41
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
    iget-object v0, p0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    invoke-static {v0}, Lcom/termux/app/BackgroundJob;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 54
    new-instance v1, Lcom/termux/app/BackgroundJob$100000000;

    invoke-direct {v1, p0, v0, v2, p4}, Lcom/termux/app/BackgroundJob$100000000;-><init>(Lcom/termux/app/BackgroundJob;ILjava/lang/String;Lcom/termux/app/TermuxService;)V

    invoke-virtual {v1}, Lcom/termux/app/BackgroundJob$100000000;->start()V

    .line 85
    new-instance v1, Lcom/termux/app/BackgroundJob$100000001;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/BackgroundJob$100000001;-><init>(Lcom/termux/app/BackgroundJob;I)V

    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 45
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Process;

    iput-object v0, p0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    .line 47
    const-string v0, "termux-task"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Failed running background job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/termux/app/BackgroundJob;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/termux/app/BackgroundJob;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static addToEnvIfPresent(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
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

    .line 156
    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static buildEnvironment(ZLjava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 104
    invoke-static {p1}, Lnet/f401/aide/FUtils;->buildEnvironment(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPid(Ljava/lang/Process;)I
    .registers 4

    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 194
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_0
    return v0

    .line 198
    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 201
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    .line 211
    check-cast v0, Ljava/lang/String;

    .line 213
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    const/16 v1, 0x100

    :try_start_2
    new-array v3, v1, [B

    .line 216
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 217
    const/4 v1, 0x4

    if-le v5, v1, :cond_0

    .line 218
    aget-byte v1, v3, v7

    const/16 v6, 0x7f

    if-ne v1, v6, :cond_4

    aget-byte v1, v3, v8

    const/16 v6, 0x45

    if-ne v1, v6, :cond_4

    aget-byte v1, v3, v2

    const/16 v6, 0x4c

    if-ne v1, v6, :cond_4

    const/4 v1, 0x3

    aget-byte v1, v3, v1

    const/16 v6, 0x46

    if-ne v1, v6, :cond_4

    .line 244
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    if-eqz p1, :cond_3

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 256
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 220
    :cond_4
    aget-byte v1, v3, v7

    const/16 v6, 0x23

    if-ne v1, v6, :cond_a

    aget-byte v1, v3, v8

    const/16 v6, 0x21

    if-ne v1, v6, :cond_a

    .line 222
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v2

    .line 223
    :goto_2
    if-ge v1, v5, :cond_0

    .line 224
    aget-byte v2, v3, v1

    int-to-char v2, v2

    .line 225
    const/16 v7, 0x20

    if-eq v2, v7, :cond_5

    const/16 v7, 0xa

    if-ne v2, v7, :cond_8

    .line 226
    :cond_5
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 223
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 230
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "/bin/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :cond_8
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 244
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_9

    :try_start_6
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    :cond_9
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v0

    if-nez v1, :cond_b

    move-object v0, v2

    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto/16 :goto_1

    :cond_a
    :try_start_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/bin/sh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    if-eq v1, v2, :cond_c

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_c
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method
