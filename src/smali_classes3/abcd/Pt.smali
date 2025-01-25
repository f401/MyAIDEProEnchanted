.class public final Labcd/Pt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Pt$a;,
        Labcd/Pt$b;
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:I

.field private final j6:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Labcd/Pt;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2c

    if-ltz p2, :cond_24

    if-lt p3, p2, :cond_1c

    array-length v0, p1

    if-gt p3, v0, :cond_14

    iput-object p1, p0, Labcd/Pt;->j6:[B

    iput p2, p0, Labcd/Pt;->DW:I

    sub-int/2addr p3, p2

    iput p3, p0, Labcd/Pt;->FH:I

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end > bytes.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(II)V
    .registers 5

    if-ltz p1, :cond_9

    if-lt p2, p1, :cond_9

    iget v0, p0, Labcd/Pt;->FH:I

    if-gt p2, v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; actual size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Labcd/Pt;->FH:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic DW(Labcd/Pt;)[B
    .registers 1

    iget-object p0, p0, Labcd/Pt;->j6:[B

    return-object p0
.end method

.method static synthetic FH(Labcd/Pt;)I
    .registers 1

    iget p0, p0, Labcd/Pt;->DW:I

    return p0
.end method

.method private VH(I)I
    .registers 4

    iget-object v0, p0, Labcd/Pt;->j6:[B

    iget v1, p0, Labcd/Pt;->DW:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method private gn(I)I
    .registers 4

    iget-object v0, p0, Labcd/Pt;->j6:[B

    iget v1, p0, Labcd/Pt;->DW:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method static synthetic j6(Labcd/Pt;)I
    .registers 1

    iget p0, p0, Labcd/Pt;->FH:I

    return p0
.end method

.method static synthetic j6(Labcd/Pt;I)I
    .registers 2

    invoke-direct {p0, p1}, Labcd/Pt;->gn(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public DW(I)I
    .registers 5

    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0, p1, v0}, Labcd/Pt;->DW(II)V

    invoke-direct {p0, p1}, Labcd/Pt;->VH(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Labcd/Pt;->gn(I)I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Labcd/Pt;->gn(I)I

    move-result v2

    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1}, Labcd/Pt;->gn(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1
.end method

.method public DW()Labcd/Pt$b;
    .registers 2

    new-instance v0, Labcd/Pt$b;

    invoke-direct {v0, p0}, Labcd/Pt$b;-><init>(Labcd/Pt;)V

    return-object v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/Pt;->FH:I

    return v0
.end method

.method public FH(I)J
    .registers 10

    add-int/lit8 v0, p1, 0x8

    invoke-direct {p0, p1, v0}, Labcd/Pt;->DW(II)V

    invoke-direct {p0, p1}, Labcd/Pt;->VH(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Labcd/Pt;->gn(I)I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Labcd/Pt;->gn(I)I

    move-result v2

    add-int/lit8 v3, p1, 0x3

    invoke-direct {p0, v3}, Labcd/Pt;->gn(I)I

    move-result v3

    add-int/lit8 v4, p1, 0x4

    invoke-direct {p0, v4}, Labcd/Pt;->VH(I)I

    move-result v4

    add-int/lit8 v5, p1, 0x5

    invoke-direct {p0, v5}, Labcd/Pt;->gn(I)I

    move-result v5

    add-int/lit8 v6, p1, 0x6

    invoke-direct {p0, v6}, Labcd/Pt;->gn(I)I

    move-result v6

    add-int/lit8 p1, p1, 0x7

    invoke-direct {p0, p1}, Labcd/Pt;->gn(I)I

    move-result p1

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr p1, v4

    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p1, v3

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public Hw(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Labcd/Pt;->DW(II)V

    invoke-direct {p0, p1}, Labcd/Pt;->VH(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Labcd/Pt;->gn(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public Zo(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Labcd/Pt;->DW(II)V

    invoke-direct {p0, p1}, Labcd/Pt;->gn(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Labcd/Pt;->gn(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public j6(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Pt;->DW(II)V

    invoke-direct {p0, p1}, Labcd/Pt;->VH(I)I

    move-result p1

    return p1
.end method

.method public j6()Labcd/Pt$a;
    .registers 3

    new-instance v0, Labcd/Pt$a;

    invoke-virtual {p0}, Labcd/Pt;->DW()Labcd/Pt$b;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/Pt$a;-><init>(Labcd/Pt$b;)V

    return-object v0
.end method

.method public j6(II)Labcd/Pt;
    .registers 6

    invoke-direct {p0, p1, p2}, Labcd/Pt;->DW(II)V

    iget-object v0, p0, Labcd/Pt;->j6:[B

    iget v1, p0, Labcd/Pt;->DW:I

    new-instance v2, Labcd/Pt;

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-direct {v2, v0, p1, p2}, Labcd/Pt;-><init>([BII)V

    return-object v2
.end method

.method public j6([BI)V
    .registers 6

    array-length v0, p1

    iget v1, p0, Labcd/Pt;->FH:I

    sub-int/2addr v0, p2

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Labcd/Pt;->j6:[B

    iget v2, p0, Labcd/Pt;->DW:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "(out.length - offset) < size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v5(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Pt;->DW(II)V

    invoke-direct {p0, p1}, Labcd/Pt;->gn(I)I

    move-result p1

    return p1
.end method
