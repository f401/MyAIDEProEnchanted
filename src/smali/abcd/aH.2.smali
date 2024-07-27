.class public Labcd/aH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/aH$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Labcd/bH$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final j6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Labcd/aH;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/io/File;

.field private EQ:I

.field private final FH:Ljava/io/File;

.field private volatile Hw:Ljava/lang/String;

.field private J0:[B

.field private J8:Labcd/bH;

.field private volatile QX:Labcd/DK;

.field private final VH:Ljava/lang/Object;

.field private Ws:Labcd/lH;

.field private Zo:Ljava/io/RandomAccessFile;

.field gn:J

.field private tp:I

.field private u7:I

.field final v5:I

.field private volatile we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/_G;

    invoke-direct {v0}, Labcd/_G;-><init>()V

    sput-object v0, Labcd/aH;->j6:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/aH;->VH:Ljava/lang/Object;

    iput-object p1, p0, Labcd/aH;->DW:Ljava/io/File;

    iput-object p2, p0, Labcd/aH;->FH:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Labcd/aH;->EQ:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iput v0, p0, Labcd/aH;->v5:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Labcd/aH;->gn:J

    return-void
.end method

.method private DW(J)J
    .registers 10

    iget-wide v0, p0, Labcd/aH;->gn:J

    invoke-direct {p0}, Labcd/aH;->we()Labcd/lH;

    move-result-object v2

    const-wide/16 v4, 0x14

    sub-long/2addr v0, v4

    invoke-virtual {v2, p1, p2, v0, v1}, Labcd/lH;->j6(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private DW(Labcd/OH;Labcd/TG;ZLabcd/wH;)V
    .registers 31

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    move-object/from16 v16, v5

    :goto_0
    if-eqz p3, :cond_0

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Labcd/OH;->FH()[B

    move-result-object v8

    move-object/from16 v0, p2

    iget-wide v6, v0, Labcd/TG;->aM:J

    const/4 v9, 0x0

    const/16 v10, 0x14

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v5, 0x0

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v10, v6, 0x7

    and-int/lit8 v6, v5, 0xf

    int-to-long v6, v6

    const/4 v9, 0x4

    const/4 v12, 0x1

    move-wide/from16 v24, v6

    :goto_1
    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_19

    const/4 v5, 0x6

    if-ne v10, v5, :cond_6

    move v5, v12

    :goto_2
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_5

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v5, v6}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5, v6}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_1
    move v12, v6

    :cond_2
    :goto_3
    move-object/from16 v0, p2

    iget-wide v6, v0, Labcd/TG;->aM:J

    int-to-long v10, v12

    add-long v12, v6, v10

    move-object/from16 v0, p2

    iget-wide v14, v0, Labcd/TG;->j3:J

    move-object/from16 v10, p4

    move-object/from16 v11, p0

    :try_start_0
    invoke-virtual/range {v10 .. v15}, Labcd/wH;->j6(Labcd/aH;JJ)Labcd/AG;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v17

    if-eqz p3, :cond_d

    :try_start_1
    invoke-direct/range {p0 .. p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v5

    invoke-virtual {v5}, Labcd/bH;->FH()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct/range {p0 .. p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Labcd/bH;->j6(Labcd/YD;)J
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-result-wide v18

    if-eqz v17, :cond_a

    long-to-int v5, v14

    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12, v13, v5}, Labcd/AG;->j6(Ljava/util/zip/CRC32;JI)V

    move-object/from16 v6, p0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-wide v10

    cmp-long v5, v10, v18

    if-nez v5, :cond_b

    move-object/from16 v10, v17

    :goto_5
    if-eqz v10, :cond_13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Labcd/OH;->j6(Labcd/MH;J)V

    long-to-int v14, v14

    const/4 v15, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Labcd/AG;->j6(Labcd/OH;JILjava/security/MessageDigest;)V

    :cond_3
    :goto_6
    return-void

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v16, v5

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    const/4 v5, 0x7

    if-ne v10, v5, :cond_9

    if-eqz p3, :cond_7

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v5, v12}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5, v12}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_7
    move-object/from16 v0, p2

    iget-wide v6, v0, Labcd/TG;->aM:J

    int-to-long v10, v12

    add-long/2addr v6, v10

    const/4 v9, 0x0

    const/16 v10, 0x14

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    if-eqz p3, :cond_8

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v5, v6}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v4, v8, v5, v6}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_8
    add-int/lit8 v12, v12, 0x14

    goto/16 :goto_3

    :cond_9
    if-eqz p3, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v5, v12}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5, v12}, Ljava/util/zip/CRC32;->update([BII)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v9, p0

    move-object/from16 v5, p2

    move-wide/from16 v20, v14

    move-wide v6, v12

    :goto_7
    const-wide/16 v10, 0x0

    cmp-long v10, v20, v10

    if-gtz v10, :cond_c

    move-object/from16 p2, v5

    move-object v6, v9

    goto :goto_4

    :cond_b
    :try_start_3
    move-object/from16 v0, p2

    iget-wide v4, v0, Labcd/TG;->aM:J

    invoke-direct {v6, v4, v5}, Labcd/aH;->Hw(J)V

    new-instance v4, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-wide v8, v0, Labcd/TG;->aM:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :catch_0
    move-exception v4

    :goto_8
    move-object/from16 v0, p2

    iget-wide v6, v0, Labcd/TG;->aM:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Labcd/aH;->Hw(J)V

    new-instance v5, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-wide v10, v0, Labcd/TG;->aM:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Labcd/YC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v4, Labcd/tD;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Labcd/tD;-><init>(Labcd/MH;)V

    invoke-virtual {v4, v5}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4

    :cond_c
    :try_start_4
    array-length v5, v8

    int-to-long v10, v5

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v5, v10}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v10, v10

    add-long/2addr v6, v10

    sub-long v10, v20, v10

    move-object/from16 v9, p0

    move-object/from16 v5, p2

    move-wide/from16 v20, v10

    goto/16 :goto_7

    :cond_d
    if-eqz p3, :cond_12

    invoke-virtual/range {p4 .. p4}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v18

    const/16 v5, 0x400

    new-array v0, v5, [B

    move-object/from16 v19, v0

    if-eqz v17, :cond_f

    long-to-int v0, v14

    move/from16 v22, v0

    move-wide/from16 v20, v12

    invoke-virtual/range {v17 .. v22}, Labcd/AG;->j6(Ljava/util/zip/Inflater;[BJI)V
    :try_end_4
    .catch Ljava/util/zip/DataFormatException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_e
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/Inflater;->finished()Z
    :try_end_5
    .catch Ljava/util/zip/DataFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v5

    if-eqz v5, :cond_11

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    cmp-long v5, v6, v14

    if-nez v5, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_6
    .catch Ljava/util/zip/DataFormatException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-result-wide v6

    move-object/from16 v10, v17

    move-wide/from16 v18, v6

    goto/16 :goto_5

    :cond_f
    move-wide v6, v12

    move-wide/from16 v20, v14

    :goto_9
    const-wide/16 v10, 0x0

    cmp-long v5, v20, v10

    if-lez v5, :cond_e

    :try_start_7
    array-length v5, v8

    int-to-long v10, v5

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v5, v10}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v5, v10}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_10
    const/4 v5, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5, v9}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_7
    .catch Ljava/util/zip/DataFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v5

    if-gtz v5, :cond_10

    int-to-long v10, v10

    add-long/2addr v6, v10

    sub-long v10, v20, v10

    move-wide/from16 v20, v10

    goto :goto_9

    :cond_11
    :try_start_8
    move-object/from16 v0, p2

    iget-wide v4, v0, Labcd/TG;->aM:J
    :try_end_8
    .catch Ljava/util/zip/DataFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Labcd/aH;->Hw(J)V

    new-instance v4, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->shortCompressedStreamAt:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-wide v8, v0, Labcd/TG;->aM:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catch Ljava/util/zip/DataFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_1
    move-exception v4

    goto/16 :goto_8

    :cond_12
    const-wide/16 v6, -0x1

    move-object/from16 v10, v17

    move-wide/from16 v18, v6

    goto/16 :goto_5

    :cond_13
    array-length v5, v8

    int-to-long v6, v5

    cmp-long v5, v14, v6

    if-gtz v5, :cond_16

    if-nez p3, :cond_14

    move-wide v6, v12

    move-wide/from16 v16, v14

    :goto_a
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-gtz v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Labcd/OH;->j6(Labcd/MH;J)V

    const/4 v4, 0x0

    long-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v4, v5}, Labcd/OH;->write([BII)V

    goto/16 :goto_6

    :cond_15
    array-length v4, v8

    int-to-long v4, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v10, v4

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    int-to-long v4, v10

    add-long/2addr v6, v4

    sub-long v4, v16, v4

    move-wide/from16 v16, v4

    goto :goto_a

    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Labcd/OH;->j6(Labcd/MH;J)V

    move-wide v6, v12

    :goto_b
    const-wide/16 v10, 0x0

    cmp-long v5, v14, v10

    if-gtz v5, :cond_17

    if-eqz p3, :cond_3

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v4, v4, v18

    if-eqz v4, :cond_3

    new-instance v4, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-wide v8, v0, Labcd/TG;->aM:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_17
    array-length v5, v8

    int-to-long v10, v5

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    if-eqz p3, :cond_18

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5, v10}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5, v10}, Labcd/OH;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v6, v10

    sub-long/2addr v14, v10

    goto :goto_b

    :catch_2
    move-exception v4

    :goto_c
    new-instance v5, Labcd/tD;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Labcd/tD;-><init>(Labcd/MH;)V

    invoke-virtual {v5, v4}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v5

    :cond_19
    aget-byte v5, v8, v12

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v5, 0x7f

    shl-int/2addr v6, v9

    int-to-long v6, v6

    add-long v6, v6, v24

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v24, v6

    goto/16 :goto_1

    :catch_3
    move-exception v4

    goto/16 :goto_8

    :catch_4
    move-exception v4

    goto/16 :goto_8

    :catch_5
    move-exception v4

    goto :goto_c

    :catch_6
    move-exception v4

    goto :goto_c

    :catch_7
    move-exception v4

    goto :goto_c

    :catch_8
    move-exception v4

    goto/16 :goto_8

    :catch_9
    move-exception v4

    goto :goto_c
