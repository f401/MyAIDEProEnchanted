.class final Labcd/wH;
.super Labcd/IE;

# interfaces
.implements Labcd/LH;


# instance fields
.field private DW:Ljava/util/zip/Inflater;

.field private FH:Labcd/CG;

.field private Hw:Labcd/EG;

.field final j6:[B

.field final v5:Labcd/GG;


# direct methods
.method constructor <init>(Labcd/GG;)V
    .registers 3

    invoke-direct {p0}, Labcd/IE;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/wH;->j6:[B

    iput-object p1, p0, Labcd/wH;->v5:Labcd/GG;

    return-void
.end method

.method private gn()V
    .registers 2

    iget-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    if-nez v0, :cond_b

    invoke-static {}, Labcd/tE;->j6()Ljava/util/zip/Inflater;

    move-result-object v0

    iput-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    goto :goto_e

    :cond_b
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    :goto_e
    return-void
.end method


# virtual methods
.method public DW(Labcd/YD;I)J
    .registers 8

    iget-object v0, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v0, p0, p1}, Labcd/GG;->j6(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_25

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1b

    new-instance p2, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    const-string v0, "unknown"

    invoke-direct {p2, p1, v0}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p2

    :cond_1b
    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v0

    :cond_25
    return-wide v0
.end method

.method public DW()Labcd/IE;
    .registers 3

    new-instance v0, Labcd/wH;

    iget-object v1, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-direct {v0, v1}, Labcd/wH;-><init>(Labcd/GG;)V

    return-object v0
.end method

.method public DW(Labcd/YD;)Z
    .registers 3

    iget-object v0, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v0, p1}, Labcd/GG;->j6(Labcd/YD;)Z

    move-result p1

    return p1
.end method

.method public FH()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    iput-object v0, p0, Labcd/wH;->Hw:Labcd/EG;

    :try_start_5
    iget-object v1, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-static {v1}, Labcd/tE;->j6(Ljava/util/zip/Inflater;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    iput-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    return-void

    :catchall_d
    move-exception v1

    iput-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    throw v1
.end method

.method public Hw(Labcd/YD;I)Labcd/FE;
    .registers 5

    iget-object v0, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v0, p0, p1}, Labcd/GG;->Hw(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_21

    if-ne p2, v1, :cond_17

    new-instance p2, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    const-string v0, "unknown"

    invoke-direct {p2, p1, v0}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p2

    :cond_17
    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v0

    :cond_21
    if-eq p2, v1, :cond_34

    invoke-virtual {v0}, Labcd/FE;->FH()I

    move-result v1

    if-ne v1, p2, :cond_2a

    goto :goto_34

    :cond_2a
    new-instance v0, Labcd/ZC;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Labcd/ZC;-><init>(Labcd/yE;I)V

    throw v0

    :cond_34
    :goto_34
    return-object v0
.end method

.method VH()Ljava/util/zip/Inflater;
    .registers 2

    invoke-direct {p0}, Labcd/wH;->gn()V

    iget-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    return-object v0
.end method

.method Zo()I
    .registers 2

    invoke-static {}, Labcd/uH;->j6()I

    move-result v0

    return v0
.end method

.method j6(Labcd/aH;J[BI)I
    .registers 9

    invoke-direct {p0}, Labcd/wH;->gn()V

    invoke-virtual {p0, p1, p2, p3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    iget-object v1, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p2, p3, v1}, Labcd/CG;->j6(JLjava/util/zip/Inflater;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, v0

    :cond_10
    iget-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    array-length v1, p4

    sub-int/2addr v1, p5

    invoke-virtual {v0, p4, p5, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_3f

    iget-object v1, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0, p1, p2, p3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v1, p0, Labcd/wH;->FH:Labcd/CG;

    iget-object v2, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p2, p3, v2}, Labcd/CG;->j6(JLjava/util/zip/Inflater;)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr p2, v1

    goto :goto_3f

    :cond_30
    iget-object p1, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->finished()Z

    move-result p1

    if-eqz p1, :cond_39

    return p5

    :cond_39
    new-instance p1, Ljava/util/zip/DataFormatException;

    invoke-direct {p1}, Ljava/util/zip/DataFormatException;-><init>()V

    throw p1

    :cond_3f
    :goto_3f
    add-int/2addr p5, v0

    array-length v0, p4

    if-lt p5, v0, :cond_10

    return p5
.end method

.method j6(Labcd/aH;J[BII)I
    .registers 16

    iget-wide v0, p1, Labcd/aH;->gn:J

    move v8, p6

    :goto_3
    if-lez v8, :cond_1c

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a

    goto :goto_1c

    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v2, p0, Labcd/wH;->FH:Labcd/CG;

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Labcd/CG;->j6(J[BII)I

    move-result v2

    int-to-long v3, v2

    add-long/2addr p2, v3

    add-int/2addr p5, v2

    sub-int/2addr v8, v2

    goto :goto_3

    :cond_1c
    :goto_1c
    sub-int/2addr p6, v8

    return p6
.end method

.method j6(Labcd/aH;JJ)Labcd/AG;
    .registers 9

    invoke-virtual {p0, p1, p2, p3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    instance-of v1, v0, Labcd/AG;

    if-eqz v1, :cond_18

    const-wide/16 v1, 0x1

    sub-long/2addr p4, v1

    add-long/2addr p2, p4

    invoke-virtual {v0, p1, p2, p3}, Labcd/CG;->j6(Labcd/aH;J)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Labcd/wH;->FH:Labcd/CG;

    check-cast p1, Labcd/AG;

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic j6(Labcd/iG;)Labcd/MH;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/wH;->j6(Labcd/iG;)Labcd/TG;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/iG;)Labcd/TG;
    .registers 3

    new-instance v0, Labcd/TG;

    invoke-direct {v0, p1}, Labcd/TG;-><init>(Labcd/iG;)V

    return-object v0
.end method

.method public j6()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/BH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v0}, Labcd/GG;->Zo()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/WD;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WD;",
            ")",
            "Ljava/util/Collection<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/WD;->DW()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Labcd/WD;->v5()Labcd/yE;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v1, v0, p1}, Labcd/GG;->j6(Ljava/util/Set;Labcd/WD;)V

    return-object v0
.end method

.method public j6(Labcd/OH;Labcd/BH;Z)V
    .registers 4

    check-cast p2, Labcd/QG;

    invoke-virtual {p2, p1, p3, p0}, Labcd/QG;->j6(Labcd/OH;ZLabcd/wH;)V

    return-void
.end method

.method public j6(Labcd/OH;Labcd/MH;Z)V
    .registers 5

    check-cast p2, Labcd/TG;

    iget-object v0, p2, Labcd/TG;->XL:Labcd/aH;

    invoke-virtual {v0, p1, p2, p3, p0}, Labcd/aH;->j6(Labcd/OH;Labcd/TG;ZLabcd/wH;)V

    return-void
.end method

.method public j6(Labcd/OH;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/OH;",
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {p1, v0}, Labcd/OH;->j6(Labcd/MH;)V

    goto :goto_4
.end method

.method public j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/TH;",
            "Labcd/LE;",
            "Ljava/lang/Iterable<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    iget-object v1, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v1, p1, v0, p0}, Labcd/GG;->j6(Labcd/TH;Labcd/MH;Labcd/wH;)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Labcd/LE;->update(I)V

    goto :goto_4
.end method

.method j6(Labcd/aH;J)V
    .registers 5

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Labcd/CG;->j6(Labcd/aH;J)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    invoke-static {p1, p2, p3}, Labcd/uH;->j6(Labcd/aH;J)Labcd/CG;

    move-result-object p1

    iput-object p1, p0, Labcd/wH;->FH:Labcd/CG;

    :cond_13
    return-void
.end method

.method j6(Labcd/aH;JZLabcd/OH;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p4, :cond_31

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Labcd/OH;->FH()[B

    move-result-object v6

    invoke-virtual {v0, v1, v2, v3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v7, v0, Labcd/wH;->FH:Labcd/CG;

    const/16 v8, 0xc

    invoke-virtual {v7, v4, v6, v4, v8}, Labcd/CG;->j6(I[BII)I

    move-result v7

    if-ne v7, v8, :cond_22

    invoke-virtual {v5, v6, v4, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_32

    :cond_22
    invoke-virtual/range {p1 .. p1}, Labcd/aH;->gn()V

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packfileIsTruncated:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    const/4 v5, 0x0

    :goto_32
    const-wide/16 v6, 0x20

    sub-long v6, p2, v6

    const-wide/16 v8, 0xc

    move-wide v12, v6

    move-wide v14, v8

    :goto_3a
    cmp-long v6, v2, v12

    if-ltz v6, :cond_8f

    if-eqz v5, :cond_8e

    const/16 v2, 0x14

    new-array v3, v2, [B

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v0, v1, v14, v15}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v6, v0, Labcd/wH;->FH:Labcd/CG;

    const/4 v10, 0x0

    const/16 v11, 0x14

    move-wide v7, v14

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Labcd/CG;->j6(J[BII)I

    move-result v6

    if-ne v6, v2, :cond_7f

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_8e

    :cond_5f
    invoke-virtual/range {p1 .. p1}, Labcd/aH;->gn()V

    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7f
    invoke-virtual/range {p1 .. p1}, Labcd/aH;->gn()V

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packfileIsTruncated:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    invoke-virtual {v0, v1, v14, v15}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v6, v0, Labcd/wH;->FH:Labcd/CG;

    iget-wide v7, v6, Labcd/CG;->DW:J

    sub-long v7, v14, v7

    long-to-int v8, v7

    invoke-virtual {v6}, Labcd/CG;->j6()I

    move-result v6

    sub-int/2addr v6, v8

    int-to-long v6, v6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v11, v6

    iget-object v6, v0, Labcd/wH;->FH:Labcd/CG;

    move-object/from16 v7, p5

    move-wide v8, v14

    move v10, v11

    move v2, v11

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Labcd/CG;->j6(Labcd/OH;JILjava/security/MessageDigest;)V

    int-to-long v2, v2

    add-long/2addr v14, v2

    sub-long/2addr v12, v2

    const-wide/16 v2, 0x0

    goto :goto_3a
.end method

.method v5()Labcd/EG;
    .registers 2

    iget-object v0, p0, Labcd/wH;->Hw:Labcd/EG;

    if-nez v0, :cond_b

    new-instance v0, Labcd/EG;

    invoke-direct {v0}, Labcd/EG;-><init>()V

    iput-object v0, p0, Labcd/wH;->Hw:Labcd/EG;

    :cond_b
    iget-object v0, p0, Labcd/wH;->Hw:Labcd/EG;

    return-object v0
.end method
