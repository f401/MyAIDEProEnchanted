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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Labcd/CK;->j6:[I

    return-void
.end method

.method private FH()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/CK;->j6:[I

    array-length v1, v0

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Labcd/CK;->DW:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    if-le v0, p1, :cond_0

    iget-object v0, p0, Labcd/CK;->j6:[I

    aget v0, v0, p1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public DW(II)V
    .registers 4

    iget v0, p0, Labcd/CK;->DW:I

    if-lt v0, p1, :cond_1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Labcd/CK;->j6(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/CK;->j6:[I

    aput p2, v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
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

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Labcd/CK;->FH()V

    :cond_0
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

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Labcd/CK;->j6(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Labcd/CK;->DW:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Labcd/CK;->j6:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
