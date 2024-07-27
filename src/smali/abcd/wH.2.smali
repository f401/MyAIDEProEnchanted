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

    if-nez v0, :cond_0

    invoke-static {}, Labcd/tE;->j6()Ljava/util/zip/Inflater;

    move-result-object v0

    iput-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/YD;I)J
    .registers 7

    iget-object v0, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v0, p0, p1}, Labcd/GG;->j6(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v0

    :cond_1
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

    move-result v0

    return v0
.end method

.method public FH()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/wH;->FH:Labcd/CG;

    iput-object v1, p0, Labcd/wH;->Hw:Labcd/EG;

    :try_start_0
    iget-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-static {v0}, Labcd/tE;->j6(Ljava/util/zip/Inflater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    throw v0
.end method

.method public Hw(Labcd/YD;I)Labcd/FE;
    .registers 6

    const/4 v1, -0x1

    iget-object v0, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v0, p0, p1}, Labcd/GG;->Hw(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_0

    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Labcd/fD;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v0

    :cond_1
    if-eq p2, v1, :cond_2

    invoke-virtual {v0}, Labcd/FE;->FH()I

    move-result v1

    if-ne v1, p2, :cond_3

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Labcd/ZC;

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Labcd/ZC;-><init>(Labcd/yE;I)V

    throw v0
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
    .registers 12

    invoke-direct {p0}, Labcd/wH;->gn()V

    invoke-virtual {p0, p1, p2, p3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    iget-object v1, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p2, p3, v1}, Labcd/CG;->j6(JLjava/util/zip/Inflater;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p2

    :cond_0
    iget-object v2, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    array-length v3, p4

    sub-int/2addr v3, p5

    invoke-virtual {v2, p4, p5, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v0, v1}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v3, p0, Labcd/wH;->FH:Labcd/CG;

    iget-object v4, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {v3, v0, v1, v4}, Labcd/CG;->j6(JLjava/util/zip/Inflater;)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    :cond_1
    add-int/2addr p5, v2

    array-length v2, p4

    if-lt p5, v2, :cond_0

    :cond_2
    return p5

    :cond_3
    iget-object v0, p0, Labcd/wH;->DW:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0
.end method

.method j6(Labcd/aH;J[BII)I
    .registers 19

    iget-wide v8, p1, Labcd/aH;->gn:J

    move/from16 v6, p6

    move/from16 v5, p5

    move-wide v2, p2

    :goto_0
    if-lez v6, :cond_0

    cmp-long v0, v2, v8

    if-ltz v0, :cond_1

    :cond_0
    sub-int v0, p6, v6

    return v0

    :cond_1
    invoke-virtual {p0, p1, v2, v3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v1, p0, Labcd/wH;->FH:Labcd/CG;

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Labcd/CG;->j6(J[BII)I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v2, v10

    add-int/2addr v5, v0

    sub-int/2addr v6, v0

    goto :goto_0
.end method

.method j6(Labcd/aH;JJ)Labcd/AG;
    .registers 10

    invoke-virtual {p0, p1, p2, p3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    instance-of v1, v0, Labcd/AG;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, p4, v2

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Labcd/CG;->j6(Labcd/aH;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    check-cast v0, Labcd/AG;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic j6(Labcd/iG;)Labcd/MH;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/wH;->j6(Labcd/iG;)Labcd/TG;

    move-result-object v0

    return-object v0
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
            "Ljava/util/Collection",
            "<",
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
            "Ljava/util/Collection",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/WD;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Labcd/WD;->v5()Labcd/yE;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v1, v0, p1}, Labcd/GG;->j6(Ljava/util/Set;Labcd/WD;)V

    goto :goto_0
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/OH;",
            "Ljava/util/List",
            "<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {p1, v0}, Labcd/OH;->j6(Labcd/MH;)V

    goto :goto_0
.end method

.method public j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/TH;",
            "Labcd/LE;",
            "Ljava/lang/Iterable",
            "<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    iget-object v2, p0, Labcd/wH;->v5:Labcd/GG;

    invoke-virtual {v2, p1, v0, p0}, Labcd/GG;->j6(Labcd/TH;Labcd/MH;Labcd/wH;)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Labcd/LE;->update(I)V

    goto :goto_0
.end method

.method j6(Labcd/aH;J)V
    .registers 6

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Labcd/CG;->j6(Labcd/aH;J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    invoke-static {p1, p2, p3}, Labcd/uH;->j6(Labcd/aH;J)Labcd/CG;

    move-result-object v0

    iput-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    :cond_1
    return-void
.end method

.method j6(Labcd/aH;JZLabcd/OH;)V
    .registers 16

    if-eqz p4, :cond_2

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p5}, Labcd/OH;->FH()[B

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v1, p0, Labcd/wH;->FH:Labcd/CG;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v1, v2, v0, v3, v4}, Labcd/CG;->j6(I[BII)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v5, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    :goto_0
    const-wide/16 v2, 0xc

    const-wide/16 v0, 0x20

    sub-long v0, p2, v0

    move-wide v6, v0

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_5

    if-eqz v5, :cond_0

    const/16 v0, 0x14

    new-array v4, v0, [B

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p0, p1, v2, v3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v1, p0, Labcd/wH;->FH:Labcd/CG;

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual/range {v1 .. v6}, Labcd/CG;->j6(J[BII)I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Labcd/aH;->gn()V

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packfileIsTruncated:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Labcd/aH;->gn()V

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/aH;->v5()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Labcd/aH;->gn()V

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packfileIsTruncated:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0, p1, v2, v3}, Labcd/wH;->j6(Labcd/aH;J)V

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    iget-wide v8, v0, Labcd/CG;->DW:J

    sub-long v8, v2, v8

    long-to-int v1, v8

    invoke-virtual {v0}, Labcd/CG;->j6()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    iget-object v0, p0, Labcd/wH;->FH:Labcd/CG;

    move-object v1, p5

    invoke-virtual/range {v0 .. v5}, Labcd/CG;->j6(Labcd/OH;JILjava/security/MessageDigest;)V

    int-to-long v0, v4

    add-long/2addr v2, v0

    sub-long v0, v6, v0

    move-wide v6, v0

    goto/16 :goto_1
.end method

.method v5()Labcd/EG;
    .registers 2

    iget-object v0, p0, Labcd/wH;->Hw:Labcd/EG;

    if-nez v0, :cond_0

    new-instance v0, Labcd/EG;

    invoke-direct {v0}, Labcd/EG;-><init>()V

    iput-object v0, p0, Labcd/wH;->Hw:Labcd/EG;

    :cond_0
    iget-object v0, p0, Labcd/wH;->Hw:Labcd/EG;

    return-object v0
.end method
