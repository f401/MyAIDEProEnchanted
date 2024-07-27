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
    .registers 4

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
    .registers 6

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
    .registers 15

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v0, "Networking"

    const-string v1, "Thread started"

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    :try_start_0
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->tp(Labcd/fw;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

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
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v1, "Networking"

    const-string v4, "No files ready for transmission - sleeping..."

    invoke-static {v1, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v1

    move-object v3, v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O Error for report ID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "Networking"

    const-string v4, "Reporting I/O error"

    invoke-static {v1, v4, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Labcd/dw;->j6()V

    goto :goto_0

    :cond_1
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files ready for transmission."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Networking"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Labcd/vw;->DW()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Networking"

    const-string v3, "No internet"

    invoke-static {v1, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/dw;->j6()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v1

    :goto_3
    const-string v1, "Reporting error"

    invoke-static {v1, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Labcd/dw;->j6()V

    goto/16 :goto_0

    :cond_2
    :try_start_6
    new-instance v6, Labcd/tw;

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->FH(Labcd/fw;)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3}, Labcd/tw;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v6}, Labcd/tw;->j6()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->tp(Labcd/fw;)[Ljava/io/File;

    move-result-object v4

    array-length v1, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-nez v1, :cond_3

    :goto_4
    :try_start_8
    invoke-virtual {v6}, Labcd/tw;->DW()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :cond_3
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting transmission of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network files."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Networking"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-result-object v1

    :try_start_a
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?clientTime="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&formatVersion="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&deviceId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&reportId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&currentSessionId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v7, 0x0

    invoke-static {v8, v9, v7}, Labcd/qw;->j6(JZ)Labcd/qw$a;

    move-result-object v7

    iget-object v7, v7, Labcd/qw$a;->j6:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v7, "application/stream+json"

    invoke-virtual {v0, v3, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x10000

    new-array v7, v3, [B

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v8

    move v3, v5

    :goto_5
    :try_start_b
    array-length v9, v4

    if-ge v3, v9, :cond_8

    aget-object v9, v4, v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_4

    new-instance v9, Ljava/io/IOException;

    const-string v10, "Empty file encountered"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const-string v10, "Empty file encountered sending log files"

    invoke-static {v10, v9}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v10, v4, v3

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_6
    const/4 v10, 0x0

    :try_start_c
    array-length v11, v7

    invoke-virtual {v9, v7, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    if-ltz v10, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v0

    :goto_7
    if-eqz v4, :cond_7

    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_8
    :try_start_f
    throw v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catch_3
    move-exception v0

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v3

    move-object v4, v0

    :goto_9
    if-eqz v8, :cond_5

    if-eqz v4, :cond_10

    :try_start_11
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_5
    :goto_a
    :try_start_12
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v4, v1

    :goto_b
    :try_start_13
    invoke-virtual {v6}, Labcd/tw;->DW()V

    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    :catch_4
    move-exception v1

    move-object v3, v1

    move-object v0, v4

    goto/16 :goto_1

    :cond_6
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    goto :goto_9

    :cond_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_8

    :cond_8
    if-eqz v8, :cond_9

    :try_start_15
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_9
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_a

    const/16 v3, 0xca

    if-ne v0, v3, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reported "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " event files"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Networking"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move v0, v5

    :goto_c
    if-ge v0, v3, :cond_f

    aget-object v7, v4, v0

    :try_start_16
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    const/16 v3, 0x19a

    if-ne v0, v3, :cond_d

    const-string v0, "Networking"

    const-string v3, "HTTP GONE encountered: exiting thread."

    invoke-static {v0, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->j6(Labcd/fw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v3, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-static {v0, v3}, Labcd/uw;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_17
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :goto_d
    :try_start_18
    invoke-virtual {v6}, Labcd/tw;->DW()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9

    return-void

    :catch_6
    move-exception v0

    :try_start_19
    const-string v3, "Could not write gone file"

    invoke-static {v3, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_c
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Could not calculate gone file path"

    invoke-static {v3, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting error: Received non-OK status code: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete network file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/16 v0, 0xfa0

    iput v0, p0, Labcd/dw;->j6:I

    move-object v0, v1

    goto/16 :goto_4

    :catch_7
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto/16 :goto_a

    :catchall_6
    move-exception v1

    :try_start_1a
    iget-object v3, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v3}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1

    :catch_8
    move-exception v3

    move-object v0, v1

    goto/16 :goto_1

    :catch_9
    move-exception v3

    move-object v0, v1

    goto/16 :goto_3

    :catch_a
    move-exception v1

    move-object v3, v1

    move-object v0, v4

    goto/16 :goto_3

    :catchall_7
    move-exception v1

    move-object v3, v1

    move-object v4, v0

    goto/16 :goto_b
.end method
