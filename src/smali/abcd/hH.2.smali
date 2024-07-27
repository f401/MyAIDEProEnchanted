.class Labcd/hH;
.super Labcd/gH;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/gH;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method static j6(Labcd/CI;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Labcd/CI;->getOffset()J

    move-result-wide v2

    ushr-long/2addr v2, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected FH()V
    .registers 7

    invoke-virtual {p0}, Labcd/gH;->DW()V

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/gH;->j6()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    invoke-static {v0}, Labcd/hH;->j6(Labcd/CI;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Labcd/gH;->FH:[B

    const/4 v3, 0x0

    invoke-virtual {v0}, Labcd/CI;->getOffset()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Labcd/FK;->DW([BII)V

    iget-object v2, p0, Labcd/gH;->FH:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Labcd/YD;->DW([BI)V

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v2, p0, Labcd/gH;->FH:[B

    invoke-virtual {v0, v2}, Ljava/security/DigestOutputStream;->write([B)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packTooLargeForIndexVersion1:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
