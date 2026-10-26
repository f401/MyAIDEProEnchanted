.class public Labcd/MH;
.super Labcd/CI;


# instance fields
.field private J0:Labcd/yE;

.field private J8:I

.field private QX:Labcd/CH$a;

.field private Ws:I


# direct methods
.method public constructor <init>(Labcd/YD;I)V
    .locals 1

    invoke-direct {p0, p1}, Labcd/CI;-><init>(Labcd/YD;)V

    shl-int/lit8 v0, p2, 0x5

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method public constructor <init>(Labcd/iG;)V
    .locals 1

    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/MH;-><init>(Labcd/YD;I)V

    return-void
.end method


# virtual methods
.method public BT()Z
    .locals 1

    iget-object v0, p0, Labcd/MH;->J0:Labcd/yE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method DW(Labcd/yE;)V
    .locals 0

    iput-object p1, p0, Labcd/MH;->J0:Labcd/yE;

    return-void
.end method

.method FH(I)V
    .locals 0

    iput p1, p0, Labcd/MH;->Ws:I

    return-void
.end method

.method Hw(I)V
    .locals 2

    shl-int/lit8 v0, p1, 0xc

    iget v1, p0, Labcd/MH;->J8:I

    and-int/lit16 v1, v1, 0xfff

    or-int/2addr v0, v1

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method KD()Labcd/CH$a;
    .locals 2

    iget-object v0, p0, Labcd/MH;->QX:Labcd/CH$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/MH;->QX:Labcd/CH$a;

    :cond_0
    return-object v0
.end method

.method protected Mr()V
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method P8()Z
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method SI()V
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method U2()I
    .locals 1

    iget v0, p0, Labcd/MH;->Ws:I

    return v0
.end method

.method Zo(I)V
    .locals 0

    invoke-virtual {p0, p1}, Labcd/CI;->DW(I)V

    return-void
.end method

.method public a8()Labcd/MH;
    .locals 2

    iget-object v0, p0, Labcd/MH;->J0:Labcd/yE;

    instance-of v1, v0, Labcd/MH;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/MH;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cn()V
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method public ei()Z
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method er()I
    .locals 1

    iget v0, p0, Labcd/MH;->Ws:I

    return v0
.end method

.method gW()I
    .locals 1

    invoke-virtual {p0}, Labcd/CI;->aM()I

    move-result v0

    return v0
.end method

.method j3()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/MH;->J0:Labcd/yE;

    iget-object v0, p0, Labcd/MH;->QX:Labcd/CH$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    iget-object v0, p0, Labcd/MH;->QX:Labcd/CH$a;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->enqueue()Z

    iput-object v1, p0, Labcd/MH;->QX:Labcd/CH$a;

    :cond_0
    return-void
.end method

.method j6(Labcd/CH$a;)V
    .locals 0

    iput-object p1, p0, Labcd/MH;->QX:Labcd/CH$a;

    return-void
.end method

.method public j6(Labcd/UH;)V
    .locals 0

    return-void
.end method

.method j6(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Labcd/MH;->J8:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Labcd/MH;->J8:I

    return-void

    :cond_0
    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method

.method public lg()Labcd/yE;
    .locals 1

    iget-object v0, p0, Labcd/MH;->J0:Labcd/yE;

    return-object v0
.end method

.method public nw()Z
    .locals 4

    invoke-virtual {p0}, Labcd/CI;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method rN()I
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    ushr-int/lit8 v0, v0, 0xc

    return v0
.end method

.method ro()V
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method sh()Z
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ObjectToPack["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/MH;->yS()I

    move-result v0

    invoke-static {v0}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/MH;->sh()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " wantWrite"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Labcd/MH;->ei()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " reuseAsIs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Labcd/MH;->vy()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " doNotDelta"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Labcd/MH;->P8()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " edge"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Labcd/MH;->rN()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " depth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/MH;->rN()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Labcd/MH;->BT()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " base=inpack:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Labcd/MH;->nw()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/CI;->getOffset()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " base=edge:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/MH;->lg()Labcd/yE;

    move-result-object v1

    goto :goto_0
.end method

.method v5(I)V
    .locals 0

    iput p1, p0, Labcd/MH;->Ws:I

    return-void
.end method

.method vy()Z
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yS()I
    .locals 1

    iget v0, p0, Labcd/MH;->J8:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    return v0
.end method
