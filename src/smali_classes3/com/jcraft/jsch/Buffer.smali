.class public Lcom/jcraft/jsch/Buffer;
.super Ljava/lang/Object;


# instance fields
.field DW:[B

.field FH:I

.field Hw:I

.field final j6:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x5000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->j6:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->j6:[B

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void
.end method

.method static j6([[B)Lcom/jcraft/jsch/Buffer;
    .registers 5

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    array-length v3, p0

    if-lt v2, v3, :cond_19

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    :goto_d
    array-length v0, p0

    if-lt v1, v0, :cond_11

    return-object v3

    :cond_11
    aget-object v0, p0, v1

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    aget-object v3, p0, v2

    array-length v3, v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method DW()B
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0
.end method

.method public DW(I)I
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return v0
.end method

.method public DW([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->DW([BII)V

    return-void
.end method

.method public DW([BII)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    return-void
.end method

.method public EQ()J
    .registers 8

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const-wide/32 v3, 0xff00

    and-long/2addr v0, v3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v0, v5

    const/16 v5, 0x10

    shl-long/2addr v0, v5

    const-wide/32 v5, -0x10000

    and-long/2addr v0, v5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v2

    and-long/2addr v3, v5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v5, v2

    or-long/2addr v3, v5

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public FH()I
    .registers 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->u7()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->u7()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public FH(I)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->j6:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    const/4 v3, 0x4

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    return-void
.end method

.method public FH([B)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Buffer;->j6(B)V

    goto :goto_14

    :cond_11
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :goto_14
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Buffer;->DW([B)V

    return-void
.end method

.method public FH([BII)V
    .registers 4

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->DW([BII)V

    return-void
.end method

.method public Hw()I
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public Hw(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void
.end method

.method public Hw([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->FH([BII)V

    return-void
.end method

.method J0()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void
.end method

.method public J8()V
    .registers 5

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    iput v3, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void
.end method

.method public VH()[B
    .registers 6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->j6([BII)V

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1f

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    aput-byte v2, v3, v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    :cond_1f
    return-object v1
.end method

.method public Zo()[B
    .registers 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    const/16 v1, 0x2000

    if-ltz v0, :cond_a

    if-le v0, v1, :cond_c

    :cond_a
    const/16 v0, 0x2000

    :cond_c
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->j6([BII)V

    return-object v1
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return v0
.end method

.method public j6()I
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public j6(B)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    aput-byte p1, v0, v1

    return-void
.end method

.method j6(I)V
    .registers 5

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x54

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v2, v1

    if-ge v2, p1, :cond_19

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-ge v2, p1, :cond_10

    goto :goto_11

    :cond_10
    move p1, v2

    :goto_11
    new-array p1, p1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    :cond_19
    return-void
.end method

.method public j6(J)V
    .registers 13

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->j6:[B

    const/16 v1, 0x38

    ushr-long v1, p1, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/16 v1, 0x28

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    const/16 v1, 0x20

    ushr-long v5, p1, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v6, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    const/4 v7, 0x4

    invoke-static {v0, v2, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->j6:[B

    const/16 v1, 0x18

    ushr-long v8, p1, v1

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    ushr-long v8, p1, v1

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/16 v1, 0x8

    ushr-long v8, p1, v1

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v5

    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget p2, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr p2, v7

    invoke-static {v0, v2, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    return-void
.end method

.method public j6([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->j6([BII)V

    return-void
.end method

.method j6([BII)V
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void
.end method

.method j6([I[I)[B
    .registers 6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->DW(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    aput v0, p2, v2

    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->DW:[B

    return-object p1
.end method

.method j6(ILjava/lang/String;)[[B
    .registers 7

    new-array v0, p1, [[B

    const/4 v1, 0x0

    :goto_3
    if-lt v1, p1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v3

    if-lt v3, v2, :cond_1a

    new-array v2, v2, [B

    aput-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Buffer;->j6([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1a
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :goto_20
    throw p1

    :goto_21
    goto :goto_20
.end method

.method public tp()[B
    .registers 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    const/high16 v1, 0x40000

    if-ltz v0, :cond_a

    if-le v0, v1, :cond_c

    :cond_a
    const/high16 v0, 0x40000

    :cond_c
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->j6([BII)V

    return-object v1
.end method

.method u7()I
    .registers 3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->j6()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public v5()J
    .registers 7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method v5(I)V
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    return-void
.end method

.method public we()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->FH:I

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->Hw:I

    return-void
.end method
