.class public Labcd/DH;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[B

.field private final FH:I

.field private Hw:I

.field private final j6:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JJI)V
    .registers 9

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

    const-wide/16 v8, 0xff

    const-wide/16 v6, 0x0

    add-int/lit8 v0, p1, 0x1

    and-long v2, p2, v8

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    const/16 v1, 0x81

    iget-object v4, p0, Labcd/DH;->DW:[B

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    const-wide/32 v2, 0xff00

    and-long/2addr v2, p2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Labcd/DH;->DW:[B

    const/16 v3, 0x8

    ushr-long v4, p2, v3

    and-long/2addr v4, v8

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Labcd/DH;->DW:[B

    const/16 v3, 0x10

    ushr-long v4, p2, v3

    and-long/2addr v4, v8

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Labcd/DH;->DW:[B

    const/16 v3, 0x18

    ushr-long v4, p2, v3

    and-long/2addr v4, v8

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/high16 v2, 0x10000

    if-eq p4, v2, :cond_5

    and-int/lit16 v2, p4, 0xff

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Labcd/DH;->DW:[B

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const v2, 0xff00

    and-int/2addr v2, p4

    if-eqz v2, :cond_4

    iget-object v2, p0, Labcd/DH;->DW:[B

    ushr-int/lit8 v3, p4, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    or-int/lit8 v1, v1, 0x20

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const/high16 v2, 0xff0000

    and-int/2addr v2, p4

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x40

    iget-object v2, p0, Labcd/DH;->DW:[B

    ushr-int/lit8 v3, p4, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v2, p0, Labcd/DH;->DW:[B

    int-to-byte v1, v1

    aput-byte v1, v2, p1

    return v0

    :cond_6
    const/16 v1, 0x80

    goto/16 :goto_0
.end method

.method private j6(J)V
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Labcd/DH;->DW:[B

    add-int/lit8 v3, v0, 0x1

    long-to-int v4, p1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    iget v0, p0, Labcd/DH;->Hw:I

    add-int/2addr v0, v3

    iput v0, p0, Labcd/DH;->Hw:I

    iget v0, p0, Labcd/DH;->FH:I

    if-lez v0, :cond_0

    iget v2, p0, Labcd/DH;->Hw:I

    if-ge v2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    iget-object v2, p0, Labcd/DH;->DW:[B

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Labcd/DH;->DW:[B

    long-to-int v3, p1

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public j6(JI)Z
    .registers 11

    const/4 v0, 0x1

    const/high16 v6, 0x10000

    const/4 v1, 0x0

    if-nez p3, :cond_1

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    iget-object v4, p0, Labcd/DH;->DW:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v3, p0, Labcd/DH;->Hw:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/DH;->Hw:I

    :cond_1
    move v2, v1

    :cond_2
    if-lt v6, p3, :cond_4

    invoke-direct {p0, v2, p1, p2, p3}, Labcd/DH;->j6(IJI)I

    move-result v2

    iget v3, p0, Labcd/DH;->FH:I

    if-lez v3, :cond_3

    iget v4, p0, Labcd/DH;->Hw:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    iget-object v4, p0, Labcd/DH;->DW:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Labcd/DH;->Hw:I

    add-int/2addr v1, v2

    iput v1, p0, Labcd/DH;->Hw:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, p1, p2, v6}, Labcd/DH;->j6(IJI)I

    move-result v2

    const-wide/32 v4, 0x10000

    add-long/2addr p1, v4

    sub-int/2addr p3, v6

    iget-object v3, p0, Labcd/DH;->DW:[B

    array-length v3, v3

    add-int/lit8 v4, v2, 0x8

    if-ge v3, v4, :cond_2

    iget v3, p0, Labcd/DH;->FH:I

    if-lez v3, :cond_0

    iget v4, p0, Labcd/DH;->Hw:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j6([B)Z
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/DH;->j6([BII)Z

    move-result v0

    return v0
.end method

.method public j6([BII)Z
    .registers 8

    const/4 v1, 0x1

    if-gtz p3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Labcd/DH;->FH:I

    if-lez v0, :cond_2

    div-int/lit8 v0, p3, 0x7f

    rem-int/lit8 v2, p3, 0x7f

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v2, p0, Labcd/DH;->FH:I

    iget v3, p0, Labcd/DH;->Hw:I

    add-int/2addr v0, v3

    add-int/2addr v0, p3

    if-ge v2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x7f

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    int-to-byte v3, v0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Labcd/DH;->j6:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v2, p0, Labcd/DH;->Hw:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Labcd/DH;->Hw:I

    if-gtz p3, :cond_2

    move v0, v1

    goto :goto_0
.end method
