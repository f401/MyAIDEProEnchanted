.class public Labcd/DH;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[B

.field private final FH:I

.field private Hw:I

.field private final j6:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JJI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/DH;->DW:[B

    iput-object p1, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    iput p6, p0, Labcd/DH;->FH:I

    invoke-direct {p0, p2, p3}, Labcd/DH;->j6(J)V

    invoke-direct {p0, p4, p5}, Labcd/DH;->j6(J)V

    return-void
.end method

.method private j6(IJI)I
    .registers 15

    add-int/lit8 v0, p1, 0x1

    const-wide/16 v1, 0xff

    and-long v3, p2, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_17

    iget-object v7, p0, Labcd/DH;->DW:[B

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x81

    goto :goto_19

    :cond_17
    const/16 v3, 0x80

    :goto_19
    const-wide/32 v7, 0xff00

    and-long/2addr v7, p2

    cmp-long v4, v7, v5

    if-eqz v4, :cond_30

    or-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Labcd/DH;->DW:[B

    const/16 v7, 0x8

    ushr-long v7, p2, v7

    and-long/2addr v7, v1

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_30
    const-wide/32 v7, 0xff0000

    and-long/2addr v7, p2

    const/16 v4, 0x10

    cmp-long v9, v7, v5

    if-eqz v9, :cond_47

    or-int/lit8 v3, v3, 0x4

    iget-object v7, p0, Labcd/DH;->DW:[B

    ushr-long v8, p2, v4

    and-long/2addr v8, v1

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_47
    const-wide/32 v7, -0x1000000

    and-long/2addr v7, p2

    cmp-long v9, v7, v5

    if-eqz v9, :cond_5d

    or-int/lit8 v3, v3, 0x8

    iget-object v5, p0, Labcd/DH;->DW:[B

    const/16 v6, 0x18

    ushr-long/2addr p2, v6

    and-long/2addr p2, v1

    long-to-int p3, p2

    int-to-byte p2, p3

    aput-byte p2, v5, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5d
    const/high16 p2, 0x10000

    if-eq p4, p2, :cond_94

    and-int/lit16 p2, p4, 0xff

    if-eqz p2, :cond_6e

    or-int/lit8 v3, v3, 0x10

    iget-object p3, p0, Labcd/DH;->DW:[B

    int-to-byte p2, p2

    aput-byte p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6e
    const p2, 0xff00

    and-int/2addr p2, p4

    if-eqz p2, :cond_82

    iget-object p2, p0, Labcd/DH;->DW:[B

    ushr-int/lit8 p3, p4, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p2, v0

    or-int/lit8 p2, v3, 0x20

    add-int/lit8 v0, v0, 0x1

    move v3, p2

    :cond_82
    const/high16 p2, 0xff0000

    and-int/2addr p2, p4

    if-eqz p2, :cond_94

    or-int/lit8 v3, v3, 0x40

    iget-object p2, p0, Labcd/DH;->DW:[B

    ushr-int/lit8 p3, p4, 0x10

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_94
    iget-object p2, p0, Labcd/DH;->DW:[B

    int-to-byte p3, v3

    aput-byte p3, p2, p1

    return v0
.end method

.method private j6(J)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const-wide/16 v2, 0x80

    cmp-long v4, p1, v2

    iget-object v2, p0, Labcd/DH;->DW:[B

    if-gez v4, :cond_23

    add-int/lit8 v3, v1, 0x1

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    iget p1, p0, Labcd/DH;->Hw:I

    add-int/2addr p1, v3

    iput p1, p0, Labcd/DH;->Hw:I

    iget p2, p0, Labcd/DH;->FH:I

    if-lez p2, :cond_1d

    if-ge p1, p2, :cond_22

    :cond_1d
    iget-object p1, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_22
    return-void

    :cond_23
    long-to-int v3, p1

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public j6(JI)Z
    .registers 10

    const/4 v0, 0x1

    if-nez p3, :cond_4

    return v0

    :cond_4
    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    const/high16 v3, 0x10000

    if-lt v3, p3, :cond_25

    invoke-direct {p0, v2, p1, p2, p3}, Labcd/DH;->j6(IJI)I

    move-result p1

    iget p2, p0, Labcd/DH;->FH:I

    if-lez p2, :cond_18

    iget p3, p0, Labcd/DH;->Hw:I

    add-int/2addr p3, p1

    if-ge p2, p3, :cond_18

    return v1

    :cond_18
    iget-object p2, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    iget-object p3, p0, Labcd/DH;->DW:[B

    invoke-virtual {p2, p3, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    iget p2, p0, Labcd/DH;->Hw:I

    add-int/2addr p2, p1

    iput p2, p0, Labcd/DH;->Hw:I

    return v0

    :cond_25
    invoke-direct {p0, v2, p1, p2, v3}, Labcd/DH;->j6(IJI)I

    move-result v2

    const-wide/32 v4, 0x10000

    add-long/2addr p1, v4

    sub-int/2addr p3, v3

    iget-object v3, p0, Labcd/DH;->DW:[B

    array-length v4, v3

    add-int/lit8 v5, v2, 0x8

    if-ge v4, v5, :cond_6

    iget v4, p0, Labcd/DH;->FH:I

    if-lez v4, :cond_3f

    iget v5, p0, Labcd/DH;->Hw:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_3f

    return v1

    :cond_3f
    iget-object v4, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    invoke-virtual {v4, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Labcd/DH;->Hw:I

    add-int/2addr v1, v2

    iput v1, p0, Labcd/DH;->Hw:I

    goto :goto_4
.end method

.method public j6([B)Z
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/DH;->j6([BII)Z

    move-result p1

    return p1
.end method

.method public j6([BII)Z
    .registers 8

    const/4 v0, 0x1

    if-gtz p3, :cond_4

    return v0

    :cond_4
    iget v1, p0, Labcd/DH;->FH:I

    if-lez v1, :cond_18

    div-int/lit8 v2, p3, 0x7f

    rem-int/lit8 v3, p3, 0x7f

    if-eqz v3, :cond_10

    add-int/lit8 v2, v2, 0x1

    :cond_10
    iget v3, p0, Labcd/DH;->Hw:I

    add-int/2addr v3, v2

    add-int/2addr v3, p3

    if-ge v1, v3, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    const/16 v1, 0x7f

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v2, p0, Labcd/DH;->Hw:I

    add-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Labcd/DH;->Hw:I

    if-gtz p3, :cond_18

    return v0
.end method
