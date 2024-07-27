.class public Lcom/jcraft/jsch/KeyPairDSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final XL:[B

.field private static final aM:[B

.field private static final j3:[B


# instance fields
.field private Mr:[B

.field private U2:[B

.field private a8:[B

.field private er:I

.field private lg:[B

.field private rN:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->XL:[B

    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->aM:[B

    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->j3:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .registers 9

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    iput-object p6, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    if-eqz p2, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I

    :cond_0
    return-void
.end method

.method static j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .registers 10

    const/4 v0, 0x7

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object v7

    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    const/4 v1, 0x1

    aget-object v2, v7, v1

    const/4 v1, 0x2

    aget-object v3, v7, v1

    const/4 v1, 0x3

    aget-object v4, v7, v1

    const/4 v1, 0x4

    aget-object v5, v7, v1

    const/4 v1, 0x5

    aget-object v6, v7, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v7, v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jcraft/jsch/KeyPair;->VH:I

    return-object v0
.end method


# virtual methods
.method public DW()[B
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->v5()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->j3:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->Hw()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/Buffer;->j6([BII)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW([B)[B
    .registers 7

    :try_start_0
    const-string v0, "signature.dss"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->DW()V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jsch/SignatureDSA;->j6([B[B[B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->DW([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->j6()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairDSA;->j3:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->j6([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method FH([B)Z
    .registers 8

    const/16 v4, 0x30

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v2, :cond_2

    aget-byte v0, p1, v3

    if-eq v0, v4, :cond_1

    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->v5(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    :try_start_2
    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_3
    aget-byte v0, p1, v3

    if-eq v0, v4, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_6

    and-int/lit8 v4, v0, 0x7f

    move v0, v1

    :goto_1
    if-gtz v4, :cond_5

    :goto_2
    aget-byte v4, p1, v0

    if-eq v4, v1, :cond_7

    move v0, v3

    goto :goto_0

    :cond_5
    aget-byte v5, p1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_8

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_3
    if-gtz v4, :cond_f

    :cond_8
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_9

    and-int/lit8 v4, v1, 0x7f

    move v1, v3

    :goto_4
    if-gtz v4, :cond_10

    :cond_9
    :try_start_3
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    const/4 v5, 0x0

    invoke-static {p1, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_a

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_5
    if-gtz v4, :cond_11

    :cond_a
    :try_start_4
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_b

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_6
    if-gtz v4, :cond_12

    :cond_b
    :try_start_5
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_c

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_7
    if-gtz v4, :cond_13

    :cond_c
    :try_start_6
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_d

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_8
    if-gtz v4, :cond_14

    :cond_d
    :try_start_7
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    if-eqz v0, :cond_e

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_e
    move v0, v2

    goto/16 :goto_0

    :cond_f
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    :cond_10
    aget-byte v5, p1, v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_4

    :cond_11
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_5

    :cond_12
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_6

    :cond_13
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_14
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :catch_1
    move-exception v0

    move v0, v3

    goto/16 :goto_0
.end method

.method FH()[B
    .registers 2

    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->j3:[B

    return-object v0
.end method

.method public Hw()[B
    .registers 5

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->Hw()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairDSA;->j3:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->j6([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    goto :goto_0
.end method

.method Zo()[B
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/KeyPair;->DW([BII)I

    move-result v0

    new-array v2, v3, [B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    return-object v1
.end method

.method public j6()V
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->j6()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-void
.end method
