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
        "Ljava/lang/Iterable<",
        "Labcd/bH$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final j6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/aH;->VH:Ljava/lang/Object;

    iput-object p1, p0, Labcd/aH;->DW:Ljava/io/File;

    iput-object p2, p0, Labcd/aH;->FH:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    const/16 v0, 0xa

    shr-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Labcd/aH;->EQ:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    iput p1, p0, Labcd/aH;->v5:I

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Labcd/aH;->gn:J

    return-void
.end method

.method private DW(J)J
    .registers 8

    iget-wide v0, p0, Labcd/aH;->gn:J

    invoke-direct {p0}, Labcd/aH;->we()Labcd/lH;

    move-result-object v2

    const-wide/16 v3, 0x14

    sub-long/2addr v0, v3

    invoke-virtual {v2, p1, p2, v0, v1}, Labcd/lH;->j6(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private DW(Labcd/OH;Labcd/TG;ZLabcd/wH;)V
    .registers 38

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    const/4 v1, 0x0

    if-eqz p3, :cond_10

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    move-object v10, v2

    goto :goto_11

    :cond_10
    move-object v10, v1

    :goto_11
    if-eqz p3, :cond_18

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :cond_18
    move-object v11, v1

    invoke-virtual/range {p1 .. p1}, Labcd/OH;->FH()[B

    move-result-object v12

    iget-wide v2, v9, Labcd/TG;->aM:J

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object/from16 v1, p0

    move-object v4, v12

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v13, 0x0

    aget-byte v1, v12, v13

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v1, 0x4

    const/4 v3, 0x7

    and-int/2addr v2, v3

    and-int/lit8 v4, v1, 0xf

    int-to-long v4, v4

    const/4 v6, 0x4

    move-wide v6, v4

    const/4 v4, 0x4

    const/4 v15, 0x1

    :goto_3a
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2f6

    const/4 v1, 0x6

    if-ne v2, v1, :cond_59

    :goto_41
    add-int/lit8 v1, v15, 0x1

    aget-byte v2, v12, v15

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_57

    if-eqz p3, :cond_53

    invoke-virtual {v10, v12, v13, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v11, v12, v13, v1}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_53
    move v15, v1

    move-wide/from16 v17, v6

    goto :goto_8e

    :cond_57
    move v15, v1

    goto :goto_41

    :cond_59
    if-ne v2, v3, :cond_84

    if-eqz p3, :cond_63

    invoke-virtual {v10, v12, v13, v15}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v11, v12, v13, v15}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_63
    iget-wide v1, v9, Labcd/TG;->aM:J

    int-to-long v3, v15

    add-long/2addr v3, v1

    const/4 v5, 0x0

    const/16 v16, 0x14

    move-object/from16 v1, p0

    move-wide v2, v3

    move-object v4, v12

    move-wide/from16 v17, v6

    move/from16 v6, v16

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    if-eqz p3, :cond_81

    const/16 v1, 0x14

    invoke-virtual {v10, v12, v13, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v11, v12, v13, v1}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_81
    add-int/lit8 v15, v15, 0x14

    goto :goto_8e

    :cond_84
    move-wide/from16 v17, v6

    if-eqz p3, :cond_8e

    invoke-virtual {v10, v12, v13, v15}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v11, v12, v13, v15}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_8e
    :goto_8e
    iget-wide v1, v9, Labcd/TG;->aM:J

    int-to-long v3, v15

    add-long v5, v1, v3

    iget-wide v3, v9, Labcd/TG;->j3:J

    const/4 v15, 0x2

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    move-wide/from16 v25, v3

    move-wide v3, v5

    move-wide v13, v5

    move-wide/from16 v5, v25

    :try_start_a0
    invoke-virtual/range {v1 .. v6}, Labcd/wH;->j6(Labcd/aH;JJ)Labcd/AG;

    move-result-object v7
    :try_end_a4
    .catch Ljava/util/zip/DataFormatException; {:try_start_a0 .. :try_end_a4} :catch_2bf
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a4} :catch_2b4

    const-wide/16 v27, 0x0

    if-eqz p3, :cond_138

    :try_start_a8
    invoke-direct/range {p0 .. p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bH;->FH()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-direct/range {p0 .. p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v1

    invoke-virtual {v1, v9}, Labcd/bH;->j6(Labcd/YD;)J

    move-result-wide v19
    :try_end_ba
    .catch Ljava/util/zip/DataFormatException; {:try_start_a8 .. :try_end_ba} :catch_135
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ba} :catch_132

    move-wide/from16 v5, v25

    if-eqz v7, :cond_c3

    long-to-int v1, v5

    :try_start_bf
    invoke-virtual {v7, v10, v13, v14, v1}, Labcd/AG;->j6(Ljava/util/zip/CRC32;JI)V

    goto :goto_ca

    :cond_c3
    move-wide v2, v5

    move-wide/from16 v21, v13

    :goto_c6
    cmp-long v1, v2, v27

    if-gtz v1, :cond_102

    :goto_ca
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    cmp-long v3, v1, v19

    if-nez v3, :cond_db

    move-wide/from16 v29, v5

    move-object/from16 v26, v7

    move-object v8, v9

    move-object/from16 v21, v11

    goto/16 :goto_209

    :cond_db
    iget-wide v0, v9, Labcd/TG;->aM:J

    invoke-direct {v8, v0, v1}, Labcd/aH;->Hw(J)V

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    iget-wide v3, v9, Labcd/TG;->aM:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_102
    .catch Ljava/util/zip/DataFormatException; {:try_start_bf .. :try_end_102} :catch_2bf
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_102} :catch_2b4

    :cond_102
    :try_start_102
    array-length v1, v12

    move-wide/from16 v25, v5

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v6, v4

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v23, v2

    move-wide/from16 v2, v21

    move-object v4, v12

    move-wide/from16 v8, v25

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    move/from16 v1, v25

    const/4 v2, 0x0

    invoke-virtual {v10, v12, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v1, v1

    add-long v21, v21, v1

    sub-long v1, v23, v1

    move-wide v2, v1

    move-wide v5, v8

    move-object/from16 v7, v26

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    goto :goto_c6

    :catch_132
    move-exception v0

    goto/16 :goto_1aa

    :catch_135
    move-exception v0

    goto/16 :goto_1b1

    :cond_138
    move-wide/from16 v8, v25

    move-object/from16 v26, v7

    if-eqz p3, :cond_201

    invoke-virtual/range {p4 .. p4}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v7

    const/16 v6, 0x400

    new-array v5, v6, [B

    if-eqz v26, :cond_157

    long-to-int v1, v8

    move-object/from16 v19, v26

    move-object/from16 v20, v7

    move-object/from16 v21, v5

    move-wide/from16 v22, v13

    move/from16 v24, v1

    invoke-virtual/range {v19 .. v24}, Labcd/AG;->j6(Ljava/util/zip/Inflater;[BJI)V
    :try_end_156
    .catch Ljava/util/zip/DataFormatException; {:try_start_102 .. :try_end_156} :catch_135
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_156} :catch_132

    goto :goto_15e

    :cond_157
    move-wide v2, v8

    move-wide/from16 v19, v13

    :goto_15a
    cmp-long v1, v2, v27

    if-gtz v1, :cond_1b5

    :goto_15e
    :try_start_15e
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1
    :try_end_162
    .catch Ljava/util/zip/DataFormatException; {:try_start_15e .. :try_end_162} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_162} :catch_1a7

    if-eqz v1, :cond_178

    :try_start_164
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-nez v3, :cond_178

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v19
    :try_end_170
    .catch Ljava/util/zip/DataFormatException; {:try_start_164 .. :try_end_170} :catch_135
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_170} :catch_132

    move-wide/from16 v29, v8

    move-object/from16 v21, v11

    move-object/from16 v8, p2

    goto/16 :goto_209

    :cond_178
    move-object/from16 v8, p2

    :try_start_17a
    iget-wide v0, v8, Labcd/TG;->aM:J
    :try_end_17c
    .catch Ljava/util/zip/DataFormatException; {:try_start_17a .. :try_end_17c} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17c} :catch_19d

    move-object/from16 v9, p0

    :try_start_17e
    invoke-direct {v9, v0, v1}, Labcd/aH;->Hw(J)V

    new-instance v0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->shortCompressedStreamAt:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v4, v8, Labcd/TG;->aM:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_19d
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_2b6

    :catch_1a2
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_2c1

    :catch_1a7
    move-exception v0

    move-object/from16 v9, p0

    :goto_1aa
    move-object/from16 v8, p2

    goto/16 :goto_2b6

    :catch_1ae
    move-exception v0

    move-object/from16 v9, p0

    :goto_1b1
    move-object/from16 v8, p2

    goto/16 :goto_2c1

    :cond_1b5
    move-wide/from16 v29, v8

    move-object/from16 v9, p0

    move-object/from16 v8, p2

    array-length v1, v12

    move-object/from16 v22, v7

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v23, v2

    move-wide/from16 v2, v19

    move-object v4, v12

    move-object v15, v5

    move v5, v6

    move v6, v7

    move-object/from16 v21, v11

    move-object/from16 v9, v22

    move v11, v7

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v12, v1, v11}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v9, v12, v1, v11}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_1e0
    const/16 v2, 0x400

    invoke-virtual {v9, v15, v1, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3
    :try_end_1e6
    .catch Ljava/util/zip/DataFormatException; {:try_start_17e .. :try_end_1e6} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_1e6} :catch_1fb

    if-gtz v3, :cond_1f9

    int-to-long v3, v11

    add-long v19, v19, v3

    sub-long v3, v23, v3

    move-wide v2, v3

    move-object v7, v9

    move-object v5, v15

    move-object/from16 v11, v21

    move-wide/from16 v8, v29

    const/16 v6, 0x400

    const/4 v15, 0x2

    goto/16 :goto_15a

    :cond_1f9
    const/4 v1, 0x0

    goto :goto_1e0

    :catch_1fb
    move-exception v0

    goto/16 :goto_2b6

    :catch_1fe
    move-exception v0

    goto/16 :goto_2c1

    :cond_201
    move-wide/from16 v29, v8

    move-object/from16 v21, v11

    move-object/from16 v8, p2

    const-wide/16 v19, -0x1

    :goto_209
    move-wide/from16 v9, v17

    if-eqz v26, :cond_21e

    invoke-virtual {v0, v8, v9, v10}, Labcd/OH;->j6(Labcd/MH;J)V

    move-wide/from16 v6, v29

    long-to-int v5, v6

    const/4 v6, 0x0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Labcd/AG;->j6(Labcd/OH;JILjava/security/MessageDigest;)V

    goto/16 :goto_290

    :cond_21e
    move-wide/from16 v6, v29

    array-length v1, v12

    int-to-long v1, v1

    cmp-long v3, v6, v1

    if-gtz v3, :cond_259

    if-nez p3, :cond_24c

    move-wide/from16 v17, v13

    move-wide v13, v6

    :goto_22b
    cmp-long v1, v13, v27

    if-gtz v1, :cond_230

    goto :goto_24c

    :cond_230
    array-length v1, v12

    int-to-long v1, v1

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v11, v1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    move-object v4, v12

    move-wide/from16 v31, v6

    move v6, v11

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    int-to-long v1, v11

    add-long v17, v17, v1

    sub-long/2addr v13, v1

    move-wide/from16 v6, v31

    goto :goto_22b

    :cond_24c
    :goto_24c
    move-wide/from16 v31, v6

    invoke-virtual {v0, v8, v9, v10}, Labcd/OH;->j6(Labcd/MH;J)V

    move-wide/from16 v1, v31

    long-to-int v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1, v2}, Labcd/OH;->write([BII)V

    goto :goto_290

    :cond_259
    move-wide v1, v6

    invoke-virtual {v0, v8, v9, v10}, Labcd/OH;->j6(Labcd/MH;J)V

    move-wide v9, v1

    :goto_25e
    cmp-long v1, v9, v27

    if-gtz v1, :cond_291

    if-eqz p3, :cond_290

    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    cmp-long v2, v0, v19

    if-nez v2, :cond_26d

    goto :goto_290

    :cond_26d
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v8, Labcd/TG;->aM:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_290
    :goto_290
    return-void

    :cond_291
    array-length v1, v12

    int-to-long v1, v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v11, v1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide v2, v13

    move-object v4, v12

    move v6, v11

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    move-object/from16 v1, v21

    const/4 v2, 0x0

    if-eqz p3, :cond_2ab

    invoke-virtual {v1, v12, v2, v11}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_2ab
    invoke-virtual {v0, v12, v2, v11}, Labcd/OH;->write([BII)V

    int-to-long v2, v11

    add-long/2addr v13, v2

    sub-long/2addr v9, v2

    move-object/from16 v21, v1

    goto :goto_25e

    :catch_2b4
    move-exception v0

    move-object v8, v9

    :goto_2b6
    new-instance v1, Labcd/tD;

    invoke-direct {v1, v8}, Labcd/tD;-><init>(Labcd/MH;)V

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_2bf
    move-exception v0

    move-object v8, v9

    :goto_2c1
    iget-wide v1, v8, Labcd/TG;->aM:J

    move-object/from16 v5, p0

    invoke-direct {v5, v1, v2}, Labcd/aH;->Hw(J)V

    new-instance v1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v6, v8, Labcd/TG;->aM:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v0, Labcd/tD;

    invoke-direct {v0, v8}, Labcd/tD;-><init>(Labcd/MH;)V

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_2f6
    move-wide v13, v6

    move-object v5, v8

    move-object v8, v9

    move-object v1, v11

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-byte v9, v12, v15

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v11, v9, 0x7f

    shl-int/2addr v11, v4

    int-to-long v6, v11

    add-long/2addr v6, v13

    add-int/2addr v4, v3

    add-int/lit8 v15, v15, 0x1

    move-object v11, v1

    move v1, v9

    const/4 v13, 0x0

    move-object v9, v8

    move-object v8, v5

    goto/16 :goto_3a
.end method

.method private EQ()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Labcd/aH;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/aH;->tp:I

    if-nez v0, :cond_10

    iget v0, p0, Labcd/aH;->u7:I

    if-nez v0, :cond_10

    invoke-direct {p0}, Labcd/aH;->u7()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private FH(J)Z
    .registers 4

    iget-object v0, p0, Labcd/aH;->QX:Labcd/DK;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    monitor-enter v0

    :try_start_7
    invoke-virtual {v0, p1, p2}, Labcd/DK;->DW(J)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw p1
.end method

.method private Hw(J)V
    .registers 5

    iget-object v0, p0, Labcd/aH;->QX:Labcd/DK;

    if-nez v0, :cond_17

    iget-object v1, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Labcd/aH;->QX:Labcd/DK;

    if-nez v0, :cond_12

    new-instance v0, Labcd/DK;

    invoke-direct {v0}, Labcd/DK;-><init>()V

    iput-object v0, p0, Labcd/aH;->QX:Labcd/DK;

    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    :goto_17
    monitor-enter v0

    :try_start_18
    invoke-virtual {v0, p1, p2}, Labcd/DK;->j6(J)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private J0()Labcd/bH;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Labcd/aH;->J8:Labcd/bH;

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Labcd/aH;->we:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_40

    if-nez v0, :cond_34

    :try_start_9
    iget-object v0, p0, Labcd/aH;->DW:Ljava/io/File;

    invoke-static {v0}, Labcd/bH;->j6(Ljava/io/File;)Labcd/bH;

    move-result-object v0

    iget-object v1, p0, Labcd/aH;->J0:[B

    if-nez v1, :cond_18

    iget-object v1, v0, Labcd/bH;->j6:[B

    iput-object v1, p0, Labcd/aH;->J0:[B

    goto :goto_20

    :cond_18
    iget-object v2, v0, Labcd/bH;->j6:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_23

    :goto_20
    iput-object v0, p0, Labcd/aH;->J8:Labcd/bH;

    goto :goto_3c

    :cond_23
    new-instance v0, Labcd/mD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packChecksumMismatch:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/mD;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_40

    :catch_2f
    move-exception v0

    const/4 v1, 0x1

    :try_start_31
    iput-boolean v1, p0, Labcd/aH;->we:Z

    throw v0

    :cond_34
    new-instance v0, Labcd/lD;

    iget-object v1, p0, Labcd/aH;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Labcd/lD;-><init>(Ljava/io/File;)V

    throw v0

    :cond_3c
    :goto_3c
    iget-object v0, p0, Labcd/aH;->J8:Labcd/bH;
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-object v0

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private J8()V
    .registers 14

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    const/16 v1, 0x14

    new-array v2, v1, [B

    iget-object v3, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    sget-object v3, Labcd/hE;->v5:[B

    invoke-static {v2, v5, v3}, Labcd/IK;->j6([BI[B)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c8

    invoke-static {v2, v4}, Labcd/FK;->FH([BI)J

    move-result-wide v3

    const/16 v6, 0x8

    invoke-static {v2, v6}, Labcd/FK;->FH([BI)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    const/4 v10, 0x1

    cmp-long v11, v3, v8

    if-eqz v11, :cond_50

    const-wide/16 v8, 0x3

    cmp-long v11, v3, v8

    if-nez v11, :cond_38

    goto :goto_50

    :cond_38
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedPackVersion:Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    :goto_50
    invoke-virtual {v0}, Labcd/bH;->j6()J

    move-result-wide v3

    const/4 v8, 0x2

    const/4 v9, 0x3

    cmp-long v11, v6, v3

    if-nez v11, :cond_a0

    iget-object v3, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Labcd/aH;->gn:J

    const-wide/16 v11, 0x14

    sub-long/2addr v6, v11

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2, v5, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v1, p0, Labcd/aH;->J0:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_72

    return-void

    :cond_72
    new-instance v1, Labcd/mD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->packObjectCountMismatch:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    iget-object v0, v0, Labcd/bH;->j6:[B

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/mD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a0
    new-instance v1, Labcd/mD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packObjectCountMismatch:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Labcd/bH;->j6()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/mD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c8
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
    .registers 1

    iget p0, p0, Labcd/aH;->EQ:I

    return p0
.end method

.method private j6(Labcd/yE;)J
    .registers 7

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    return-wide v0

    :cond_f
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

    move-result p1

    if-ne p1, p5, :cond_d

    return-void

    :cond_d
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private j6(Labcd/MH;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Labcd/aH;->tp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Labcd/aH;->tp:I

    if-ne v0, v1, :cond_1b

    iget v0, p0, Labcd/aH;->u7:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1d

    if-nez v0, :cond_1b

    :try_start_d
    invoke-direct {p0}, Labcd/aH;->tp()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_1d

    goto :goto_1b

    :catch_11
    move-exception v0

    :try_start_12
    new-instance v1, Labcd/tD;

    invoke-direct {v1, p1}, Labcd/tD;-><init>(Labcd/MH;)V

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1d

    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final j6(JILabcd/wH;)[B
    .registers 12

    :try_start_0
    new-array v6, p3, [B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_2} :catch_28

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Labcd/wH;->j6(Labcd/aH;J[BI)I

    move-result p4

    if-ne p4, p3, :cond_e

    return-object v6

    :cond_e
    new-instance p3, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p4

    iget-object p4, p4, Lorg/eclipse/jgit/JGitText;->shortCompressedStreamAt:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p3

    :catch_28
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private tp()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Labcd/aH;->we:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_2d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_28

    :try_start_7
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Labcd/aH;->FH:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    iput-wide v1, p0, Labcd/aH;->gn:J

    invoke-direct {p0}, Labcd/aH;->J8()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1

    :cond_20
    new-instance v0, Labcd/lD;

    iget-object v1, p0, Labcd/aH;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Labcd/lD;-><init>(Ljava/io/File;)V

    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_28} :catch_2d
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    invoke-direct {p0}, Labcd/aH;->Ws()V

    throw v0

    :catch_2d
    move-exception v0

    invoke-direct {p0}, Labcd/aH;->Ws()V

    throw v0

    :catch_32
    move-exception v0

    invoke-direct {p0}, Labcd/aH;->Ws()V

    throw v0
.end method

.method private u7()V
    .registers 3

    iget-object v0, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_f

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_11

    goto :goto_c

    :catch_b
    move-exception v1

    :goto_c
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v1
.end method

.method private we()Labcd/lH;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Labcd/aH;->Ws:Labcd/lH;

    if-nez v0, :cond_10

    new-instance v0, Labcd/lH;

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/lH;-><init>(Labcd/bH;)V

    iput-object v0, p0, Labcd/aH;->Ws:Labcd/lH;

    :cond_10
    iget-object v0, p0, Labcd/aH;->Ws:Labcd/lH;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method DW(Labcd/wH;J)J
    .registers 19

    move-object/from16 v0, p1

    iget-object v8, v0, Labcd/wH;->j6:[B

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v1, p0

    move-wide/from16 v2, p2

    move-object v4, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v1, 0x0

    aget-byte v2, v8, v1

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    const/4 v4, 0x7

    and-int/2addr v3, v4

    and-int/lit8 v5, v2, 0xf

    int-to-long v5, v5

    const/4 v7, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x4

    :goto_20
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_92

    if-eq v3, v9, :cond_90

    const/4 v2, 0x2

    if-eq v3, v2, :cond_90

    const/4 v11, 0x3

    if-eq v3, v11, :cond_90

    if-eq v3, v7, :cond_90

    const/4 v5, 0x6

    if-eq v3, v5, :cond_52

    if-ne v3, v4, :cond_3a

    int-to-long v3, v10

    add-long v3, p2, v3

    const-wide/16 v5, 0x14

    add-long/2addr v3, v5

    goto :goto_5f

    :cond_3a
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    add-int/lit8 v3, v10, 0x1

    aget-byte v4, v8, v10

    and-int/lit16 v4, v4, 0xff

    :goto_58
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_88

    int-to-long v3, v3

    add-long v3, p2, v3

    :goto_5f
    move-object v12, p0

    :try_start_60
    invoke-virtual {p0, v0, v3, v4}, Labcd/aH;->j6(Labcd/wH;J)[B

    move-result-object v0

    invoke-static {v0}, Labcd/AH;->j6([B)J

    move-result-wide v0
    :try_end_68
    .catch Ljava/util/zip/DataFormatException; {:try_start_60 .. :try_end_68} :catch_69

    return-wide v0

    :catch_69
    move-exception v0

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    move-object v12, p0

    aget-byte v4, v8, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_90
    move-object v12, p0

    return-wide v5

    :cond_92
    move-object v12, p0

    aget-byte v2, v8, v10

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v13, v2, 0x7f

    shl-int/2addr v13, v11

    int-to-long v13, v13

    add-long/2addr v5, v13

    add-int/2addr v11, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_20
.end method

.method DW(Labcd/wH;Labcd/YD;)J
    .registers 7

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v2, v0

    if-gez p2, :cond_13

    invoke-virtual {p0, p1, v0, v1}, Labcd/aH;->DW(Labcd/wH;J)J

    move-result-wide p1

    goto :goto_15

    :cond_13
    const-wide/16 p1, -0x1

    :goto_15
    return-wide p1
.end method

.method DW(JI)Labcd/AG;
    .registers 10

    iget-object v0, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Labcd/aH;->gn:J

    int-to-long v3, p3

    add-long/2addr v3, p1

    cmp-long v5, v1, v3

    if-gez v5, :cond_d

    sub-long/2addr v1, p1

    long-to-int p3, v1

    :cond_d
    new-array v1, p3, [B

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    new-instance p3, Labcd/AG;

    invoke-direct {p3, p0, p1, p2, v1}, Labcd/AG;-><init>(Labcd/aH;J[B)V

    monitor-exit v0

    return-object p3

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public DW()V
    .registers 2

    invoke-static {p0}, Labcd/uH;->j6(Labcd/aH;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Labcd/aH;->J8:Labcd/bH;

    iput-object v0, p0, Labcd/aH;->Ws:Labcd/lH;

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method FH(Labcd/wH;J)I
    .registers 14

    iget-object v7, p1, Labcd/wH;->j6:[B

    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object v0, p0

    move-wide v1, p2

    move-object v3, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v0, 0x0

    aget-byte v1, v7, v0

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v1, 0x4

    const/4 v3, 0x7

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_87

    const/4 v5, 0x2

    if-eq v2, v5, :cond_87

    const/4 v5, 0x3

    if-eq v2, v5, :cond_87

    const/4 v5, 0x4

    if-eq v2, v5, :cond_87

    const/4 v5, 0x6

    if-eq v2, v5, :cond_5e

    if-ne v2, v3, :cond_46

    :goto_26
    and-int/lit16 v0, v1, 0x80

    if-nez v0, :cond_3f

    int-to-long v0, v4

    add-long/2addr p2, v0

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object v0, p0

    move-wide v1, p2

    move-object v3, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    invoke-static {v7}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object p2

    invoke-direct {p0, p2}, Labcd/aH;->j6(Labcd/yE;)J

    move-result-wide p2

    goto :goto_2

    :cond_3f
    aget-byte v0, v7, v4

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_46
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    const/4 v0, 0x1

    :goto_5f
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_80

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v2, v0, 0x7f

    int-to-long v5, v2

    :goto_6c
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_72

    sub-long/2addr p2, v5

    goto :goto_2

    :cond_72
    aget-byte v0, v7, v1

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    shl-long/2addr v5, v3

    and-int/lit8 v2, v0, 0x7f

    int-to-long v8, v2

    add-long/2addr v5, v8

    add-int/2addr v1, v4

    goto :goto_6c

    :cond_80
    aget-byte v1, v7, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    :cond_87
    return v2
.end method

.method FH(Labcd/wH;Labcd/YD;)Labcd/SG;
    .registers 19

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-gez v2, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    move-object/from16 v10, p1

    iget-object v11, v10, Labcd/wH;->j6:[B

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-wide v1, v8

    move-object v3, v11

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    const/4 v0, 0x0

    aget-byte v1, v11, v0

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v1, 0x4

    const/4 v3, 0x7

    and-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_2f
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_b1

    invoke-direct {v7, v8, v9}, Labcd/aH;->DW(J)J

    move-result-wide v12

    sub-long/2addr v12, v8

    if-eq v2, v4, :cond_aa

    const/4 v1, 0x2

    if-eq v2, v1, :cond_aa

    const/4 v1, 0x3

    if-eq v2, v1, :cond_aa

    const/4 v1, 0x4

    if-eq v2, v1, :cond_aa

    const/4 v1, 0x6

    if-eq v2, v1, :cond_7f

    if-ne v2, v3, :cond_67

    int-to-long v14, v5

    add-long v1, v8, v14

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    sub-long/2addr v12, v14

    const-wide/16 v0, 0x14

    sub-long v3, v12, v0

    invoke-static {v11}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-static/range {v0 .. v5}, Labcd/SG;->j6(Labcd/aH;JJLabcd/yE;)Labcd/SG;

    move-result-object v0

    return-object v0

    :cond_67
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7f
    add-int/lit8 v0, v5, 0x1

    aget-byte v1, v11, v5

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v2, v1, 0x7f

    int-to-long v4, v2

    :goto_88
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_9b

    int-to-long v0, v0

    sub-long v10, v12, v0

    sub-long v12, v8, v4

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move-wide v5, v12

    invoke-static/range {v0 .. v6}, Labcd/SG;->j6(Labcd/aH;JJJ)Labcd/SG;

    move-result-object v0

    return-object v0

    :cond_9b
    aget-byte v1, v11, v0

    and-int/lit16 v1, v1, 0xff

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    shl-long/2addr v4, v3

    and-int/lit8 v2, v1, 0x7f

    int-to-long v14, v2

    add-long/2addr v4, v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    :cond_aa
    int-to-long v0, v5

    sub-long/2addr v12, v0

    invoke-static {v7, v8, v9, v12, v13}, Labcd/SG;->j6(Labcd/aH;JJ)Labcd/SG;

    move-result-object v0

    return-object v0

    :cond_b1
    aget-byte v1, v11, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v1, v1, 0xff

    goto/16 :goto_2f
.end method

.method FH()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Labcd/aH;->u7:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/aH;->u7:I

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_15

    iget v1, p0, Labcd/aH;->tp:I

    if-nez v1, :cond_15

    invoke-direct {p0}, Labcd/aH;->u7()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return v0

    :catchall_17
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

    move-object/from16 v8, p1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_5
    iget-object v0, v8, Labcd/wH;->j6:[B
    :try_end_7
    .catch Ljava/util/zip/DataFormatException; {:try_start_5 .. :try_end_7} :catch_19a

    move-object/from16 v13, p0

    move-wide/from16 v22, p2

    const/4 v14, 0x0

    :goto_c
    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-object v4, v0

    move-object/from16 v7, p1

    :try_start_16
    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V
    :try_end_19
    .catch Ljava/util/zip/DataFormatException; {:try_start_16 .. :try_end_19} :catch_198

    aget-byte v1, v0, v10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v1, 0x4

    const/4 v3, 0x7

    and-int/2addr v2, v3

    and-int/lit8 v4, v1, 0xf

    int-to-long v4, v4

    const/4 v6, 0x4

    move-object v15, v13

    const/4 v7, 0x4

    const/4 v13, 0x1

    :goto_28
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_182

    if-eq v2, v11, :cond_ec

    if-eq v2, v9, :cond_ec

    const/4 v1, 0x3

    if-eq v2, v1, :cond_ec

    if-eq v2, v6, :cond_ec

    const/4 v1, 0x6

    if-eq v2, v1, :cond_96

    if-ne v2, v3, :cond_7d

    int-to-long v1, v13

    add-long v6, v22, v1

    const/16 v16, 0x0

    const/16 v17, 0x14

    move-object/from16 v1, p0

    move-wide v2, v6

    move-wide v6, v4

    move-object v4, v0

    move/from16 v5, v16

    move-wide v9, v6

    move/from16 v6, v17

    move-object/from16 v7, p1

    :try_start_4d
    invoke-direct/range {v1 .. v7}, Labcd/aH;->j6(J[BIILabcd/wH;)V

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v1

    invoke-direct {v15, v1}, Labcd/aH;->j6(Labcd/yE;)J

    move-result-wide v1

    new-instance v3, Labcd/aH$a;

    long-to-int v4, v9

    add-int/lit8 v18, v13, 0x14

    move-object v13, v3

    move-object v5, v15

    move-wide/from16 v15, v22

    move/from16 v17, v4

    move-wide/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Labcd/aH$a;-><init>(Labcd/aH$a;JIIJ)V

    iget v4, v3, Labcd/aH$a;->FH:I

    int-to-long v6, v4

    cmp-long v4, v9, v6

    if-eqz v4, :cond_70

    goto :goto_bd

    :cond_70
    invoke-virtual/range {p1 .. p1}, Labcd/wH;->v5()Labcd/EG;

    move-result-object v4

    invoke-virtual {v4, v5, v1, v2}, Labcd/EG;->j6(Labcd/aH;J)Labcd/EG$a;

    move-result-object v4

    if-eqz v4, :cond_d5

    iget v0, v4, Labcd/EG$a;->DW:I

    goto :goto_ce

    :cond_7d
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_96
    .catch Ljava/util/zip/DataFormatException; {:try_start_4d .. :try_end_96} :catch_198

    :cond_96
    move-wide v9, v4

    move-object v5, v15

    add-int/lit8 v1, v13, 0x1

    aget-byte v2, v0, v13

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v4, v2, 0x7f

    int-to-long v6, v4

    :goto_a1
    move/from16 v18, v1

    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_dd

    sub-long v1, v22, v6

    :try_start_a9
    new-instance v3, Labcd/aH$a;

    long-to-int v4, v9

    move-object v13, v3

    move-wide/from16 v15, v22

    move/from16 v17, v4

    move-wide/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Labcd/aH$a;-><init>(Labcd/aH$a;JIIJ)V

    iget v4, v3, Labcd/aH$a;->FH:I

    int-to-long v6, v4

    cmp-long v4, v9, v6

    if-eqz v4, :cond_c2

    :goto_bd
    move-object v14, v3

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_105

    :cond_c2
    invoke-virtual/range {p1 .. p1}, Labcd/wH;->v5()Labcd/EG;

    move-result-object v4

    invoke-virtual {v4, v5, v1, v2}, Labcd/EG;->j6(Labcd/aH;J)Labcd/EG$a;

    move-result-object v4

    if-eqz v4, :cond_d5

    iget v0, v4, Labcd/EG$a;->DW:I

    :goto_ce
    iget-object v1, v4, Labcd/EG$a;->j6:[B
    :try_end_d0
    .catch Ljava/util/zip/DataFormatException; {:try_start_a9 .. :try_end_d0} :catch_198

    move v2, v0

    move-object v12, v1

    move-object v14, v3

    const/4 v4, 0x1

    goto :goto_105

    :cond_d5
    move-wide/from16 v22, v1

    move-object v14, v3

    move-object v13, v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_dd
    add-int/lit8 v1, v18, 0x1

    aget-byte v2, v0, v18

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v15, 0x1

    add-long/2addr v6, v15

    shl-long/2addr v6, v3

    and-int/lit8 v4, v2, 0x7f

    int-to-long v12, v4

    add-long/2addr v6, v12

    goto :goto_a1

    :cond_ec
    move-wide v9, v4

    move-object v5, v15

    :try_start_ee
    invoke-virtual/range {p1 .. p1}, Labcd/wH;->Zo()I

    move-result v0

    int-to-long v0, v0

    cmp-long v3, v9, v0

    if-gez v3, :cond_101

    int-to-long v0, v13

    add-long v0, v22, v0

    long-to-int v3, v9

    invoke-direct {v5, v0, v1, v3, v8}, Labcd/aH;->j6(JILabcd/wH;)[B

    move-result-object v0

    move-object v12, v0

    goto :goto_102

    :cond_101
    const/4 v12, 0x0

    :goto_102
    if-eqz v14, :cond_166

    const/4 v4, 0x0

    :goto_105
    if-nez v12, :cond_10c

    invoke-virtual {v14, v5, v8}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;

    move-result-object v0

    return-object v0

    :cond_10c
    :goto_10c
    if-eqz v4, :cond_110

    const/4 v4, 0x0

    goto :goto_125

    :cond_110
    iget-object v0, v14, Labcd/aH$a;->j6:Labcd/aH$a;

    if-nez v0, :cond_125

    invoke-virtual/range {p1 .. p1}, Labcd/wH;->v5()Labcd/EG;

    move-result-object v15

    iget-wide v0, v14, Labcd/aH$a;->v5:J

    move-object/from16 v16, p0

    move-wide/from16 v17, v0

    move-object/from16 v19, v12

    move/from16 v20, v2

    invoke-virtual/range {v15 .. v20}, Labcd/EG;->j6(Labcd/aH;J[BI)V

    :cond_125
    :goto_125
    iget-wide v6, v14, Labcd/aH$a;->DW:J
    :try_end_127
    .catch Ljava/util/zip/DataFormatException; {:try_start_ee .. :try_end_127} :catch_198

    :try_start_127
    iget v0, v14, Labcd/aH$a;->Hw:I

    int-to-long v0, v0

    add-long/2addr v0, v6

    iget v3, v14, Labcd/aH$a;->FH:I

    invoke-direct {v5, v0, v1, v3, v8}, Labcd/aH;->j6(JILabcd/wH;)[B

    move-result-object v0

    if-nez v0, :cond_138

    invoke-virtual {v14, v5, v8}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;

    move-result-object v0

    return-object v0

    :cond_138
    invoke-static {v0}, Labcd/AH;->j6([B)J

    move-result-wide v9

    const-wide/32 v15, 0x7fffffff

    cmp-long v1, v15, v9

    if-gtz v1, :cond_148

    invoke-virtual {v14, v5, v8}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;

    move-result-object v0
    :try_end_147
    .catch Ljava/util/zip/DataFormatException; {:try_start_127 .. :try_end_147} :catch_162

    return-object v0

    :cond_148
    long-to-int v1, v9

    :try_start_149
    new-array v1, v1, [B
    :try_end_14b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_149 .. :try_end_14b} :catch_15c
    .catch Ljava/util/zip/DataFormatException; {:try_start_149 .. :try_end_14b} :catch_162

    :try_start_14b
    invoke-static {v12, v0, v1}, Labcd/AH;->j6([B[B[B)[B

    iget-object v14, v14, Labcd/aH$a;->j6:Labcd/aH$a;

    if-nez v14, :cond_158

    new-instance v0, Labcd/FE$a;

    invoke-direct {v0, v2, v1}, Labcd/FE$a;-><init>(I[B)V

    return-object v0

    :cond_158
    move-object v12, v1

    move-wide/from16 v22, v6

    goto :goto_10c

    :catch_15c
    move-exception v0

    invoke-virtual {v14, v5, v8}, Labcd/aH$a;->j6(Labcd/aH;Labcd/wH;)Labcd/FE;

    move-result-object v0
    :try_end_161
    .catch Ljava/util/zip/DataFormatException; {:try_start_14b .. :try_end_161} :catch_162

    return-object v0

    :catch_162
    move-exception v0

    move-wide/from16 v22, v6

    goto :goto_19d

    :cond_166
    if-eqz v12, :cond_16e

    :try_start_168
    new-instance v0, Labcd/FE$a;

    invoke-direct {v0, v2, v12}, Labcd/FE$a;-><init>(I[B)V

    return-object v0

    :cond_16e
    new-instance v0, Labcd/PG;

    iget-object v1, v8, Labcd/wH;->v5:Labcd/GG;

    move v4, v13

    move-object v13, v0

    move v14, v2

    move-wide v15, v9

    move-wide/from16 v17, v22

    move/from16 v19, v4

    move-object/from16 v20, p0

    move-object/from16 v21, v1

    invoke-direct/range {v13 .. v21}, Labcd/PG;-><init>(IJJILabcd/aH;Labcd/GG;)V
    :try_end_181
    .catch Ljava/util/zip/DataFormatException; {:try_start_168 .. :try_end_181} :catch_198

    return-object v0

    :cond_182
    move-wide v9, v4

    move v4, v13

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v5, v1, 0x7f

    shl-int/2addr v5, v7

    int-to-long v12, v5

    add-int/2addr v7, v3

    add-int/lit8 v4, v4, 0x1

    add-long/2addr v9, v12

    move-object/from16 v15, p0

    move v13, v4

    move-wide v4, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_28

    :catch_198
    move-exception v0

    goto :goto_19d

    :catch_19a
    move-exception v0

    move-wide/from16 v22, p2

    :goto_19d
    new-instance v1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->objectAtHasBadZlibStream:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual/range {p0 .. p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_1c1

    :goto_1c0
    throw v1

    :goto_1c1
    goto :goto_1c0
.end method

.method VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/aH;->we:Z

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/aH;->Hw:Ljava/lang/String;

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pack-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_19
    const-string v1, ".pack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    iput-object v0, p0, Labcd/aH;->Hw:Ljava/lang/String;

    :cond_2d
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
            "Ljava/util/Iterator<",
            "Labcd/bH$b;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bH;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method j6(JI)Labcd/CG;
    .registers 12

    iget-object v0, p0, Labcd/aH;->VH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Labcd/aH;->gn:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_49

    int-to-long v3, p3

    add-long/2addr v3, p1

    cmp-long v5, v1, v3

    if-gez v5, :cond_d

    sub-long/2addr v1, p1

    long-to-int p3, v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v6, p3

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p3
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_1c
    .catchall {:try_start_d .. :try_end_1b} :catchall_49

    goto :goto_31

    :catch_1c
    move-exception v1

    :try_start_1d
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    iget-object v1, p0, Labcd/aH;->Zo:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v6, p3

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p3

    :goto_31
    invoke-virtual {p3}, Ljava/nio/MappedByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Labcd/AG;

    invoke-virtual {p3}, Ljava/nio/MappedByteBuffer;->array()[B

    move-result-object p3

    invoke-direct {v1, p0, p1, p2, p3}, Labcd/AG;-><init>(Labcd/aH;J[B)V

    monitor-exit v0

    return-object v1

    :cond_42
    new-instance v1, Labcd/BG;

    invoke-direct {v1, p0, p1, p2, p3}, Labcd/BG;-><init>(Labcd/aH;JLjava/nio/ByteBuffer;)V

    monitor-exit v0

    return-object v1

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_1d .. :try_end_4b} :catchall_49

    throw p1
.end method

.method j6(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 7

    invoke-direct {p0}, Labcd/aH;->J0()Labcd/bH;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/bH;->DW(Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v2, v0

    if-gez p2, :cond_19

    invoke-direct {p0, v0, v1}, Labcd/aH;->FH(J)Z

    move-result p2

    if-nez p2, :cond_19

    invoke-virtual {p0, p1, v0, v1}, Labcd/aH;->Hw(Labcd/wH;J)Labcd/FE;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return-object p1
.end method

.method j6(J)Labcd/yE;
    .registers 4

    invoke-direct {p0}, Labcd/aH;->we()Labcd/lH;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/lH;->j6(J)Labcd/yE;

    move-result-object p1

    return-object p1
.end method

.method final j6(Labcd/OH;Labcd/TG;ZLabcd/wH;)V
    .registers 5

    invoke-direct {p0, p2}, Labcd/aH;->j6(Labcd/MH;)V

    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/aH;->DW(Labcd/OH;Labcd/TG;ZLabcd/wH;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-direct {p0}, Labcd/aH;->EQ()V

    return-void

    :catchall_a
    move-exception p1

    invoke-direct {p0}, Labcd/aH;->EQ()V

    throw p1
.end method

.method j6(Labcd/OH;ZLabcd/wH;)V
    .registers 12

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p0, v0, v1}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-wide v4, p0, Labcd/aH;->gn:J

    move-object v2, p3

    move-object v3, p0

    move v6, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Labcd/wH;->j6(Labcd/aH;JZLabcd/OH;)V

    return-void
.end method

.method j6(Ljava/util/Set;Labcd/WD;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
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

    monitor-enter p0

    :try_start_1
    iget v0, p0, Labcd/aH;->u7:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Labcd/aH;->u7:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Labcd/aH;->tp:I

    if-nez v0, :cond_10

    invoke-direct {p0}, Labcd/aH;->tp()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    :cond_10
    monitor-exit p0

    return v1

    :cond_12
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_15
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

    cmp-long p1, v2, v0

    if-gez p1, :cond_16

    invoke-direct {p0, v0, v1}, Labcd/aH;->FH(J)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method j6(Labcd/wH;J)[B
    .registers 11

    const/16 v0, 0x12

    new-array v0, v0, [B

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-wide v3, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Labcd/wH;->j6(Labcd/aH;J[BI)I

    return-object v0
.end method

.method public v5()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/aH;->FH:Ljava/io/File;

    return-object v0
.end method
