.class public Labcd/SK;
.super Ljava/io/OutputStream;


# instance fields
.field private DW:I

.field private FH:[B

.field private Hw:I

.field private final j6:Ljava/io/OutputStream;

.field private v5:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/SK;->DW:I

    const/16 v0, 0x1f40

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/SK;->FH:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/SK;->Hw:I

    iput-object p1, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    return-void
.end method

.method private j6(B)I
    .registers 5

    iget v0, p0, Labcd/SK;->Hw:I

    iget-object v1, p0, Labcd/SK;->FH:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Labcd/SK;->Hw:I

    aput-byte p1, v1, v0

    iget v0, p0, Labcd/SK;->Hw:I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Labcd/SK;->j6()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6([BII)I
    .registers 7

    iget v0, p0, Labcd/SK;->Hw:I

    iget-object v1, p0, Labcd/SK;->FH:[B

    array-length v2, v1

    if-le v0, v2, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    array-length v1, v1

    sub-int v0, v1, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Labcd/SK;->FH:[B

    iget v2, p0, Labcd/SK;->Hw:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/SK;->Hw:I

    add-int/2addr v1, v0

    iput v1, p0, Labcd/SK;->Hw:I

    sub-int/2addr p3, v0

    if-lez p3, :cond_0

    invoke-direct {p0}, Labcd/SK;->j6()V

    goto :goto_0
.end method

.method private j6()V
    .registers 4

    iget-object v0, p0, Labcd/SK;->FH:[B

    iget v1, p0, Labcd/SK;->Hw:I

    invoke-static {v0, v1}, Labcd/tC;->j6([BI)Z

    move-result v0

    iput-boolean v0, p0, Labcd/SK;->v5:Z

    iget v0, p0, Labcd/SK;->Hw:I

    iget-object v1, p0, Labcd/SK;->FH:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/SK;->Hw:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Labcd/SK;->write([BII)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-virtual {p0}, Labcd/SK;->flush()V

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 3

    iget v0, p0, Labcd/SK;->Hw:I

    iget-object v1, p0, Labcd/SK;->FH:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Labcd/SK;->j6()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Labcd/SK;->DW:I

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 6

    const/16 v3, 0xa

    const/16 v2, 0xd

    const/4 v1, -0x1

    int-to-byte v0, p1

    invoke-direct {p0, v0}, Labcd/SK;->j6(B)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Labcd/SK;->v5:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_4

    iget v0, p0, Labcd/SK;->DW:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iput v1, p0, Labcd/SK;->DW:I

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iput v1, p0, Labcd/SK;->DW:I

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iput v2, p0, Labcd/SK;->DW:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iput v1, p0, Labcd/SK;->DW:I

    goto :goto_0
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Labcd/SK;->j6([BII)I

    move-result v0

    if-lez v0, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1, v0}, Labcd/SK;->write([BII)V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .registers 12

    const/4 v7, -0x1

    const/16 v6, 0xd

    invoke-direct {p0, p1, p2, p3}, Labcd/SK;->j6([BII)I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int v0, p2, p3

    sub-int v2, v0, v3

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Labcd/SK;->v5:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v2

    :goto_1
    add-int v4, v2, v3

    if-lt v1, v4, :cond_4

    if-ge v0, v4, :cond_3

    iget-object v1, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    sub-int v2, v4, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_3
    add-int/lit8 v0, v4, -0x1

    aget-byte v0, p1, v0

    if-ne v0, v6, :cond_0

    iput v6, p0, Labcd/SK;->DW:I

    goto :goto_0

    :cond_4
    aget-byte v4, p1, v1

    if-ne v4, v6, :cond_5

    iput v6, p0, Labcd/SK;->DW:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    iget v4, p0, Labcd/SK;->DW:I

    if-eq v4, v6, :cond_7

    if-ge v0, v1, :cond_6

    iget-object v4, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    sub-int v5, v1, v0

    invoke-virtual {v4, p1, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_6
    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write(I)V

    move v0, v1

    :cond_7
    iput v7, p0, Labcd/SK;->DW:I

    goto :goto_2

    :cond_8
    iput v7, p0, Labcd/SK;->DW:I

    goto :goto_2
.end method
