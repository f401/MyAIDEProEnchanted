.class Labcd/FH;
.super Ljava/lang/Object;


# instance fields
.field final DW:[J

.field final FH:[I

.field final Hw:I

.field final j6:[I

.field private v5:I


# direct methods
.method constructor <init>([BI)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x10

    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Labcd/FH;->j6:[I

    iput v3, p0, Labcd/FH;->Hw:I

    new-array v0, v3, [J

    iput-object v0, p0, Labcd/FH;->DW:[J

    new-array v0, v3, [I

    iput-object v0, p0, Labcd/FH;->FH:[I

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Labcd/FH;->j6(I)I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/FH;->j6:[I

    iget-object v2, p0, Labcd/FH;->j6:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/FH;->Hw:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    iput-object v1, p0, Labcd/FH;->DW:[J

    iget-object v1, p0, Labcd/FH;->DW:[J

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/FH;->FH:[I

    invoke-direct {p0, p1, v0}, Labcd/FH;->j6([BI)V

    goto :goto_0
.end method

.method private static j6(I)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private j6([BI)V
    .registers 14

    const/16 v10, 0x20

    add-int/lit8 v1, p2, -0x10

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    invoke-static {p1, v2}, Labcd/EH;->j6([BI)I

    move-result v1

    iget v3, p0, Labcd/FH;->Hw:I

    and-int/2addr v3, v1

    iget-object v4, p0, Labcd/FH;->j6:[I

    aget v4, v4, v3

    if-eqz v4, :cond_0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/FH;->DW:[J

    int-to-long v6, v1

    shl-long/2addr v6, v10

    int-to-long v8, v2

    or-long/2addr v6, v8

    aput-wide v6, v0, v4

    :goto_1
    add-int/lit8 v2, v2, -0x10

    if-gez v2, :cond_1

    return-void

    :cond_0
    iget v0, p0, Labcd/FH;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/FH;->v5:I

    iget-object v5, p0, Labcd/FH;->DW:[J

    int-to-long v6, v1

    shl-long/2addr v6, v10

    int-to-long v8, v2

    or-long/2addr v6, v8

    aput-wide v6, v5, v0

    iget-object v5, p0, Labcd/FH;->FH:[I

    aput v4, v5, v0

    iget-object v4, p0, Labcd/FH;->j6:[I

    aput v0, v4, v3

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
