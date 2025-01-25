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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x10

    sub-int/2addr p2, v0

    div-int/lit8 v0, p2, 0x10

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1b

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Labcd/FH;->j6:[I

    iput p1, p0, Labcd/FH;->Hw:I

    new-array p2, p1, [J

    iput-object p2, p0, Labcd/FH;->DW:[J

    new-array p1, p1, [I

    iput-object p1, p0, Labcd/FH;->FH:[I

    goto :goto_34

    :cond_1b
    invoke-static {v0}, Labcd/FH;->j6(I)I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/FH;->j6:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    iput v2, p0, Labcd/FH;->Hw:I

    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/FH;->DW:[J

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/FH;->FH:[I

    invoke-direct {p0, p1, p2}, Labcd/FH;->j6([BI)V

    :goto_34
    return-void
.end method

.method private static j6(I)I
    .registers 3

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    if-ge v0, p0, :cond_e

    shl-int/lit8 v0, v0, 0x1

    :cond_e
    return v0
.end method

.method private j6([BI)V
    .registers 14

    add-int/lit8 p2, p2, -0x10

    const/4 v0, 0x0

    :goto_3
    invoke-static {p1, p2}, Labcd/EH;->j6([BI)I

    move-result v1

    iget v2, p0, Labcd/FH;->Hw:I

    and-int/2addr v2, v1

    iget-object v3, p0, Labcd/FH;->j6:[I

    aget v4, v3, v2

    const/16 v5, 0x20

    if-eqz v4, :cond_1d

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Labcd/FH;->DW:[J

    int-to-long v2, v1

    shl-long/2addr v2, v5

    int-to-long v5, p2

    or-long/2addr v2, v5

    aput-wide v2, v0, v4

    goto :goto_31

    :cond_1d
    iget v0, p0, Labcd/FH;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/FH;->v5:I

    iget-object v6, p0, Labcd/FH;->DW:[J

    int-to-long v7, v1

    shl-long/2addr v7, v5

    int-to-long v9, p2

    or-long/2addr v7, v9

    aput-wide v7, v6, v0

    iget-object v5, p0, Labcd/FH;->FH:[I

    aput v4, v5, v0

    aput v0, v3, v2

    :goto_31
    add-int/lit8 p2, p2, -0x10

    if-gez p2, :cond_36

    return-void

    :cond_36
    move v0, v1

    goto :goto_3
.end method
