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

    if-le v0, v2, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Labcd/SK;->Hw:I

    aput-byte p1, v1, v0

    array-length p1, v1

    if-ne v2, p1, :cond_15

    invoke-direct {p0}, Labcd/SK;->j6()V

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private j6([BII)I
    .registers 7

    iget v0, p0, Labcd/SK;->Hw:I

    iget-object v1, p0, Labcd/SK;->FH:[B

    array-length v2, v1

    if-le v0, v2, :cond_8

    return p3

    :cond_8
    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Labcd/SK;->FH:[B

    iget v2, p0, Labcd/SK;->Hw:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Labcd/SK;->Hw:I

    add-int/2addr p1, v0

    iput p1, p0, Labcd/SK;->Hw:I

    sub-int/2addr p3, v0

    if-lez p3, :cond_20

    invoke-direct {p0}, Labcd/SK;->j6()V

    :cond_20
    return p3
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

    if-ge v0, v1, :cond_a

    invoke-direct {p0}, Labcd/SK;->j6()V

    :cond_a
    const/4 v0, -0x1

    iput v0, p0, Labcd/SK;->DW:I

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 5

    int-to-byte v0, p1

    invoke-direct {p0, v0}, Labcd/SK;->j6(B)I

    move-result v0

    if-ltz v0, :cond_8

    return-void

    :cond_8
    iget-boolean v0, p0, Labcd/SK;->v5:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_12
    const/16 v0, 0xa

    const/4 v1, -0x1

    const/16 v2, 0xd

    if-ne p1, v0, :cond_2b

    iget p1, p0, Labcd/SK;->DW:I

    if-ne p1, v2, :cond_23

    :goto_1d
    iget-object p1, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_35

    :cond_23
    if-ne p1, v1, :cond_37

    iget-object p1, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1d

    :cond_2b
    iget-object v0, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    if-ne p1, v2, :cond_35

    iput v2, p0, Labcd/SK;->DW:I

    goto :goto_37

    :cond_35
    :goto_35
    iput v1, p0, Labcd/SK;->DW:I

    :cond_37
    :goto_37
    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Labcd/SK;->j6([BII)I

    move-result v0

    if-lez v0, :cond_d

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1, v0}, Labcd/SK;->write([BII)V

    :cond_d
    return-void
.end method

.method public write([BII)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Labcd/SK;->j6([BII)I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-boolean p3, p0, Labcd/SK;->v5:Z

    if-eqz p3, :cond_16

    iget-object p3, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_16
    move p3, p2

    move v1, p3

    :goto_18
    add-int v2, p2, v0

    const/16 v3, 0xd

    if-lt p3, v2, :cond_30

    if-ge v1, v2, :cond_27

    iget-object p2, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    sub-int p3, v2, v1

    invoke-virtual {p2, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_27
    add-int/lit8 v2, v2, -0x1

    aget-byte p1, p1, v2

    if-ne p1, v3, :cond_2f

    iput v3, p0, Labcd/SK;->DW:I

    :cond_2f
    return-void

    :cond_30
    aget-byte v2, p1, p3

    if-ne v2, v3, :cond_37

    iput v3, p0, Labcd/SK;->DW:I

    goto :goto_51

    :cond_37
    const/16 v4, 0xa

    const/4 v5, -0x1

    if-ne v2, v4, :cond_4f

    iget v2, p0, Labcd/SK;->DW:I

    if-eq v2, v3, :cond_4f

    if-ge v1, p3, :cond_49

    iget-object v2, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_49
    iget-object v1, p0, Labcd/SK;->j6:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    move v1, p3

    :cond_4f
    iput v5, p0, Labcd/SK;->DW:I

    :goto_51
    add-int/lit8 p3, p3, 0x1

    goto :goto_18
.end method
