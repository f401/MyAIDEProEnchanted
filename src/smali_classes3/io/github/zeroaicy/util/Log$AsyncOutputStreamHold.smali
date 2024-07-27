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

    .line 473
    new-instance v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;

    invoke-static {p1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->createOutStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold$AsyncOutStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;-><init>(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->outPath:Ljava/lang/String;

    .line 477
    if-nez p2, :cond_0

    .line 478
    const/4 v0, 0x0

    check-cast v0, Ljava/io/PrintStream;

    iput-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    .line 481
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method private static checkFile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 513
    const-class v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    :goto_0
    const-class v0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    monitor-exit v0

    return-void

    .line 518
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    const-class v1, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;

    monitor-exit v1

    throw v0
.end method

.method public static createOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 2

    .line 505
    :try_start_0
    invoke-static {p0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->checkFile(Ljava/io/File;)V

    .line 506
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 508
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileOutputStream;

    goto :goto_0
.end method

.method public static createOutStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 2

    .line 501
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->createOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 493
    invoke-static {}, Lio/github/zeroaicy/util/Log;->getLog()Ljava/io/PrintStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_1

    .line 496
    :cond_0
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    :cond_1
    return-void
.end method

.method public getLog()Ljava/io/PrintStream;
    .registers 2

    .line 489
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->mLog:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getOutPath()Ljava/lang/String;
    .registers 2

    .line 486
    iget-object v0, p0, Lio/github/zeroaicy/util/Log$AsyncOutputStreamHold;->outPath:Ljava/lang/String;

    return-object v0
.end method
