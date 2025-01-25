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
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/AI;-><init>(Labcd/xE;Ljava/io/InputStream;)V

    iput-object p1, p0, Labcd/ZG;->ei:Labcd/GG;

    new-instance p2, Ljava/util/zip/CRC32;

    invoke-direct {p2}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p2, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object p2

    iput-object p2, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Labcd/GG;->VH()Labcd/gE;

    move-result-object p1

    sget-object p2, Labcd/jE;->j6:Labcd/gE$b;

    invoke-virtual {p1, p2}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/jE;

    invoke-virtual {p1}, Labcd/jE;->FH()I

    move-result p1

    iput p1, p0, Labcd/ZG;->KD:I

    return-void
.end method

.method private DW(Ljava/lang/String;)Labcd/kH;
    .registers 10

    iget-boolean v0, p0, Labcd/ZG;->ro:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Labcd/AI;->Zo()I

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Labcd/ZG;->we()V

    return-object v1

    :cond_f
    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v2, 0x14

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    invoke-virtual {p0}, Labcd/AI;->Zo()I

    move-result v5

    if-lt v4, v5, :cond_13c

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v4}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v4

    const-string v5, "pack"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pack-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".pack"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".idx"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Labcd/kH;

    iget-object v5, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v5}, Labcd/GG;->u7()Labcd/pK;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Labcd/kH;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_a0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_a0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_85

    goto :goto_a0

    :cond_85
    invoke-direct {p0}, Labcd/ZG;->we()V

    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a0
    :goto_a0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-direct {p0}, Labcd/ZG;->we()V

    return-object v1

    :cond_aa
    if-eqz p1, :cond_cc

    :try_start_ac
    invoke-virtual {v4, p1}, Labcd/kH;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    goto :goto_cc

    :cond_b3
    new-instance p1, Labcd/dD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cannotLockPackIn:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v6, v0}, Labcd/dD;-><init>(Ljava/io/File;Ljava/lang/String;)V

    throw p1
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_c7} :catch_c7

    :catch_c7
    move-exception p1

    invoke-direct {p0}, Labcd/ZG;->we()V

    throw p1

    :cond_cc
    :goto_cc
    iget-object v2, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_122

    iget-object v2, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_ff

    invoke-direct {p0}, Labcd/ZG;->we()V

    invoke-virtual {v4}, Labcd/kH;->j6()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_eb

    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    :cond_eb
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotMoveIndexTo:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ff
    :try_start_ff
    iget-object v2, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v2, v6, v0}, Labcd/GG;->j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;

    move-result-object v2

    iput-object v2, p0, Labcd/ZG;->g3:Labcd/aH;
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_107} :catch_10b

    if-eqz p1, :cond_10a

    move-object v1, v4

    :cond_10a
    return-object v1

    :catch_10b
    move-exception p1

    invoke-virtual {v4}, Labcd/kH;->j6()V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-static {v6}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_121
    throw p1

    :cond_122
    invoke-direct {p0}, Labcd/ZG;->we()V

    invoke-virtual {v4}, Labcd/kH;->j6()V

    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cannotMovePackTo:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13c
    invoke-virtual {p0, v4}, Labcd/AI;->DW(I)Labcd/CI;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Labcd/YD;->DW([BI)V

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19
.end method

.method private J0()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/AI;->j6(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_c
    iget v2, p0, Labcd/ZG;->KD:I

    if-gtz v2, :cond_15

    invoke-static {v1, v0}, Labcd/gH;->j6(Ljava/io/OutputStream;Ljava/util/List;)Labcd/gH;

    move-result-object v2

    goto :goto_19

    :cond_15
    invoke-static {v1, v2}, Labcd/gH;->j6(Ljava/io/OutputStream;I)Labcd/gH;

    move-result-object v2

    :goto_19
    iget-object v3, p0, Labcd/ZG;->Sf:[B

    invoke-virtual {v2, v0, v3}, Labcd/gH;->j6(Ljava/util/List;[B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2a

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method private static j6(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private we()V
    .registers 2

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_17
    iget-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_2e
    return-void
.end method


# virtual methods
.method protected DW([BII)I
    .registers 5

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method protected DW(Labcd/AI$e;[BII)V
    .registers 5

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method protected EQ()V
    .registers 16

    iget-object v0, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v1

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v3

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v4

    iget-wide v5, p0, Labcd/ZG;->dx:J

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    const/4 v10, 0x0

    const/16 v11, 0xc

    invoke-virtual {v7, v1, v10, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v2, v1, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    const-wide/16 v12, 0xc

    sub-long/2addr v5, v12

    const/16 v7, 0x8

    invoke-virtual {p0}, Labcd/AI;->Zo()I

    move-result v12

    invoke-static {v1, v7, v12}, Labcd/FK;->DW([BII)V

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v1, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v4, v1, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    :goto_43
    iget-object v7, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    if-gez v7, :cond_74

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget-object v2, p0, Labcd/ZG;->sG:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Labcd/ZG;->Sf:[B

    return-void

    :cond_68
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packCorruptedWhileWritingToFilesystem:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    cmp-long v11, v5, v8

    if-eqz v11, :cond_8d

    int-to-long v11, v7

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v2, v1, v10, v12}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v13, v12

    sub-long/2addr v5, v13

    cmp-long v11, v5, v8

    if-nez v11, :cond_90

    sub-int v11, v7, v12

    invoke-virtual {v3, v1, v12, v11}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_90

    :cond_8d
    invoke-virtual {v3, v1, v10, v7}, Ljava/security/MessageDigest;->update([BII)V

    :cond_90
    :goto_90
    invoke-virtual {v4, v1, v10, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_43
.end method

.method protected j6(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;
    .registers 6

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/AI$f;->j6()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {p0, p2}, Labcd/AI;->j6(Labcd/AI$d;)Labcd/AI$d;

    return-object p2
.end method

.method protected j6(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;
    .registers 6

    iget-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Labcd/CI;->getOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {p0, p2}, Labcd/AI;->j6(Labcd/AI$d;)Labcd/AI$d;

    return-object p2
.end method

.method public j6(Labcd/LE;Labcd/LE;)Labcd/kH;
    .registers 6

    iget-object v0, p0, Labcd/ZG;->ei:Labcd/GG;

    invoke-virtual {v0}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v0

    const-string v1, "incoming_"

    const-string v2, ".pack"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

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

    :try_start_35
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Labcd/ZG;->cn:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-super {p0, p1, p2}, Labcd/AI;->j6(Labcd/LE;Labcd/LE;)Labcd/kH;

    iget-object p1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Labcd/ZG;->ef:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Labcd/ZG;->Sf:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object p1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->force(Z)V

    iget-object p1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    invoke-direct {p0}, Labcd/ZG;->J0()V

    iget-object p1, p0, Labcd/ZG;->cn:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    iget-object p1, p0, Labcd/ZG;->sh:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    invoke-virtual {p0}, Labcd/AI;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/ZG;->DW(Ljava/lang/String;)Labcd/kH;

    move-result-object p1
    :try_end_75
    .catchall {:try_start_35 .. :try_end_75} :catchall_95

    iget-object p2, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    if-eqz p2, :cond_7c

    invoke-virtual {p2}, Ljava/util/zip/Deflater;->end()V

    :cond_7c
    :try_start_7c
    iget-object p2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_91

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_91

    iget-object p2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception p2

    :cond_91
    :goto_91
    invoke-direct {p0}, Labcd/ZG;->we()V

    return-object p1

    :catchall_95
    move-exception p1

    iget-object p2, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    if-eqz p2, :cond_9d

    invoke-virtual {p2}, Ljava/util/zip/Deflater;->end()V

    :cond_9d
    :try_start_9d
    iget-object p2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_b2

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_b2

    iget-object p2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b0} :catch_b1

    goto :goto_b2

    :catch_b1
    move-exception p2

    :cond_b2
    :goto_b2
    invoke-direct {p0}, Labcd/ZG;->we()V

    throw p1
.end method

.method protected j6(J)V
    .registers 3

    return-void
.end method

.method protected j6(JIJ)V
    .registers 6

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected j6(JJJ)V
    .registers 7

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected j6(JLabcd/YD;J)V
    .registers 6

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method protected j6(Labcd/AI$e;[BII)V
    .registers 5

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method protected j6(Labcd/CI;)V
    .registers 4

    iget-object v0, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Labcd/CI;->DW(I)V

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

    long-to-int v1, v0

    if-ne p1, v1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method protected j6(I[BLabcd/CI;)Z
    .registers 12

    iget-wide v0, p0, Labcd/ZG;->ef:J

    invoke-virtual {p3, v0, v1}, Labcd/CI;->j6(J)V

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v0

    array-length v1, p2

    shl-int/lit8 p1, p1, 0x4

    and-int/lit8 v2, v1, 0xf

    or-int/2addr p1, v2

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    ushr-int/lit8 p1, v1, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_17
    if-gtz p1, :cond_83

    iget-object p1, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    invoke-virtual {p1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1, v0, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object p1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Labcd/ZG;->ef:J

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v4, p0, Labcd/ZG;->ef:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Labcd/ZG;->ef:J

    iget-object p1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    if-nez p1, :cond_47

    new-instance p1, Ljava/util/zip/Deflater;

    const/4 v3, -0x1

    invoke-direct {p1, v3, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    goto :goto_4a

    :cond_47
    invoke-virtual {p1}, Ljava/util/zip/Deflater;->reset()V

    :goto_4a
    iget-object p1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setInput([B)V

    iget-object p1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->finish()V

    :goto_54
    iget-object p1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->finished()Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Labcd/CI;->DW(I)V

    return v1

    :cond_67
    iget-object p1, p0, Labcd/ZG;->vJ:Ljava/util/zip/Deflater;

    invoke-virtual {p1, v0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result p1

    iget-object p2, p0, Labcd/ZG;->SI:Ljava/security/MessageDigest;

    invoke-virtual {p2, v0, v2, p1}, Ljava/security/MessageDigest;->update([BII)V

    iget-object p2, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object p2, p0, Labcd/ZG;->cb:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, v0, v2, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v3, p0, Labcd/ZG;->ef:J

    int-to-long p1, p1

    add-long/2addr v3, p1

    iput-wide v3, p0, Labcd/ZG;->ef:J

    goto :goto_54

    :cond_83
    add-int/lit8 v4, v3, -0x1

    aget-byte v5, v0, v4

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    and-int/lit8 v4, p1, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    ushr-int/lit8 p1, p1, 0x7

    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method protected tp()Labcd/AI$f;
    .registers 4

    new-instance v0, Labcd/AI$f;

    invoke-direct {v0}, Labcd/AI$f;-><init>()V

    iget-object v1, p0, Labcd/ZG;->nw:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Labcd/AI$f;->j6(I)V

    return-object v0
.end method
