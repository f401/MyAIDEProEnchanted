.class public Labcd/aM;
.super Labcd/EL;


# instance fields
.field private final DW:I

.field private final FH:[B

.field private final j6:Z


# direct methods
.method public constructor <init>(ILabcd/rL;)V
    .registers 7

    invoke-direct {p0}, Labcd/EL;-><init>()V

    iput p1, p0, Labcd/aM;->DW:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/aM;->j6:Z

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Labcd/rL;->j6()I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Labcd/aM;->FH:[B

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2, v1}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/yL;

    const-string v3, "DER"

    invoke-virtual {v0, v3}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/DL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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

    const/4 v4, 0x0

    const/4 v1, 0x1

    aget-byte v0, p2, v4

    and-int/lit8 v0, v0, 0x1f

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v2, 0x7f

    if-eqz v3, :cond_2

    :goto_0
    if-ltz v2, :cond_0

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    array-length v2, p2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v0, p1

    aput-byte v0, v2, v4

    return-object v2

    :cond_1
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/DL;

    const-string v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Labcd/DL;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
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
    .registers 5

    const/4 v2, 0x0

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Labcd/yL;->Hw()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/aM;->j6(I[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    aget-byte v0, v1, v2

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :cond_0
    new-instance v0, Labcd/vL;

    invoke-direct {v0, v1}, Labcd/vL;-><init>([B)V

    invoke-virtual {v0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported tag number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Labcd/CL;)V
    .registers 5

    iget-boolean v0, p0, Labcd/aM;->j6:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    :goto_0
    iget v1, p0, Labcd/aM;->DW:I

    iget-object v2, p0, Labcd/aM;->FH:[B

    invoke-virtual {p1, v0, v1, v2}, Labcd/CL;->j6(II[B)V

    return-void

    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method j6(Labcd/EL;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/aM;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/aM;

    iget-boolean v1, p0, Labcd/aM;->j6:Z

    iget-boolean v2, p1, Labcd/aM;->j6:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Labcd/aM;->DW:I

    iget v2, p1, Labcd/aM;->DW:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Labcd/aM;->FH:[B

    iget-object v2, p1, Labcd/aM;->FH:[B

    invoke-static {v1, v2}, Labcd/OP;->j6([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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
