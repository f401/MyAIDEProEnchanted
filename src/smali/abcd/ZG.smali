.class public Labcd/ZG;
.super Labcd/AI;


# instance fields
.field private KD:I

.field private final SI:Ljava/security/MessageDigest;

.field private Sf:[B

.field private cb:Ljava/io/RandomAccessFile;

.field private cn:Ljava/io/File;

.field private dx:J

.field private ef:J

.field private final ei:Labcd/GG;

.field private g3:Labcd/aH;

.field private final nw:Ljava/util/zip/CRC32;

.field private ro:Z

.field private sG:[B

.field private sh:Ljava/io/File;

.field private vJ:Ljava/util/zip/Deflater;


# direct methods
.method constructor <init>(Labcd/GG;Ljava/io/InputStream;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Labcd/AI;-><init>(Labcd/xE;Ljava/io/InputStream;)V

    iput-object p1, p0, Labcd/ZG;->ei:Labcd/GG;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    iget-object v0, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v0}, Labcd/GG;->VH()Labcd/gE;

    move-result-object v0

    sget-object v1, Labcd/jE;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jE;

    invoke-virtual {v0}, Labcd/jE;->FH()I

    move-result v0

    iput v0, p0, Labcd/ZG;->KD:I

    return-void
.end method

.method private DW(Ljava/lang/String;)Labcd/kH;
    .registers 10

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Labcd/ZG;->ro:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/AI;->Zo()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/ZG;->we()V

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v3

    const/16 v0, 0x14

    new-array v4, v0, [B

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Labcd/AI;->Zo()I

    move-result v5

    if-lt v0, v5, :cond_c

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v4}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v4

    const-string v5, "pack"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pack-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "pack-"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".idx"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Labcd/kH;

    iget-object v4, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v4}, Labcd/GG;->u7()Labcd/pK;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Labcd/kH;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Labcd/ZG;->we()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Labcd/ZG;->we()V

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {v0, p1}, Labcd/kH;->j6(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Labcd/ZG;->we()V

    invoke-virtual {v0}, Labcd/kH;->j6()V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotMoveIndexTo:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v6, v3, v1

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :try_start_1
    new-instance v0, Labcd/dD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotLockPackIn:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Labcd/dD;-><init>(Ljava/io/File;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Labcd/ZG;->we()V

    throw v0

    :cond_7
    :try_start_2
    iget-object v1, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v1, v5, v6}, Labcd/GG;->j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;

    move-result-object v1

    iput-object v1, p0, Labcd/ZG;->g3:Labcd/aH;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p1, :cond_8

    :goto_2
    move-object v2, v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Labcd/kH;->j6()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v5}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v6}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_a
    throw v1

    :cond_b
    invoke-direct {p0}, Labcd/ZG;->we()V

    invoke-virtual {v0}, Labcd/kH;->j6()V

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotMovePackTo:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0, v0}, Labcd/AI;->DW(I)Labcd/CI;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Labcd/YD;->DW([BI)V

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private J0()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/AI;->j6(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget v0, p0, Labcd/ZG;->KD:I

    if-gtz v0, :cond_0

    invoke-static {v2, v1}, Labcd/gH;->j6(Ljava/io/OutputStream;Ljava/util/List;)Labcd/gH;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Labcd/ZG;->Sf:[B

    invoke-virtual {v0, v1, v3}, Labcd/gH;->j6(Ljava/util/List;[B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Labcd/ZG;->KD:I

    invoke-static {v2, v0}, Labcd/gH;->j6(Ljava/io/OutputStream;I)Labcd/gH;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method private static j6(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private we()V
    .registers 2

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    iget-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected DW([BII)I
    .registers 5

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method protected DW(Labcd/AI$e;[BII)V
    .registers 6

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method protected EQ()V
    .registers 13

    iget-object v0, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v3

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v4

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v5

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v6

    iget-wide v0, p0, Labcd/ZG;->dx:J

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-virtual {v7, v3, v8, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v4, v3, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    const-wide/16 v8, 0xc

    sub-long/2addr v0, v8

    const/16 v7, 0x8

    invoke-virtual {p0}, Labcd/AI;->Zo()I

    move-result v8

    invoke-static {v3, v7, v8}, Labcd/FK;->DW([BII)V

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-virtual {v7, v3, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v6, v3, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    :goto_0
    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    if-gez v7, :cond_1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Labcd/ZG;->sG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Labcd/ZG;->Sf:[B

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packCorruptedWhileWritingToFilesystem:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_3

    int-to-long v8, v7

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v10, v8

    sub-long/2addr v0, v10

    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-nez v9, :cond_2

    sub-int v9, v7, v8

    invoke-virtual {v5, v3, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    :cond_2
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1
.end method

.method protected j6(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;
    .registers 7

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/AI$f;->j6()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {p0, p2}, Labcd/AI;->j6(Labcd/AI$d;)Labcd/AI$d;

    return-object p2
.end method

.method protected j6(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;
    .registers 7

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/CI;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {p0, p2}, Labcd/AI;->j6(Labcd/AI$d;)Labcd/AI$d;

    return-object p2
.end method

.method public j6(Labcd/LE;Labcd/LE;)Labcd/kH;
    .registers 7

    const-string v0, "incoming_"

    const-string v1, ".pack"

    iget-object v2, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v2}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    iget-object v0, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v0}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-static {v2}, Labcd/ZG;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Labcd/ZG;->sh:Ljava/io/File;

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Labcd/ZG;->cn:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-super {p0, p1, p2}, Labcd/AI;->j6(Labcd/LE;Labcd/LE;)Labcd/kH;

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Labcd/ZG;->ef:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Labcd/ZG;->Sf:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-direct {p0}, Labcd/ZG;->J0()V

    iget-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    invoke-virtual {p0}, Labcd/AI;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/ZG;->DW(Ljava/lang/String;)Labcd/kH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    :cond_0
    :try_start_1
    iget-object v1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Labcd/ZG;->we()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    :cond_2
    :try_start_2
    iget-object v1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    iget-object v1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Labcd/ZG;->we()V

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected j6(J)V
    .registers 3

    return-void
.end method

.method protected j6(JIJ)V
    .registers 7

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected j6(JJJ)V
    .registers 8

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected j6(JLabcd/YD;J)V
    .registers 7

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected j6(Labcd/AI$e;[BII)V
    .registers 6

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method protected j6(Labcd/CI;)V
    .registers 4

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Labcd/CI;->DW(I)V

    return-void
.end method

.method protected j6(Labcd/CI;I[B)V
    .registers 4

    return-void
.end method

.method protected j6([B)V
    .registers 4

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/ZG;->ef:J

    iget-wide v0, p0, Labcd/ZG;->ef:J

    iput-wide v0, p0, Labcd/ZG;->dx:J

    iput-object p1, p0, Labcd/ZG;->sG:[B

    iput-object p1, p0, Labcd/ZG;->Sf:[B

    return-void
.end method

.method protected j6([BII)V
    .registers 5

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method protected j6(I)Z
    .registers 4

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j6(I[BLabcd/CI;)Z
    .registers 13

    const/4 v1, 0x1

    const/4 v8, 0x0

    iget-wide v2, p0, Labcd/ZG;->ef:J

    invoke-virtual {p3, v2, v3}, Labcd/CI;->j6(J)V

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v3

    array-length v0, p2

    shl-int/lit8 v2, p1, 0x4

    and-int/lit8 v4, v0, 0xf

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v8

    ushr-int/lit8 v2, v0, 0x4

    move v0, v1

    :goto_0
    if-gtz v2, :cond_2

    iget-object v2, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    invoke-virtual {v2, v3, v8, v0}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v2, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    iget-object v2, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v2, v3, v8, v0}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Labcd/ZG;->ef:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v4, p0, Labcd/ZG;->ef:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Labcd/ZG;->ef:J

    iget-object v0, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v8}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    :goto_1
    iget-object v0, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p2}, Ljava/util/zip/Deflater;->setInput([B)V

    iget-object v0, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :goto_2
    iget-object v0, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p3, v0}, Labcd/CI;->DW(I)V

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {v0, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    iget-object v2, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    invoke-virtual {v2, v3, v8, v0}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v2, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v2, v3, v8, v0}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v4, p0, Labcd/ZG;->ef:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Labcd/ZG;->ef:J

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v3, v4

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    and-int/lit8 v4, v2, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    ushr-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected tp()Labcd/AI$f;
    .registers 5

    new-instance v0, Labcd/AI$f;

    invoke-direct {v0}, Labcd/AI$f;-><init>()V

    iget-object v1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Labcd/AI$f;->j6(I)V

    return-object v0
.end method
