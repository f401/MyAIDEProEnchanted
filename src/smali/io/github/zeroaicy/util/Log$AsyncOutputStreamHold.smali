.class public Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncOutputStreamHold"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;,
        Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$WriteLogThread;
    }
.end annotation


# instance fields
.field private final mLog:Ljava/io/PrintStream;

.field private final outPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 506
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    invoke-static {p1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->createOutStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;-><init>(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->outPath:Ljava/lang/String;

    if-nez p2, :cond_b

    .line 511
    const/4 p1, 0x0

    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    goto :goto_12

    .line 514
    :cond_b
    new-instance p1, Ljava/io/PrintStream;

    invoke-direct {p1, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    :goto_12
    return-void
.end method

.method private static checkFile(Ljava/io/File;)V
    .registers 2

    const-class v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    monitor-enter v0

    .line 548
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 549
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 550
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    .line 551
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_23

    .line 553
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 554
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 555
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_27

    .line 558
    :cond_23
    :goto_23
    const-class p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    monitor-exit p0

    return-void

    :catchall_27
    move-exception p0

    const-class v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    monitor-exit v0

    throw p0
.end method

.method public static createOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 2

    .line 540
    :try_start_0
    invoke-static {p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->checkFile(Ljava/io/File;)V

    .line 541
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception p0

    .line 543
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 544
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createOutStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 2

    .line 536
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->createOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 527
    invoke-virtual {p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 529
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_17

    .line 531
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    :cond_17
    return-void
.end method

.method public getLog()Ljava/io/PrintStream;
    .registers 2

    .line 522
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getOutPath()Ljava/lang/String;
    .registers 2

    .line 519
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->outPath:Ljava/lang/String;

    return-object v0
.end method
