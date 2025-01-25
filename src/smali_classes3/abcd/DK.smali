.class public Labcd/DK;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private j6:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Labcd/DK;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, Labcd/DK;->j6:[J

    return-void
.end method

.method private DW()V
    .registers 5

    iget-object v0, p0, Labcd/DK;->j6:[J

    array-length v1, v0

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget v3, p0, Labcd/DK;->DW:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/DK;->j6:[J

    return-void
.end method


# virtual methods
.method public DW(J)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Labcd/DK;->DW:I

    if-lt v1, v2, :cond_7

    return v0

    :cond_7
    iget-object v2, p0, Labcd/DK;->j6:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-nez v2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public j6(I)J
    .registers 5

    iget v0, p0, Labcd/DK;->DW:I

    if-le v0, p1, :cond_9

    iget-object v0, p0, Labcd/DK;->j6:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public j6()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/DK;->DW:I

    return-void
.end method

.method public j6(IJ)V
    .registers 5

    iget v0, p0, Labcd/DK;->DW:I

    if-lt v0, p1, :cond_f

    if-ne v0, p1, :cond_a

    invoke-virtual {p0, p2, p3}, Labcd/DK;->j6(J)V

    goto :goto_e

    :cond_a
    iget-object v0, p0, Labcd/DK;->j6:[J

    aput-wide p2, v0, p1

    :goto_e
    return-void

    :cond_f
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public j6(J)V
    .registers 6

    iget v0, p0, Labcd/DK;->DW:I

    iget-object v1, p0, Labcd/DK;->j6:[J

    array-length v1, v1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Labcd/DK;->DW()V

    :cond_a
    iget-object v0, p0, Labcd/DK;->j6:[J

    iget v1, p0, Labcd/DK;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/DK;->DW:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Labcd/DK;->DW:I

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
    iget-object v2, p0, Labcd/DK;->j6:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
