.class public Labcd/CK;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private j6:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Labcd/CK;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Labcd/CK;->j6:[I

    return-void
.end method

.method private FH()V
    .registers 5

    iget-object v0, p0, Labcd/CK;->j6:[I

    array-length v1, v0

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Labcd/CK;->DW:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/CK;->j6:[I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/CK;->DW:I

    return v0
.end method

.method public DW(I)I
    .registers 3

    iget v0, p0, Labcd/CK;->DW:I

    if-le v0, p1, :cond_9

    iget-object v0, p0, Labcd/CK;->j6:[I

    aget p1, v0, p1

    return p1

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public DW(II)V
    .registers 4

    iget v0, p0, Labcd/CK;->DW:I

    if-lt v0, p1, :cond_f

    if-ne v0, p1, :cond_a

    invoke-virtual {p0, p2}, Labcd/CK;->j6(I)V

    goto :goto_e

    :cond_a
    iget-object v0, p0, Labcd/CK;->j6:[I

    aput p2, v0, p1

    :goto_e
    return-void

    :cond_f
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public j6()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/CK;->DW:I

    return-void
.end method

.method public j6(I)V
    .registers 5

    iget v0, p0, Labcd/CK;->DW:I

    iget-object v1, p0, Labcd/CK;->j6:[I

    array-length v1, v1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Labcd/CK;->FH()V

    :cond_a
    iget-object v0, p0, Labcd/CK;->j6:[I

    iget v1, p0, Labcd/CK;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/CK;->DW:I

    aput p1, v0, v1

    return-void
.end method

.method public j6(II)V
    .registers 4

    :goto_0
    iget v0, p0, Labcd/CK;->DW:I

    if-lt v0, p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p2}, Labcd/CK;->j6(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Labcd/CK;->DW:I

    if-lt v1, v2, :cond_19

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    if-lez v1, :cond_20

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v2, p0, Labcd/CK;->j6:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
