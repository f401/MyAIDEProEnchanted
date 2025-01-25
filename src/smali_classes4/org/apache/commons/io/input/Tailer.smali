.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final cset:Ljava/nio/charset/Charset;

.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    iput-wide p4, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    new-array v0, p8, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    iput-object p3, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {p3, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    iput-boolean p7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .registers 5

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .registers 12

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .registers 15

    const/16 v7, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .registers 16

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .registers 16

    const/16 v8, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 17

    sget-object v2, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 17

    new-instance v0, Lorg/apache/commons/io/input/Tailer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .registers 11

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .registers 14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .registers 14

    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 17

    sget-object v2, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0x1

    const/4 v3, 0x0

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x40

    invoke-direct {v10, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_a
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    move-wide v8, v0

    move-wide v4, v0

    move v2, v3

    :goto_11
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_73

    move-wide v0, v4

    move v6, v3

    :goto_22
    if-ge v6, v7, :cond_6c

    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v4, v4, v6

    packed-switch v4, :pswitch_data_a2

    :pswitch_2b  #0xb, 0xc
    if-eqz v2, :cond_44

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v0, v6

    add-long/2addr v0, v8

    add-long/2addr v0, v12

    move v2, v3

    :cond_44
    invoke-virtual {v10, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_47
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_22

    :pswitch_4b  #0xa
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v0, v6

    add-long/2addr v0, v8

    add-long/2addr v0, v12

    move v2, v3

    goto :goto_47

    :pswitch_63  #0xd
    if-eqz v2, :cond_6a

    const/16 v2, 0xd

    invoke-virtual {v10, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6a
    const/4 v2, 0x1

    goto :goto_47

    :cond_6c
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    move-wide v8, v6

    move-wide v4, v0

    goto :goto_11

    :cond_73
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    instance-of v0, v0, Lorg/apache/commons/io/input/TailerListenerAdapter;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    check-cast v0, Lorg/apache/commons/io/input/TailerListenerAdapter;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/TailerListenerAdapter;->endOfFileReached()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_83} :catch_89
    .catchall {:try_start_a .. :try_end_83} :catchall_9e

    :cond_83
    if-eqz v10, :cond_88

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_88
    return-wide v4

    :catch_89
    move-exception v0

    :try_start_8a
    throw v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v2

    move-object v1, v0

    :goto_8d
    if-eqz v10, :cond_94

    if-eqz v1, :cond_9a

    :try_start_91
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_95

    :cond_94
    :goto_94
    throw v2

    :catch_95
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_94

    :cond_9a
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_94

    :catchall_9e
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    goto :goto_8d

    :pswitch_data_a2
    .packed-switch 0xa
        :pswitch_4b  #0000000a
        :pswitch_2b  #0000000b
        :pswitch_2b  #0000000c
        :pswitch_63  #0000000d
    .end packed-switch
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method protected getRun()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return v0
.end method

.method public run()V
    .registers 13

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v1

    move-wide v2, v4

    move-wide v6, v4

    :goto_6
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_3e
    .catchall {:try_start_6 .. :try_end_9} :catchall_62

    move-result v8

    if-eqz v8, :cond_17b

    if-nez v0, :cond_17b

    :try_start_e
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v10, "r"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_17} :catch_37
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_3e
    .catchall {:try_start_e .. :try_end_17} :catchall_62

    move-object v0, v8

    :goto_18
    if-nez v0, :cond_4e

    :try_start_1a
    iget-wide v8, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_3e
    .catchall {:try_start_1a .. :try_end_1f} :catchall_62

    goto :goto_6

    :catch_20
    move-exception v1

    move-object v2, v0

    :goto_22
    :try_start_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_183

    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_12f

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    :goto_36
    return-void

    :catch_37
    move-exception v8

    :try_start_38
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v8}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3d} :catch_20
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e
    .catchall {:try_start_38 .. :try_end_3d} :catchall_62

    goto :goto_18

    :catch_3e
    move-exception v1

    move-object v2, v0

    :goto_40
    :try_start_40
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_183

    if-eqz v2, :cond_4a

    :try_start_47
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_137

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    goto :goto_36

    :cond_4e
    :try_start_4e
    iget-boolean v2, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    :goto_58
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_61} :catch_20
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_61} :catch_3e
    .catchall {:try_start_4e .. :try_end_61} :catchall_62

    goto :goto_6

    :catchall_62
    move-exception v1

    move-object v8, v0

    :goto_64
    if-eqz v8, :cond_69

    :try_start_66
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_13f

    :cond_69
    :goto_69
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    throw v1

    :cond_6d
    move-wide v6, v4

    goto :goto_58

    :goto_6f
    :try_start_6f
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v0

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v0, v10, v11}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v9, v2, v6

    if-gez v9, :cond_d6

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_8a} :catch_154
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8a} :catch_14f
    .catchall {:try_start_6f .. :try_end_8a} :catchall_147

    :try_start_8a
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_93} :catch_164
    .catchall {:try_start_8a .. :try_end_93} :catchall_159

    :try_start_93
    invoke-direct {p0, v8}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9e
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_96} :catch_a5
    .catchall {:try_start_93 .. :try_end_96} :catchall_15f

    :goto_96
    if-eqz v8, :cond_9b

    :try_start_98
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_9b} :catch_be
    .catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_9b} :catch_177
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_173
    .catchall {:try_start_98 .. :try_end_9b} :catchall_d2

    :cond_9b
    move-object v8, v2

    move-wide v6, v4

    goto :goto_6f

    :catch_9e
    move-exception v0

    :try_start_9f
    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v3, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a4} :catch_a5
    .catchall {:try_start_9f .. :try_end_a4} :catchall_15f

    goto :goto_96

    :catch_a5
    move-exception v0

    :goto_a6
    :try_start_a6
    throw v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v3

    move-object v9, v0

    :goto_a9
    if-eqz v8, :cond_b0

    if-eqz v9, :cond_ca

    :try_start_ad
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b0} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_ce
    .catchall {:try_start_ad .. :try_end_b0} :catchall_17f

    :cond_b0
    :goto_b0
    :try_start_b0
    throw v3
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_b1} :catch_b1
    .catch Ljava/lang/InterruptedException; {:try_start_b0 .. :try_end_b1} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b1} :catch_ce
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_17f

    :catch_b1
    move-exception v0

    :goto_b2
    :try_start_b2
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    iget-wide v8, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_bc} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bc} :catch_ce
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_17f

    move-object v8, v2

    goto :goto_6f

    :catch_be
    move-exception v0

    move-wide v6, v4

    goto :goto_b2

    :catch_c1
    move-exception v0

    :try_start_c2
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b0

    :catch_c6
    move-exception v0

    move-object v1, v0

    goto/16 :goto_22

    :cond_ca
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_c2 .. :try_end_cd} :catch_b1
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_cd} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cd} :catch_ce
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_17f

    goto :goto_b0

    :catch_ce
    move-exception v0

    move-object v1, v0

    goto/16 :goto_40

    :catchall_d2
    move-exception v1

    move-object v0, v2

    :goto_d4
    move-object v8, v0

    goto :goto_64

    :cond_d6
    cmp-long v2, v2, v6

    if-lez v2, :cond_10c

    :try_start_da
    invoke-direct {p0, v8}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    :goto_e4
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v0, :cond_ed

    if-eqz v8, :cond_ed

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    :cond_ed
    iget-wide v10, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v0

    if-eqz v0, :cond_109

    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v0, :cond_109

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v10, "r"

    invoke-direct {v0, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/lang/InterruptedException; {:try_start_da .. :try_end_105} :catch_154
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_105} :catch_14f
    .catchall {:try_start_da .. :try_end_105} :catchall_147

    :try_start_105
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_108
    .catch Ljava/lang/InterruptedException; {:try_start_105 .. :try_end_108} :catch_16b
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_108} :catch_16f
    .catchall {:try_start_105 .. :try_end_108} :catchall_14b

    move-object v8, v0

    :cond_109
    move-wide v10, v2

    goto/16 :goto_6f

    :cond_10c
    if-eqz v0, :cond_168

    const-wide/16 v2, 0x0

    :try_start_110
    invoke-virtual {v8, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0, v8}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_11c
    .catch Ljava/lang/InterruptedException; {:try_start_110 .. :try_end_11c} :catch_154
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_11c} :catch_14f
    .catchall {:try_start_110 .. :try_end_11c} :catchall_147

    move-result-wide v2

    goto :goto_e4

    :cond_11e
    if-eqz v8, :cond_123

    :try_start_120
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_128

    :cond_123
    :goto_123
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    goto/16 :goto_36

    :catch_128
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    goto :goto_123

    :catch_12f
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    goto/16 :goto_33

    :catch_137
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    goto/16 :goto_4a

    :catch_13f
    move-exception v0

    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    goto/16 :goto_69

    :catchall_147
    move-exception v0

    move-object v1, v0

    goto/16 :goto_64

    :catchall_14b
    move-exception v1

    move-object v8, v0

    goto/16 :goto_64

    :catch_14f
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_40

    :catch_154
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_22

    :catchall_159
    move-exception v0

    move-object v3, v0

    move-object v9, v1

    move-object v2, v8

    goto/16 :goto_a9

    :catchall_15f
    move-exception v0

    move-object v3, v0

    move-object v9, v1

    goto/16 :goto_a9

    :catch_164
    move-exception v0

    move-object v2, v8

    goto/16 :goto_a6

    :cond_168
    move-wide v2, v10

    goto/16 :goto_e4

    :catch_16b
    move-exception v1

    move-object v2, v0

    goto/16 :goto_22

    :catch_16f
    move-exception v1

    move-object v2, v0

    goto/16 :goto_40

    :catch_173
    move-exception v0

    move-object v1, v0

    goto/16 :goto_40

    :catch_177
    move-exception v0

    move-object v1, v0

    goto/16 :goto_22

    :cond_17b
    move-object v8, v0

    move-wide v10, v2

    goto/16 :goto_6f

    :catchall_17f
    move-exception v1

    move-object v0, v2

    goto/16 :goto_d4

    :catchall_183
    move-exception v1

    move-object v0, v2

    goto/16 :goto_d4
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return-void
.end method
