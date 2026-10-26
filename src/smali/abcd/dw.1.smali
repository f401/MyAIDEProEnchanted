.class Labcd/dw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/fw;->j6(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private DW:Ljava/util/Random;

.field final FH:Ljava/lang/String;

.field final Hw:Labcd/fw;

.field private j6:I


# direct methods
.method constructor <init>(Labcd/fw;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Labcd/dw;->Hw:Labcd/fw;

    iput-object p2, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa0

    iput v0, p0, Labcd/dw;->j6:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Labcd/dw;->DW:Ljava/util/Random;

    return-void
.end method

.method private j6()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleeping for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/dw;->j6:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Networking"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Labcd/dw;->j6:I

    iget-object v3, p0, Labcd/dw;->DW:Ljava/util/Random;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget v0, p0, Labcd/dw;->j6:I

    const v1, 0x1f400

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Labcd/dw;->j6:I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Networking"

    const-string v2, "Unexpected InterruptedException"

    invoke-static {v1, v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v3, 0x0

    const-string v0, "Networking"

    const-string v1, "Thread started"

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->tp(Labcd/fw;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->EQ(Labcd/fw;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    :try_start_2
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "Networking"

    const-string v4, "No files ready for transmission - sleeping..."

    invoke-static {v1, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O Error for report ID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "Networking"

    const-string v4, "Reporting I/O error"

    invoke-static {v2, v4, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-direct {p0}, Labcd/dw;->j6()V

    goto :goto_0

    :cond_1
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files ready for transmission."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Networking"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Labcd/vw;->DW()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Networking"

    const-string v2, "No internet"

    invoke-static {v1, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/dw;->j6()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_4
    const-string v2, "Reporting error"

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    :try_start_6
    new-instance v4, Labcd/tw;

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->FH(Labcd/fw;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Labcd/tw;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v4}, Labcd/tw;->j6()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->tp(Labcd/fw;)[Ljava/io/File;

    move-result-object v5

    array-length v1, v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-nez v1, :cond_3

    :goto_5
    :try_start_8
    invoke-virtual {v4}, Labcd/tw;->DW()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :cond_3
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting transmission of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " network files."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Networking"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-result-object v2

    :try_start_a
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?clientTime="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "&formatVersion="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&deviceId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&reportId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&currentSessionId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Labcd/qw;->j6(JZ)Labcd/qw$a;

    move-result-object v6

    iget-object v6, v6, Labcd/qw$a;->j6:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v6, "application/stream+json"

    invoke-virtual {v0, v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x10000

    new-array v6, v1, [B

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-result-object v7

    move v1, v3

    :goto_6
    :try_start_b
    array-length v8, v5

    if-ge v1, v8, :cond_7

    aget-object v8, v5, v1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Empty file encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const-string v9, "Empty file encountered sending log files"

    invoke-static {v9, v8}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v8, Ljava/io/FileInputStream;

    aget-object v9, v5, v1

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_7
    const/4 v9, 0x0

    const/high16 v10, 0x10000

    :try_start_c
    invoke-virtual {v8, v6, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    if-ltz v9, :cond_6

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_8
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v1

    if-eqz v7, :cond_5

    :try_start_11
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :cond_5
    :goto_9
    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    :goto_a
    :try_start_13
    invoke-virtual {v4}, Labcd/tw;->DW()V

    throw v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catch_1
    move-exception v1

    move-object v0, v2

    goto/16 :goto_1

    :cond_6
    :try_start_14
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catchall_7
    move-exception v5

    invoke-static {v0, v5}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_8

    :cond_7
    if-eqz v7, :cond_8

    :try_start_15
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_8
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_9

    const/16 v1, 0xca

    if-ne v0, v1, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Networking"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    move v0, v3

    :goto_b
    if-ge v0, v1, :cond_e

    aget-object v6, v5, v0

    :try_start_16
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    const/16 v1, 0x19a

    if-ne v0, v1, :cond_c

    const-string v0, "Networking"

    const-string v1, "HTTP GONE encountered: exiting thread."

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->j6(Labcd/fw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-static {v0, v1}, Labcd/uw;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_17
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :goto_c
    :try_start_18
    invoke-virtual {v4}, Labcd/tw;->DW()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    return-void

    :catch_2
    move-exception v0

    const-string v1, "Could not write gone file"

    :goto_d
    :try_start_19
    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_b
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    const-string v1, "Could not calculate gone file path"

    goto :goto_d

    :cond_c
    :try_start_1a
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting error: Received non-OK status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete network file: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/16 v0, 0xfa0

    iput v0, p0, Labcd/dw;->j6:I

    move-object v0, v2

    goto/16 :goto_5

    :catchall_8
    move-exception v5

    invoke-static {v0, v5}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto/16 :goto_9

    :catchall_9
    move-exception v1

    :try_start_1b
    iget-object v2, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v2}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :catchall_a
    move-exception v1

    move-object v0, v2

    goto/16 :goto_4

    :catchall_b
    move-exception v1

    move-object v2, v0

    goto/16 :goto_a
.end method
