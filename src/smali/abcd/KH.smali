.class Labcd/KH;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private j6:[I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/KH;->j6:[I

    return-void
.end method


# virtual methods
.method j6(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Labcd/KH;->DW:I

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/KH;->j6:[I

    aput p1, v0, v2

    iput v3, p0, Labcd/KH;->DW:I

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    add-int v4, v1, v0

    ushr-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Labcd/KH;->j6:[I

    aget v6, v5, v4

    if-ge p1, v6, :cond_5

    move v0, v4

    :goto_1
    if-lt v1, v0, :cond_2

    iget v0, p0, Labcd/KH;->DW:I

    array-length v4, v5

    if-ne v0, v4, :cond_3

    array-length v4, v5

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    invoke-static {v5, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Labcd/KH;->j6:[I

    :cond_3
    iget v0, p0, Labcd/KH;->DW:I

    if-ge v1, v0, :cond_4

    iget-object v2, p0, Labcd/KH;->j6:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, p0, Labcd/KH;->j6:[I

    aput p1, v0, v1

    iget v0, p0, Labcd/KH;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/KH;->DW:I

    move v2, v3

    goto :goto_0

    :cond_5
    if-eq p1, v6, :cond_0

    add-int/lit8 v1, v4, 0x1

    goto :goto_1
.end method
