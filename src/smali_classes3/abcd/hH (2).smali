.class Labcd/hH;
.super Labcd/gH;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/gH;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method static j6(Labcd/CI;)Z
    .registers 6

    invoke-virtual {p0}, Labcd/CI;->getOffset()J

    move-result-wide v0

    const/4 p0, 0x1

    ushr-long/2addr v0, p0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected FH()V
    .registers 6

    invoke-virtual {p0}, Labcd/gH;->DW()V

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Labcd/gH;->j6()V

    return-void

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/CI;

    invoke-static {v1}, Labcd/hH;->j6(Labcd/CI;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Labcd/gH;->FH:[B

    invoke-virtual {v1}, Labcd/CI;->getOffset()J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Labcd/FK;->DW([BII)V

    iget-object v2, p0, Labcd/gH;->FH:[B

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Labcd/YD;->DW([BI)V

    iget-object v1, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v2, p0, Labcd/gH;->FH:[B

    invoke-virtual {v1, v2}, Ljava/security/DigestOutputStream;->write([B)V

    goto :goto_9

    :cond_38
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packTooLargeForIndexVersion1:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_45

    :goto_44
    throw v0

    :goto_45
    goto :goto_44
.end method
