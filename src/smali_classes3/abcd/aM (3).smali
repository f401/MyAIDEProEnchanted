.class public Labcd/aM;
.super Labcd/EL;


# instance fields
.field private final DW:I

.field private final FH:[B

.field private final j6:Z


# direct methods
.method public constructor <init>(ILabcd/rL;)V
    .registers 6

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput p1, p0, Labcd/aM;->DW:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/aM;->j6:Z

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p2}, Labcd/rL;->j6()I

    move-result v1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Labcd/aM;->FH:[B

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {p2, v0}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v1

    check-cast v1, Labcd/yL;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :catch_2d
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "malformed object: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/DL;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :goto_42
    throw v0

    :goto_43
    goto :goto_42
.end method

.method constructor <init>(ZI[B)V
    .registers 4

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput-boolean p1, p0, Labcd/aM;->j6:Z

    iput p2, p0, Labcd/aM;->DW:I

    iput-object p3, p0, Labcd/aM;->FH:[B

    return-void
.end method

.method private j6(I[B)[B
    .registers 8

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_28

    aget-byte v1, p2, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v2, v1, 0x7f

    if-eqz v2, :cond_20

    const/4 v2, 0x2

    :goto_12
    if-ltz v1, :cond_29

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_19

    goto :goto_29

    :cond_19
    aget-byte v1, p2, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    new-instance p1, Labcd/DL;

    const-string p2, "corrupted stream - invalid high tag number found"

    invoke-direct {p1, p2}, Labcd/DL;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    const/4 v2, 0x1

    :cond_29
    :goto_29
    array-length v1, p2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    new-array v4, v1, [B

    sub-int/2addr v1, v3

    invoke-static {p2, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte p1, p1

    aput-byte p1, v4, v0

    return-object v4
.end method


# virtual methods
.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Labcd/aM;->j6:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Labcd/aM;->j6:Z

    iget v1, p0, Labcd/aM;->DW:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Labcd/aM;->FH:[B

    invoke-static {v1}, Labcd/OP;->DW([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public j6(I)Labcd/EL;
    .registers 4

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_24

    invoke-virtual {p0}, Labcd/yL;->Hw()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/aM;->j6(I[B)[B

    move-result-object p1

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1a

    aget-byte v0, p1, v1

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    :cond_1a
    new-instance v0, Labcd/vL;

    invoke-direct {v0, p1}, Labcd/vL;-><init>([B)V

    invoke-virtual {v0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object p1

    return-object p1

    :cond_24
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unsupported tag number"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method j6(Labcd/CL;)V
    .registers 5

    iget-boolean v0, p0, Labcd/aM;->j6:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x60

    goto :goto_9

    :cond_7
    const/16 v0, 0x40

    :goto_9
    iget v1, p0, Labcd/aM;->DW:I

    iget-object v2, p0, Labcd/aM;->FH:[B

    invoke-virtual {p1, v0, v1, v2}, Labcd/CL;->j6(II[B)V

    return-void
.end method

.method j6(Labcd/EL;)Z
    .registers 5

    instance-of v0, p1, Labcd/aM;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/aM;

    iget-boolean v0, p0, Labcd/aM;->j6:Z

    iget-boolean v2, p1, Labcd/aM;->j6:Z

    if-ne v0, v2, :cond_20

    iget v0, p0, Labcd/aM;->DW:I

    iget v2, p1, Labcd/aM;->DW:I

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Labcd/aM;->FH:[B

    iget-object p1, p1, Labcd/aM;->FH:[B

    invoke-static {v0, p1}, Labcd/OP;->j6([B[B)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method

.method public tp()[B
    .registers 2

    iget-object v0, p0, Labcd/aM;->FH:[B

    return-object v0
.end method

.method public u7()I
    .registers 2

    iget v0, p0, Labcd/aM;->DW:I

    return v0
.end method

.method v5()I
    .registers 3

    iget v0, p0, Labcd/aM;->DW:I

    invoke-static {v0}, Labcd/OM;->DW(I)I

    move-result v0

    iget-object v1, p0, Labcd/aM;->FH:[B

    array-length v1, v1

    invoke-static {v1}, Labcd/OM;->j6(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/aM;->FH:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
