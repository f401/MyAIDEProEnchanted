.class public Labcd/MH;
.super Labcd/CI;


# instance fields
.field private J0:Labcd/yE;

.field private J8:I

.field private QX:Labcd/CH$a;

.field private Ws:I


# direct methods
.method public constructor <init>(Labcd/YD;I)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/CI;-><init>(Labcd/YD;)V

    shl-int/lit8 p1, p2, 0x5

    iput p1, p0, Labcd/MH;->J8:I

    return-void
.end method

.method public constructor <init>(Labcd/iG;)V
    .registers 3

    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/MH;-><init>(Labcd/YD;I)V

    return-void
.end method


# virtual methods
.method public BT()Z
    .registers 2

    iget-object v0, p0, Labcd/MH;->J0:Labcd/yE;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method DW(Labcd/yE;)V
    .registers 2

    iput-object p1, p0, Labcd/MH;->J0:Labcd/yE;

    return-void
.end method

.method FH(I)V
    .registers 2

    iput p1, p0, Labcd/MH;->Ws:I

    return-void
.end method

.method Hw(I)V
    .registers 3

    shl-int/lit8 p1, p1, 0xc

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit16 v0, v0, 0xfff

    or-int/2addr p1, v0

    iput p1, p0, Labcd/MH;->J8:I

    return-void
.end method

.method KD()Labcd/CH$a;
    .registers 3

    iget-object v0, p0, Labcd/MH;->QX:Labcd/CH$a;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/MH;->QX:Labcd/CH$a;

    :cond_7
    return-object v0
.end method

.method protected Mr()V
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method P8()Z
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method SI()V
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method U2()I
    .registers 2

    iget v0, p0, Labcd/MH;->Ws:I

    return v0
.end method

.method Zo(I)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/CI;->DW(I)V

    return-void
.end method

.method public a8()Labcd/MH;
    .registers 3

    iget-object v0, p0, Labcd/MH;->J0:Labcd/yE;

    instance-of v1, v0, Labcd/MH;

    if-eqz v1, :cond_9

    check-cast v0, Labcd/MH;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method cn()V
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method public ei()Z
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method er()I
    .registers 2

    iget v0, p0, Labcd/MH;->Ws:I

    return v0
.end method

.method gW()I
    .registers 2

    invoke-virtual {p0}, Labcd/CI;->aM()I

    move-result v0

    return v0
.end method

.method j3()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/MH;->J0:Labcd/yE;

    iget-object v1, p0, Labcd/MH;->QX:Labcd/CH$a;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    iget-object v1, p0, Labcd/MH;->QX:Labcd/CH$a;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->enqueue()Z

    iput-object v0, p0, Labcd/MH;->QX:Labcd/CH$a;

    :cond_11
    return-void
.end method

.method j6(Labcd/CH$a;)V
    .registers 2

    iput-object p1, p0, Labcd/MH;->QX:Labcd/CH$a;

    return-void
.end method

.method public j6(Labcd/UH;)V
    .registers 2

    return-void
.end method

.method j6(Z)V
    .registers 2

    if-eqz p1, :cond_7

    iget p1, p0, Labcd/MH;->J8:I

    or-int/lit8 p1, p1, 0x4

    goto :goto_b

    :cond_7
    iget p1, p0, Labcd/MH;->J8:I

    and-int/lit8 p1, p1, -0x5

    :goto_b
    iput p1, p0, Labcd/MH;->J8:I

    return-void
.end method

.method public lg()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/MH;->J0:Labcd/yE;

    return-object v0
.end method

.method public nw()Z
    .registers 6

    invoke-virtual {p0}, Labcd/CI;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method rN()I
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    ushr-int/lit8 v0, v0, 0xc

    return v0
.end method

.method ro()V
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Labcd/MH;->J8:I

    return-void
.end method

.method sh()Z
    .registers 3

    iget v0, p0, Labcd/MH;->J8:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectToPack["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/MH;->yS()I

    move-result v1

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/MH;->sh()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, " wantWrite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {p0}, Labcd/MH;->ei()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, " reuseAsIs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {p0}, Labcd/MH;->vy()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, " doNotDelta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    invoke-virtual {p0}, Labcd/MH;->P8()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, " edge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    invoke-virtual {p0}, Labcd/MH;->rN()I

    move-result v1

    if-lez v1, :cond_68

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " depth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/MH;->rN()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    invoke-virtual {p0}, Labcd/MH;->BT()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-virtual {p0}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v1

    if-eqz v1, :cond_80

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " base=inpack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v2

    goto :goto_8b

    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " base=edge:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/MH;->lg()Labcd/yE;

    move-result-object v2

    :goto_8b
    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    invoke-virtual {p0}, Labcd/MH;->nw()Z

    move-result v1

    if-eqz v1, :cond_b4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " offset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/CI;->getOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b4
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5(I)V
    .registers 2

    iput p1, p0, Labcd/MH;->Ws:I

    return-void
.end method

.method vy()Z
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public yS()I
    .registers 2

    iget v0, p0, Labcd/MH;->J8:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    return v0
.end method
