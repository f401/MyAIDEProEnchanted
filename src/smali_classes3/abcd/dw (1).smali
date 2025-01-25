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
    .registers 3

    iput-object p1, p0, Labcd/dw;->Hw:Labcd/fw;

    iput-object p2, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xfa0

    iput p1, p0, Labcd/dw;->j6:I

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Labcd/dw;->DW:Ljava/util/Random;

    return-void
.end method

.method private j6()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleeping for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/dw;->j6:I

    const/16 v2, 0x3e8

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Networking"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_20
    iget-object v0, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_3f

    :try_start_27
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object v1

    iget v3, p0, Labcd/dw;->j6:I

    iget-object v4, p0, Labcd/dw;->DW:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v3, v2

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0

    goto :goto_47

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v1
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    const-string v1, "Networking"

    const-string v2, "Unexpected InterruptedException"

    invoke-static {v1, v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    iget v0, p0, Labcd/dw;->j6:I

    const v1, 0x1f400

    if-ge v0, v1, :cond_52

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Labcd/dw;->j6:I

    :cond_52
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const-string v0, "Networking"

    const-string v1, "Thread started"

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->tp(Labcd/fw;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1fc

    array-length v2, v1

    if-nez v2, :cond_15

    goto/16 :goto_1fc

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files ready for transmission."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Networking"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    invoke-static {}, Labcd/vw;->DW()Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "Networking"

    const-string v2, "No internet"

    invoke-static {v1, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/dw;->j6()V

    goto :goto_31

    :cond_42
    new-instance v1, Labcd/tw;

    iget-object v2, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v2}, Labcd/fw;->FH(Labcd/fw;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Labcd/tw;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v1}, Labcd/tw;->j6()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_51} :catch_246
    .catchall {:try_start_8 .. :try_end_51} :catchall_23f

    :try_start_51
    iget-object v2, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v2}, Labcd/fw;->tp(Labcd/fw;)[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    if-nez v4, :cond_5c

    goto/16 :goto_1e4

    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting transmission of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " network files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Networking"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Labcd/Aw;->j6(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?clientTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "&formatVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&deviceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/qw;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&reportId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&currentSessionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7, v3}, Labcd/qw;->j6(JZ)Labcd/qw$a;

    move-result-object v6

    iget-object v6, v6, Labcd/qw$a;->j6:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/16 v6, 0x2710

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const v6, 0xea60

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v6, "POST"

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Content-Type"

    const-string v7, "application/stream+json"

    invoke-virtual {v4, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v6, 0x10000

    new-array v7, v6, [B

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_f7
    .catchall {:try_start_51 .. :try_end_f7} :catchall_1f7

    const/4 v9, 0x0

    :goto_f8
    :try_start_f8
    array-length v10, v2

    if-ge v9, v10, :cond_136

    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_113

    new-instance v10, Ljava/io/IOException;

    const-string v11, "Empty file encountered"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const-string v11, "Empty file encountered sending log files"

    invoke-static {v11, v10}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_113
    new-instance v10, Ljava/io/FileInputStream;

    aget-object v11, v2, v9

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11a
    .catchall {:try_start_f8 .. :try_end_11a} :catchall_1e9

    :goto_11a
    :try_start_11a
    invoke-virtual {v10, v7, v3, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    if-ltz v11, :cond_124

    invoke-virtual {v8, v7, v3, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_12a

    goto :goto_11a

    :cond_124
    :try_start_124
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_1e9

    add-int/lit8 v9, v9, 0x1

    goto :goto_f8

    :catchall_12a
    move-exception v2

    :try_start_12b
    throw v2
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12c

    :catchall_12c
    move-exception v3

    :try_start_12d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_131

    goto :goto_135

    :catchall_131
    move-exception v4

    :try_start_132
    invoke-static {v2, v4}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_135
    throw v3
    :try_end_136
    .catchall {:try_start_132 .. :try_end_136} :catchall_1e9

    :cond_136
    if-eqz v8, :cond_13b

    :try_start_138
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_13b
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_19b

    const/16 v6, 0xca

    if-ne v4, v6, :cond_148

    goto :goto_19b

    :cond_148
    const/16 v2, 0x19a

    if-ne v4, v2, :cond_184

    const-string v2, "Networking"

    const-string v3, "HTTP GONE encountered: exiting thread."

    invoke-static {v2, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v2}, Labcd/fw;->j6(Labcd/fw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Labcd/dw;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/uw;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_166
    .catchall {:try_start_138 .. :try_end_166} :catchall_1f7

    if-eqz v2, :cond_178

    :try_start_168
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_170} :catch_171
    .catchall {:try_start_168 .. :try_end_170} :catchall_1f7

    goto :goto_180

    :catch_171
    move-exception v2

    :try_start_172
    const-string v3, "Could not write gone file"

    :goto_174
    invoke-static {v3, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_180

    :cond_178
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Could not calculate gone file path"
    :try_end_17f
    .catchall {:try_start_172 .. :try_end_17f} :catchall_1f7

    goto :goto_174

    :goto_180
    :try_start_180
    invoke-virtual {v1}, Labcd/tw;->DW()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_183} :catch_246
    .catchall {:try_start_180 .. :try_end_183} :catchall_23f

    return-void

    :cond_184
    :try_start_184
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting error: Received non-OK status code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19b
    :goto_19b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reported "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Networking"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    array-length v4, v2
    :try_end_1b8
    .catchall {:try_start_184 .. :try_end_1b8} :catchall_1f7

    :goto_1b8
    if-ge v3, v4, :cond_1e0

    aget-object v5, v2, v3

    :try_start_1bc
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1c5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b8

    :cond_1c5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete network file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e0
    const/16 v2, 0xfa0

    iput v2, p0, Labcd/dw;->j6:I
    :try_end_1e4
    .catchall {:try_start_1bc .. :try_end_1e4} :catchall_1f7

    :goto_1e4
    :try_start_1e4
    invoke-virtual {v1}, Labcd/tw;->DW()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_246
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_23f

    goto/16 :goto_8

    :catchall_1e9
    move-exception v2

    :try_start_1ea
    throw v2
    :try_end_1eb
    .catchall {:try_start_1ea .. :try_end_1eb} :catchall_1eb

    :catchall_1eb
    move-exception v3

    if-eqz v8, :cond_1f6

    :try_start_1ee
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1f1
    .catchall {:try_start_1ee .. :try_end_1f1} :catchall_1f2

    goto :goto_1f6

    :catchall_1f2
    move-exception v4

    :try_start_1f3
    invoke-static {v2, v4}, Labcd/Mx$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1f6
    :goto_1f6
    throw v3
    :try_end_1f7
    .catchall {:try_start_1f3 .. :try_end_1f7} :catchall_1f7

    :catchall_1f7
    move-exception v2

    :try_start_1f8
    invoke-virtual {v1}, Labcd/tw;->DW()V

    throw v2
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1fc} :catch_246
    .catchall {:try_start_1f8 .. :try_end_1fc} :catchall_23f

    :cond_1fc
    :goto_1fc
    :try_start_1fc
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->EQ(Labcd/fw;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_20e
    .catchall {:try_start_1fc .. :try_end_20e} :catchall_234

    :try_start_20e
    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v1}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_21e} :catch_246
    .catchall {:try_start_20e .. :try_end_21e} :catchall_23f

    :try_start_21e
    const-string v2, "Networking"

    const-string v3, "No files ready for transmission - sleeping..."

    invoke-static {v2, v3}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v2}, Labcd/fw;->u7(Labcd/fw;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    goto/16 :goto_8

    :catchall_231
    move-exception v2

    monitor-exit v1
    :try_end_233
    .catchall {:try_start_21e .. :try_end_233} :catchall_231

    :try_start_233
    throw v2

    :catchall_234
    move-exception v1

    iget-object v2, p0, Labcd/dw;->Hw:Labcd/fw;

    invoke-static {v2}, Labcd/fw;->DW(Labcd/fw;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_23f} :catch_246
    .catchall {:try_start_233 .. :try_end_23f} :catchall_23f

    :catchall_23f
    move-exception v1

    const-string v2, "Reporting error"

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_262

    :catch_246
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O Error for report ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "Networking"

    const-string v3, "Reporting I/O error"

    invoke-static {v2, v3, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_262
    invoke-direct {p0}, Labcd/dw;->j6()V

    goto/16 :goto_8
.end method
