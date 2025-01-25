.class public Labcd/bM;
.super Labcd/EL;

# interfaces
.implements Labcd/KL;


# instance fields
.field private j6:[C


# direct methods
.method constructor <init>([C)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-object p1, p0, Labcd/bM;->j6:[C

    return-void
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Labcd/bM;->j6:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/bM;->j6:[C

    invoke-static {v0}, Labcd/OP;->j6([C)I

    move-result v0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 5

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    iget-object v0, p0, Labcd/bM;->j6:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Labcd/CL;->DW(I)V

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Labcd/bM;->j6:[C

    array-length v2, v1

    if-ne v0, v2, :cond_14

    return-void

    :cond_14
    aget-char v1, v1, v0

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Labcd/CL;->j6(I)V

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Labcd/CL;->j6(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method protected j6(Labcd/EL;)Z
    .registers 3

    instance-of v0, p1, Labcd/bM;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Labcd/bM;

    iget-object v0, p0, Labcd/bM;->j6:[C

    iget-object p1, p1, Labcd/bM;->j6:[C

    invoke-static {v0, p1}, Labcd/OP;->j6([C[C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/bM;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/bM;->j6:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/bM;->j6:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
