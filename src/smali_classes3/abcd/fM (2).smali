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

    invoke-direct {p0}, Labcd/EL;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v1

    instance-of v2, v1, Labcd/zL;

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    check-cast v1, Labcd/zL;

    iput-object v1, p0, Labcd/fM;->j6:Labcd/zL;

    invoke-direct {p0, p1, v3}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v1

    const/4 v0, 0x1

    :cond_16
    instance-of v2, v1, Labcd/wL;

    if-eqz v2, :cond_24

    check-cast v1, Labcd/wL;

    iput-object v1, p0, Labcd/fM;->DW:Labcd/wL;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v1

    :cond_24
    instance-of v2, v1, Labcd/yM;

    if-nez v2, :cond_30

    iput-object v1, p0, Labcd/fM;->FH:Labcd/EL;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/fM;->j6(Labcd/rL;I)Labcd/EL;

    move-result-object v1

    :cond_30
    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_53

    instance-of p1, v1, Labcd/yM;

    if-eqz p1, :cond_4b

    check-cast v1, Labcd/yM;

    invoke-virtual {v1}, Labcd/LL;->tp()I

    move-result p1

    invoke-direct {p0, p1}, Labcd/fM;->j6(I)V

    invoke-virtual {v1}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p1

    iput-object p1, p0, Labcd/fM;->v5:Labcd/EL;

    return-void

    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input vector too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Labcd/rL;I)Labcd/EL;
    .registers 4

    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v0

    if-le v0, p2, :cond_f

    invoke-virtual {p1, p2}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few objects in input vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(I)V
    .registers 4

    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    iput p1, p0, Labcd/fM;->Hw:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid encoding value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Labcd/oM;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Labcd/fM;->DW:Labcd/wL;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Labcd/lM;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Labcd/fM;->FH:Labcd/EL;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Labcd/yL;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Labcd/fM;->v5:Labcd/EL;

    invoke-virtual {v1}, Labcd/yL;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Labcd/fM;->j6:Labcd/zL;

    const-string v2, "DER"

    if-eqz v1, :cond_12

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_12
    iget-object v1, p0, Labcd/fM;->DW:Labcd/wL;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1d
    iget-object v1, p0, Labcd/fM;->FH:Labcd/EL;

    if-eqz v1, :cond_28

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_28
    new-instance v1, Labcd/yM;

    iget v3, p0, Labcd/fM;->Hw:I

    iget-object v4, p0, Labcd/fM;->v5:Labcd/EL;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v3, v4}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1, v0}, Labcd/CL;->j6(II[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 5

    instance-of v0, p1, Labcd/fM;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    check-cast p1, Labcd/fM;

    iget-object v0, p0, Labcd/fM;->j6:Labcd/zL;

    if-eqz v0, :cond_1b

    iget-object v2, p1, Labcd/fM;->j6:Labcd/zL;

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    return v1

    :cond_1b
    iget-object v0, p0, Labcd/fM;->DW:Labcd/wL;

    if-eqz v0, :cond_2a

    iget-object v2, p1, Labcd/fM;->DW:Labcd/wL;

    if-eqz v2, :cond_29

    invoke-virtual {v2, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_29
    return v1

    :cond_2a
    iget-object v0, p0, Labcd/fM;->FH:Labcd/EL;

    if-eqz v0, :cond_39

    iget-object v2, p1, Labcd/fM;->FH:Labcd/EL;

    if-eqz v2, :cond_38

    invoke-virtual {v2, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_38
    return v1

    :cond_39
    iget-object v0, p0, Labcd/fM;->v5:Labcd/EL;

    iget-object p1, p1, Labcd/fM;->v5:Labcd/EL;

    invoke-virtual {v0, p1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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
