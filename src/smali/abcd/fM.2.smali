.class public Labcd/fM;
.super Labcd/EL;


# instance fields
.field private DW:Labcd/wL;

.field private FH:Labcd/EL;

.field private Hw:I

.field private j6:Labcd/zL;

.field private v5:Labcd/EL;


# direct methods
.method public constructor <init>(Labcd/rL;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/EL;-><init>()V

    invoke-direct {p0, p1, v2}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v0

    instance-of v3, v0, Labcd/zL;

    if-eqz v3, :cond_4

    check-cast v0, Labcd/zL;

    iput-object v0, p0, Labcd/fM;->j6:Labcd/zL;

    invoke-direct {p0, p1, v1}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Labcd/wL;

    if-eqz v2, :cond_0

    check-cast v0, Labcd/wL;

    iput-object v0, p0, Labcd/fM;->DW:Labcd/wL;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v0

    :cond_0
    instance-of v2, v0, Labcd/yM;

    if-nez v2, :cond_1

    iput-object v0, p0, Labcd/fM;->FH:Labcd/EL;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_3

    instance-of v1, v0, Labcd/yM;

    if-eqz v1, :cond_2

    check-cast v0, Labcd/yM;

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v1

    invoke-direct {p0, v1}, Labcd/fM;->j6(I)V

    invoke-virtual {v0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    iput-object v0, p0, Labcd/fM;->v5:Labcd/EL;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input vector too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private j6(Labcd/rL;I)Labcd/EL;
    .registers 5

    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1, p2}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(I)V
    .registers 4

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Labcd/fM;->Hw:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid encoding value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public EQ()I
    .registers 2

    iget v0, p0, Labcd/fM;->Hw:I

    return v0
.end method

.method public J0()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/fM;->DW:Labcd/wL;

    return-object v0
.end method

.method Zo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/fM;->j6:Labcd/zL;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Labcd/oM;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Labcd/fM;->DW:Labcd/wL;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Labcd/lM;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Labcd/fM;->FH:Labcd/EL;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Labcd/yL;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Labcd/fM;->v5:Labcd/EL;

    invoke-virtual {v1}, Labcd/yL;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6(Labcd/CL;)V
    .registers 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Labcd/fM;->j6:Labcd/zL;

    if-eqz v1, :cond_0

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Labcd/fM;->DW:Labcd/wL;

    if-eqz v1, :cond_1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Labcd/fM;->FH:Labcd/EL;

    if-eqz v1, :cond_2

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Labcd/yM;

    const/4 v2, 0x1

    iget v3, p0, Labcd/fM;->Hw:I

    iget-object v4, p0, Labcd/fM;->v5:Labcd/EL;

    invoke-direct {v1, v2, v3, v4}, Labcd/yM;-><init>(ZILabcd/qL;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Labcd/CL;->j6(II[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/fM;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, Labcd/fM;

    iget-object v1, p0, Labcd/fM;->j6:Labcd/zL;

    if-eqz v1, :cond_3

    iget-object v2, p1, Labcd/fM;->j6:Labcd/zL;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Labcd/fM;->DW:Labcd/wL;

    if-eqz v1, :cond_4

    iget-object v2, p1, Labcd/fM;->DW:Labcd/wL;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Labcd/fM;->FH:Labcd/EL;

    if-eqz v1, :cond_5

    iget-object v2, p1, Labcd/fM;->FH:Labcd/EL;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v0, p0, Labcd/fM;->v5:Labcd/EL;

    iget-object v1, p1, Labcd/fM;->v5:Labcd/EL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public tp()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/fM;->j6:Labcd/zL;

    return-object v0
.end method

.method public u7()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/fM;->FH:Labcd/EL;

    return-object v0
.end method

.method v5()I
    .registers 2

    invoke-virtual {p0}, Labcd/yL;->Hw()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public we()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/fM;->v5:Labcd/EL;

    return-object v0
.end method
