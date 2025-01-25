.class Labcd/KH;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private j6:[I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/KH;->j6:[I

    return-void
.end method


# virtual methods
.method j6(I)Z
    .registers 9

    iget v0, p0, Labcd/KH;->DW:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/KH;->j6:[I

    aput p1, v0, v1

    iput v2, p0, Labcd/KH;->DW:I

    return v2

    :cond_d
    const/4 v3, 0x0

    :cond_e
    add-int v4, v3, v0

    ushr-int/2addr v4, v2

    iget-object v5, p0, Labcd/KH;->j6:[I

    aget v6, v5, v4

    if-ge p1, v6, :cond_19

    move v0, v4

    goto :goto_1e

    :cond_19
    if-ne p1, v6, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v3, v4, 0x1

    :goto_1e
    if-lt v3, v0, :cond_e

    iget v0, p0, Labcd/KH;->DW:I

    array-length v4, v5

    if-ne v0, v4, :cond_2f

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/KH;->j6:[I

    :cond_2f
    iget v0, p0, Labcd/KH;->DW:I

    if-ge v3, v0, :cond_3b

    iget-object v1, p0, Labcd/KH;->j6:[I

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3b
    iget-object v0, p0, Labcd/KH;->j6:[I

    aput p1, v0, v3

    iget p1, p0, Labcd/KH;->DW:I

    add-int/2addr p1, v2

    iput p1, p0, Labcd/KH;->DW:I

    return v2
.end method
