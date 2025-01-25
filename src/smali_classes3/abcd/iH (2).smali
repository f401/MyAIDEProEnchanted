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

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/CI;

    iget-object v2, p0, Labcd/gH;->FH:[B

    invoke-virtual {v1}, Labcd/CI;->aM()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Labcd/FK;->DW([BII)V

    iget-object v1, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v2, p0, Labcd/gH;->FH:[B

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/DigestOutputStream;->write([BII)V

    goto :goto_6
.end method

.method private VH()V
    .registers 7

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/CI;

    invoke-virtual {v1}, Labcd/CI;->getOffset()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v3, v1

    if-gez v5, :cond_6

    iget-object v3, p0, Labcd/gH;->FH:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v2}, Labcd/FK;->j6([BIJ)V

    iget-object v1, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v2, p0, Labcd/gH;->FH:[B

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/DigestOutputStream;->write([BII)V

    goto :goto_6
.end method

.method private Zo()V
    .registers 9

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/CI;

    invoke-virtual {v3}, Labcd/CI;->getOffset()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_27

    iget-object v5, p0, Labcd/gH;->FH:[B

    long-to-int v4, v3

    invoke-static {v5, v1, v4}, Labcd/FK;->DW([BII)V

    goto :goto_31

    :cond_27
    iget-object v3, p0, Labcd/gH;->FH:[B

    const/high16 v4, -0x80000000

    or-int/2addr v4, v2

    invoke-static {v3, v1, v4}, Labcd/FK;->DW([BII)V

    add-int/lit8 v2, v2, 0x1

    :goto_31
    iget-object v3, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    iget-object v4, p0, Labcd/gH;->FH:[B

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v1, v5}, Ljava/security/DigestOutputStream;->write([BII)V

    goto :goto_8
.end method

.method private v5()V
    .registers 4

    iget-object v0, p0, Labcd/gH;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/CI;

    iget-object v2, p0, Labcd/gH;->DW:Ljava/security/DigestOutputStream;

    invoke-virtual {v1, v2}, Labcd/YD;->j6(Ljava/io/OutputStream;)V

    goto :goto_6
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
