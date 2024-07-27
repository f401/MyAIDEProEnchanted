.class Labcd/iH;
.super Labcd/gH;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/gH;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private Hw()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    iget-object v2, p0, Labcd/gH;->FH:[B

    invoke-virtual {v0}, Labcd/CI;->aM()I

    move-result v0

    invoke-static {v2, v4, v0}, Labcd/FK;->DW([BII)V

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v2, p0, Labcd/gH;->FH:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/DigestOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private VH()V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    invoke-virtual {v0}, Labcd/CI;->getOffset()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Labcd/gH;->FH:[B

    invoke-static {v0, v6, v2, v3}, Labcd/FK;->j6([BIJ)V

    iget-object v0, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v2, p0, Labcd/gH;->FH:[B

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v6, v3}, Ljava/security/DigestOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private Zo()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    invoke-virtual {v0}, Labcd/CI;->getOffset()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    iget-object v0, p0, Labcd/gH;->FH:[B

    long-to-int v4, v4

    invoke-static {v0, v2, v4}, Labcd/FK;->DW([BII)V

    move v0, v1

    :goto_1
    iget-object v1, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v4, p0, Labcd/gH;->FH:[B

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v2, v5}, Ljava/security/DigestOutputStream;->write([BII)V

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/gH;->FH:[B

    const/high16 v4, -0x80000000

    or-int/2addr v4, v1

    invoke-static {v0, v2, v4}, Labcd/FK;->DW([BII)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_1
.end method

.method private v5()V
    .registers 4

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    iget-object v2, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    invoke-virtual {v0, v2}, Labcd/YD;->j6(Ljava/io/OutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method protected FH()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Labcd/gH;->j6(I)V

    invoke-virtual {p0}, Labcd/gH;->DW()V

    invoke-direct {p0}, Labcd/iH;->v5()V

    invoke-direct {p0}, Labcd/iH;->Hw()V

    invoke-direct {p0}, Labcd/iH;->Zo()V

    invoke-direct {p0}, Labcd/iH;->VH()V

    invoke-virtual {p0}, Labcd/gH;->j6()V

    return-void
.end method