.end method

.method private EQ()V
    .registers 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Labcd/aH;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/aH;->tp:I

    if-nez v0, :cond_0

    iget v0, p0, Labcd/aH;->u7:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/aH;->u7()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private FH(J)Z
    .registers 6

    iget-object v1, p0, Labcd/aH;->QX:Labcd/DK;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1, p2}, Labcd/DK;->DW(J)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Hw(J)V
    .registers 6

    iget-object v0, p0, Labcd/aH;->QX:Labcd/DK;

    if-nez v0, :cond_1

    iget-object v1, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/aH;->QX:Labcd/DK;

    if-nez v0, :cond_0

    new-instance v0, Labcd/DK;

    invoke-direct {v0}, Labcd/DK;-><init>()V

    iput-object v0, p0, Labcd/aH;->QX:Labcd/DK;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p1, p2}, Labcd/DK;->j6(J)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private J0()Labcd/bH;
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/aH;->J8:Labcd/bH;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Labcd/aH;->we:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :try_start_1
    iget-object v0, p0, Labcd/aH;->DW:Ljava/io/File;

    invoke-static {v0}, Labcd/bH;->j6(Ljava/io/File;)Labcd/bH;

    move-result-object v0

    iget-object v1, p0, Labcd/aH;->J0:[B

    if-nez v1, :cond_2

    iget-object v1, v0, Labcd/bH;->j6:[B

    iput-object v1, p0, Labcd/aH;->J0:[B

    :cond_0
    iput-object v0, p0, Labcd/aH;->J8:Labcd/bH;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Labcd/aH;->J8:Labcd/bH;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v1, p0, Labcd/aH;->J0:[B

    iget-object v2, v0, Labcd/bH;->j6:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Labcd/mD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packChecksumMismatch:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/mD;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Labcd/aH;->we:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_5
    new-instance v0, Labcd/lD;

    iget-object v1, p0, Labcd/aH;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Labcd/lD;-><init>(Ljava/io/File;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private J8()V
    .registers 13

    const/4 v6, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [B

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    const/16 v3, 0xc

    invoke-virtual {v2, v1, v8, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    sget-object v2, Labcd/hE;->v5:[B

    invoke-static {v1, v8, v2}, Labcd/IK;->j6([BI[B)I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-static {v1, v6}, Labcd/FK;->FH([BI)J

    move-result-wide v2

    const/16 v4, 0x8

    invoke-static {v1, v4}, Labcd/FK;->FH([BI)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x3

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Labcd/bH;->j6()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Labcd/aH;->gn:J

    const-wide/16 v6, 0x14

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    const/16 v3, 0x14

    invoke-virtual {v2, v1, v8, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v2, p0, Labcd/aH;->J0:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedPackVersion:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Labcd/mD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->packObjectCountMismatch:Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v1}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    iget-object v0, v0, Labcd/bH;->j6:[B

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/mD;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Labcd/mD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packObjectCountMismatch:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Labcd/bH;->j6()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/mD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notAPACKFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Ws()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/aH;->u7:I

    iput v0, p0, Labcd/aH;->tp:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/aH;->we:Z

    invoke-direct {p0}, Labcd/aH;->u7()V

    return-void
.end method

.method static synthetic j6(Labcd/aH;)I
    .registers 2

    iget v0, p0, Labcd/aH;->EQ:I

    return v0
.end method

.method private j6(Labcd/yE;)J
    .registers 6

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Labcd/fD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->missingDeltaBase:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method

.method private j6(J[BIILabcd/wH;)V
    .registers 14

    move-object v0, p6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Labcd/wH;->j6(Labcd/aH;J[BII)I

    move-result v0

    if-ne v0, p5, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private j6(Labcd/MH;)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Labcd/aH;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/aH;->tp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/aH;->u7:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-direct {p0}, Labcd/aH;->tp()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Labcd/tD;

    invoke-direct {v1, p1}, Labcd/tD;-><init>(Labcd/MH;)V

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final j6(JILabcd/wH;)[B
    .registers 12

    const/4 v5, 0x0

    :try_start_0
    new-array v4, p3, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p4

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Labcd/wH;->j6(Labcd/aH;J[BI)I

    move-result v0

    if-ne v0, p3, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->shortCompressedStreamAt:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private tp()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Labcd/aH;->we:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Labcd/aH;->FH:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/aH;->gn:J

    invoke-direct {p0}, Labcd/aH;->J8()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v0

    invoke-direct {p0}, Labcd/aH;->Ws()V

    throw v0

    :cond_0
    :try_start_3
    new-instance v0, Labcd/lD;

    iget-object v1, p0, Labcd/aH;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Labcd/lD;-><init>(Ljava/io/File;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v0

    invoke-direct {p0}, Labcd/aH;->Ws()V

    throw v0

    :catch_2
    move-exception v0

    invoke-direct {p0}, Labcd/aH;->Ws()V

    throw v0
.end method

.method private u7()V
    .registers 3

    iget-object v1, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private we()Labcd/lH;
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/aH;->Ws:Labcd/lH;

    if-nez v0, :cond_0

    new-instance v0, Labcd/lH;

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/lH;-><init>(Labcd/bH;)V

    iput-object v0, p0, Labcd/aH;->Ws:Labcd/lH;

    :cond_0
    iget-object v0, p0, Labcd/aH;->Ws:Labcd/lH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method DW(Labcd/wH;J)J
    .registers 14

    iget-object v4, p1, Labcd/wH;->j6:[B

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v1, p0

    move-wide v2, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v0, 0x0

    aget-byte v0, v4, v0

    and-int/lit16 v2, v0, 0xff

    shr-int/lit8 v0, v2, 0x4

    and-int/lit8 v6, v0, 0x7

    and-int/lit8 v0, v2, 0xf

    int-to-long v0, v0

    const/4 v5, 0x1

    const/4 v3, 0x4

    :goto_0
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    const/4 v2, 0x1

    if-eq v6, v2, :cond_0

    const/4 v2, 0x2

    if-eq v6, v2, :cond_0

    const/4 v2, 0x3

    if-eq v6, v2, :cond_0

    const/4 v2, 0x4

    if-eq v6, v2, :cond_0

    const/4 v0, 0x6

    if-eq v6, v0, :cond_2

    const/4 v0, 0x7

    if-ne v6, v0, :cond_1

    int-to-long v0, v5

    add-long/2addr v0, p2

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Labcd/aH;->j6(Labcd/wH;J)[B

    move-result-object v0

    invoke-static {v0}, Labcd/AH;->j6([B)J
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    return-wide v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v1, v5, 0x1

    aget-byte v0, v4, v5

    and-int/lit16 v0, v0, 0xff

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    int-to-long v0, v1

    add-long/2addr v0, p2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-byte v0, v4, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    aget-byte v2, v4, v5

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v7, v2, 0x7f

    shl-int/2addr v7, v3

    int-to-long v8, v7

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method DW(Labcd/wH;Labcd/YD;)J
    .registers 7

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Labcd/aH;->DW(Labcd/wH;J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method DW(JI)Labcd/AG;
    .registers 11

    iget-object v1, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Labcd/aH;->gn:J

    int-to-long v4, p3

    add-long/2addr v4, p1

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-wide v2, p0, Labcd/aH;->gn:J

    sub-long/2addr v2, p1

    long-to-int p3, v2

    :cond_0
    new-array v0, p3, [B

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    new-instance v2, Labcd/AG;

    invoke-direct {v2, p0, p1, p2, v0}, Labcd/AG;-><init>(Labcd/aH;J[B)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public DW()V
    .registers 2

    invoke-static {p0}, Labcd/uH;->j6(Labcd/aH;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Labcd/aH;->J8:Labcd/bH;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/aH;->Ws:Labcd/lH;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method FH(Labcd/wH;J)I
    .registers 14

    iget-object v4, p1, Labcd/wH;->j6:[B

    move-wide v2, p2

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v0, 0x0

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v6, v1, 0x7

    const/4 v1, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    const/4 v1, 0x7

    if-ne v6, v1, :cond_1

    move v1, v5

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    int-to-long v0, v1

    add-long/2addr v2, v0

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    invoke-static {v4}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/aH;->j6(Labcd/yE;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    aget-byte v0, v4, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-byte v0, v4, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    :cond_3
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    add-int/lit8 v6, v1, 0x1

    aget-byte v0, v4, v1

    and-int/lit16 v5, v0, 0xff

    and-int/lit8 v0, v5, 0x7f

    int-to-long v0, v0

    :goto_2
    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_4
    aget-byte v5, v4, v6

    and-int/lit16 v5, v5, 0xff

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    const/4 v7, 0x7

    shl-long/2addr v0, v7

    and-int/lit8 v7, v5, 0x7f

    int-to-long v8, v7

    add-long/2addr v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return v6
.end method

.method FH(Labcd/wH;Labcd/YD;)Labcd/SG;
    .registers 19

    invoke-direct/range {p0 .. p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p1

    iget-object v6, v0, Labcd/wH;->j6:[B

    const/4 v7, 0x0

    const/16 v8, 0x14

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v2, 0x0

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v7, v3, 0x7

    const/4 v3, 0x1

    :goto_1
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Labcd/aH;->DW(J)J

    move-result-wide v8

    sub-long v14, v8, v4

    const/4 v2, 0x1

    if-eq v7, v2, :cond_4

    const/4 v2, 0x2

    if-eq v7, v2, :cond_4

    const/4 v2, 0x3

    if-eq v7, v2, :cond_4

    const/4 v2, 0x4

    if-eq v7, v2, :cond_4

    const/4 v2, 0x6

    if-eq v7, v2, :cond_2

    const/4 v2, 0x7

    if-ne v7, v2, :cond_1

    int-to-long v2, v3

    add-long v8, v4, v2

    const/4 v11, 0x0

    const/16 v12, 0x14

    move-object/from16 v7, p0

    move-object v10, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    sub-long v2, v14, v2

    const-wide/16 v8, 0x14

    sub-long v10, v2, v8

    invoke-static {v6}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v8

    move-object/from16 v3, p0

    move-wide v6, v10

    invoke-static/range {v3 .. v8}, Labcd/SG;->j6(Labcd/aH;JJLabcd/yE;)Labcd/SG;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int/lit8 v8, v3, 0x1

    aget-byte v2, v6, v3

    and-int/lit16 v7, v2, 0xff

    and-int/lit8 v2, v7, 0x7f

    int-to-long v2, v2

    :goto_2
    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_3

    int-to-long v6, v8

    sub-long v6, v14, v6

    sub-long v8, v4, v2

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Labcd/SG;->j6(Labcd/aH;JJJ)Labcd/SG;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    aget-byte v7, v6, v8

    and-int/lit16 v7, v7, 0xff

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    const/4 v9, 0x7

    shl-long/2addr v2, v9

    and-int/lit8 v9, v7, 0x7f

    int-to-long v10, v9

    add-long/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    int-to-long v2, v3

    sub-long v2, v14, v2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v2, v3}, Labcd/SG;->j6(Labcd/aH;JJ)Labcd/SG;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    aget-byte v2, v6, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v2, v2, 0xff

    goto/16 :goto_1
.end method

.method FH()Z
    .registers 3

    monitor-enter p0

    :try_start_0
    iget v1, p0, Labcd/aH;->u7:I

    const/4 v0, 0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/aH;->u7:I

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Labcd/aH;->tp:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Labcd/aH;->u7()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method Hw()J
    .registers 3

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bH;->j6()J

    move-result-wide v0

    return-wide v0
.end method

.method Hw(Labcd/wH;J)Labcd/FE;
    .registers 28

    :try_start_0
    move-object/from16 v0, p1

    iget-object v6, v0, Labcd/wH;->j6:[B
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v17, v8

    move-wide/from16 v4, p2

    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x14

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    :try_start_1
    invoke-direct/range {v3 .. v9}, Labcd/aH;->j6(J[BIILabcd/wH;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v7, v3, 0x4

    and-int/lit8 v7, v7, 0x7

    and-int/lit8 v8, v3, 0xf

    int-to-long v8, v8

    const/4 v11, 0x4

    const/4 v12, 0x1

    move-object/from16 v16, v2

    move-wide/from16 v20, v8

    move v10, v3

    move/from16 v22, v12

    :goto_1
    and-int/lit16 v2, v10, 0x80

    if-nez v2, :cond_e

    const/4 v2, 0x1

    if-eq v7, v2, :cond_6

    const/4 v2, 0x2

    if-eq v7, v2, :cond_6

    const/4 v2, 0x3

    if-eq v7, v2, :cond_6

    const/4 v2, 0x4

    if-eq v7, v2, :cond_6

    const/4 v2, 0x6

    if-eq v7, v2, :cond_3

    const/4 v2, 0x7

    if-ne v7, v2, :cond_2

    move/from16 v0, v22

    int-to-long v2, v0

    add-long v8, v4, v2

    const/4 v11, 0x0

    const/16 v12, 0x14

    move-object/from16 v7, p0

    move-object v10, v6

    move-object/from16 v13, p1

    :try_start_2
    invoke-direct/range {v7 .. v13}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    invoke-static {v6}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Labcd/aH;->j6(Labcd/yE;)J

    move-result-wide v14

    new-instance v8, Labcd/aH$a;

    move-wide/from16 v0, v20

    long-to-int v12, v0

    add-int/lit8 v13, v22, 0x14

    move-object/from16 v9, v17

    move-wide v10, v4

    invoke-direct/range {v8 .. v15}, Labcd/aH$a;-><init>(Labcd/aH$a;JIIJ)V

    iget v2, v8, Labcd/aH$a;->FH:I

    int-to-long v2, v2

    cmp-long v2, v20, v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v10, 0x0

    const/4 v7, -0x1

    move-object v9, v8

    move-object/from16 v6, v18

    :goto_2
    if-nez v6, :cond_7

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;

    move-result-object v6

    :goto_3
    return-object v6

    :cond_1
    invoke-virtual/range {p1 .. p1}, Labcd/wH;->v5()Labcd/EG;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v14, v15}, Labcd/EG;->j6(Labcd/aH;J)Labcd/EG$a;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Labcd/EG$a;->DW:I

    iget-object v2, v2, Labcd/EG$a;->j6:[B

    :goto_4
    const/4 v10, 0x1

    move-object v9, v8

    move-object v6, v2

    move v7, v3

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    move-wide/from16 p2, v4

    :goto_5
    new-instance v3, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/YC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_3
    add-int/lit8 v13, v22, 0x1

    aget-byte v2, v6, v22

    and-int/lit16 v7, v2, 0xff

    and-int/lit8 v2, v7, 0x7f

    int-to-long v2, v2

    :goto_6
    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_5

    sub-long v14, v4, v2

    :try_start_3
    new-instance v8, Labcd/aH$a;

    move-wide/from16 v0, v20

    long-to-int v12, v0

    move-object/from16 v9, v17

    move-wide v10, v4

    invoke-direct/range {v8 .. v15}, Labcd/aH$a;-><init>(Labcd/aH$a;JIIJ)V

    iget v2, v8, Labcd/aH$a;->FH:I

    int-to-long v2, v2

    cmp-long v2, v20, v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Labcd/wH;->v5()Labcd/EG;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v14, v15}, Labcd/EG;->j6(Labcd/aH;J)Labcd/EG$a;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Labcd/EG$a;->DW:I

    iget-object v2, v2, Labcd/EG$a;->j6:[B
    :try_end_3
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_4
    move-object/from16 v2, v16

    move-object/from16 v17, v8

    move-wide v4, v14

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v8, v13, 0x1

    aget-byte v7, v6, v13

    and-int/lit16 v7, v7, 0xff

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    const/4 v9, 0x7

    shl-long/2addr v2, v9

    and-int/lit8 v9, v7, 0x7f

    int-to-long v10, v9

    add-long/2addr v2, v10

    move v13, v8

    goto :goto_6

    :cond_6
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Labcd/wH;->Zo()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v20, v2

    if-gez v2, :cond_10

    move/from16 v0, v22

    int-to-long v2, v0

    add-long/2addr v2, v4

    move-wide/from16 v0, v20

    long-to-int v6, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v3, v6, v1}, Labcd/aH;->j6(JILabcd/wH;)[B
    :try_end_4
    .catch Ljava/util/zip/DataFormatException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    :goto_7
    if-eqz v17, :cond_c

    const/4 v10, 0x0

    move-object/from16 v9, v17

    move-object v6, v2

    goto/16 :goto_2

    :cond_7
    move v8, v10

    move-wide/from16 p2, v4

    :goto_8
    if-eqz v8, :cond_8

    const/4 v2, 0x0

    :goto_9
    :try_start_5
    iget-wide v0, v9, Labcd/aH$a;->DW:J

    move-wide/from16 p2, v0
    :try_end_5
    .catch Ljava/util/zip/DataFormatException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    iget v3, v9, Labcd/aH$a;->Hw:I

    int-to-long v4, v3

    add-long v4, v4, p2

    iget v3, v9, Labcd/aH$a;->FH:I

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v3, v1}, Labcd/aH;->j6(JILabcd/wH;)[B

    move-result-object v4

    if-nez v4, :cond_9

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;
    :try_end_6
    .catch Ljava/util/zip/DataFormatException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v6

    goto/16 :goto_3

    :cond_8
    :try_start_7
    iget-object v2, v9, Labcd/aH$a;->j6:Labcd/aH$a;

    if-nez v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Labcd/wH;->v5()Labcd/EG;

    move-result-object v2

    iget-wide v4, v9, Labcd/aH$a;->v5:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Labcd/EG;->j6(Labcd/aH;J[BI)V
    :try_end_7
    .catch Ljava/util/zip/DataFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move v2, v8

    goto :goto_9

    :cond_9
    :try_start_8
    invoke-static {v4}, Labcd/AH;->j6([B)J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v3, v12, v10

    if-gtz v3, :cond_a

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;
    :try_end_8
    .catch Ljava/util/zip/DataFormatException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v6

    goto/16 :goto_3

    :cond_a
    long-to-int v3, v10

    :try_start_9
    new-array v3, v3, [B
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    invoke-static {v6, v4, v3}, Labcd/AH;->j6([B[B[B)[B

    iget-object v4, v9, Labcd/aH$a;->j6:Labcd/aH$a;

    if-nez v4, :cond_b

    new-instance v6, Labcd/FE$a;

    invoke-direct {v6, v7, v3}, Labcd/FE$a;-><init>(I[B)V

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_5

    :cond_b
    move-object v6, v3

    move-object v9, v4

    move v8, v2

    goto :goto_8

    :catch_2
    move-exception v2

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;
    :try_end_a
    .catch Ljava/util/zip/DataFormatException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v6

    goto/16 :goto_3

    :cond_c
    if-eqz v2, :cond_d

    :try_start_b
    new-instance v6, Labcd/FE$a;

    invoke-direct {v6, v7, v2}, Labcd/FE$a;-><init>(I[B)V

    goto/16 :goto_3

    :cond_d
    new-instance v6, Labcd/PG;

    move-object/from16 v0, p1

    iget-object v14, v0, Labcd/wH;->v5:Labcd/GG;

    move-wide/from16 v8, v20

    move-wide v10, v4

    move/from16 v12, v22

    move-object/from16 v13, p0

    invoke-direct/range {v6 .. v14}, Labcd/PG;-><init>(IJJILabcd/aH;Labcd/GG;)V
    :try_end_b
    .catch Ljava/util/zip/DataFormatException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_3

    :cond_e
    aget-byte v2, v6, v22

    and-int/lit16 v8, v2, 0xff

    and-int/lit8 v2, v8, 0x7f

    shl-int/2addr v2, v11

    int-to-long v2, v2

    add-int/lit8 v9, v11, 0x7

    add-int/lit8 v12, v22, 0x1

    add-long v2, v2, v20

    move-object/from16 v16, p0

    move-wide/from16 v20, v2

    move v10, v8

    move v11, v9

    move/from16 v22, v12

    goto/16 :goto_1

    :catch_3
    move-exception v2

    goto/16 :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_5

    :cond_f
    move v2, v8

    goto/16 :goto_9

    :cond_10
    move-object/from16 v2, v19

    goto/16 :goto_7
.end method

.method VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/aH;->we:Z

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/aH;->Hw:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pack-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ".pack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Labcd/aH;->Hw:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method gn()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/aH;->we:Z

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Labcd/bH$b;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bH;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method j6(JI)Labcd/CG;
    .registers 11

    iget-object v6, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-wide v0, p0, Labcd/aH;->gn:J

    int-to-long v2, p3

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Labcd/aH;->gn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, p1

    long-to-int p3, v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v4, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Labcd/AG;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Labcd/AG;-><init>(Labcd/aH;J[B)V

    monitor-exit v6

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    iget-object v0, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v4, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/BG;

    invoke-direct {v0, p0, p1, p2, v1}, Labcd/BG;-><init>(Labcd/aH;JLjava/nio/ByteBuffer;)V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method j6(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 7

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    invoke-direct {p0, v0, v1}, Labcd/aH;->FH(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Labcd/aH;->Hw(Labcd/wH;J)Labcd/FE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6(J)Labcd/yE;
    .registers 4

    invoke-direct {p0}, Labcd/aH;->we()Labcd/lH;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/lH;->j6(J)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method final j6(Labcd/OH;Labcd/TG;ZLabcd/wH;)V
    .registers 6

    invoke-direct {p0, p2}, Labcd/aH;->j6(Labcd/MH;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/aH;->DW(Labcd/OH;Labcd/TG;ZLabcd/wH;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Labcd/aH;->EQ()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Labcd/aH;->EQ()V

    throw v0
.end method

.method j6(Labcd/OH;ZLabcd/wH;)V
    .registers 10

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p0, v0, v1}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-wide v2, p0, Labcd/aH;->gn:J

    move-object v0, p3

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Labcd/wH;->j6(Labcd/aH;JZLabcd/OH;)V

    return-void
.end method

.method j6(Ljava/util/Set;Labcd/WD;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Labcd/bH;->j6(Ljava/util/Set;Labcd/WD;I)V

    return-void
.end method

.method j6()Z
    .registers 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Labcd/aH;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/aH;->u7:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Labcd/aH;->tp:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Labcd/aH;->tp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Labcd/YD;)Z
    .registers 6

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    invoke-direct {p0, v0, v1}, Labcd/aH;->FH(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6(Labcd/wH;J)[B
    .registers 10

    const/16 v0, 0x12

    new-array v4, v0, [B

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Labcd/wH;->j6(Labcd/aH;J[BI)I

    return-object v4
.end method

.method public v5()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/aH;->FH:Ljava/io/File;

    return-object v0
.end method
