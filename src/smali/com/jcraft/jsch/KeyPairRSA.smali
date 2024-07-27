.class public Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final XL:[B

.field private static final aM:[B

.field private static final j3:[B


# instance fields
.field private BT:I

.field private Mr:[B

.field private U2:[B

.field private a8:[B

.field private er:[B

.field private gW:[B

.field private lg:[B

.field private rN:[B

.field private yS:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->XL:[B

    const-string v0, "-----END RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->aM:[B

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->j3:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    if-eqz p2, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I

    :cond_0
    return-void
.end method

.method private VH()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    return-object v0
.end method

.method private Zo()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    return-object v0
.end method

.method private gn()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    return-object v0
.end method

.method static j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .registers 7

    const/16 v0, 0x8

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/KeyPairRSA;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    const/4 v2, 0x4

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    const/4 v2, 0x5

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    const/4 v2, 0x6

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v1, Lcom/jcraft/jsch/KeyPair;->VH:I

    return-object v1
.end method


# virtual methods
.method public DW()[B
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->v5()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->j3:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->Zo()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

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
    .registers 6

    :try_start_0
    const-string v0, "signature.rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->DW()V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->DW([B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->DW([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->j6()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairRSA;->j3:[B

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

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->v5(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x4

    :try_start_1
    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->VH()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->gn()[B

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/KeyPair;->VH:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v2, :cond_3

    aget-byte v0, p1, v3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    :try_start_3
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I

    :cond_1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->VH()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->gn()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->Zo()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_5

    and-int/lit8 v4, v0, 0x7f

    move v0, v1

    :goto_1
    if-gtz v4, :cond_4

    :goto_2
    aget-byte v4, p1, v0

    if-eq v4, v1, :cond_6

    move v0, v3

    goto :goto_0

    :cond_4
    aget-byte v5, p1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_7

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_3
    if-gtz v4, :cond_11

    :cond_7
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_8

    and-int/lit8 v4, v1, 0x7f

    move v1, v3

    :goto_4
    if-gtz v4, :cond_12

    :cond_8
    :try_start_4
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    const/4 v5, 0x0

    invoke-static {p1, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_9

    and-int/lit8 v4, v1, 0x7f

    move v1, v3

    :goto_5
    if-gtz v4, :cond_13

    :cond_9
    :try_start_5
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    const/4 v5, 0x0

    invoke-static {p1, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_a

    and-int/lit8 v4, v1, 0x7f

    move v1, v3

    :goto_6
    if-gtz v4, :cond_14

    :cond_a
    :try_start_6
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    const/4 v5, 0x0

    invoke-static {p1, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_b

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_7
    if-gtz v4, :cond_15

    :cond_b
    :try_start_7
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_c

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_8
    if-gtz v4, :cond_16

    :cond_c
    :try_start_8
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_d

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_9
    if-gtz v4, :cond_17

    :cond_d
    :try_start_9
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_e

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_a
    if-gtz v4, :cond_18

    :cond_e
    :try_start_a
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_f

    and-int/lit8 v4, v0, 0x7f

    move v0, v3

    :goto_b
    if-gtz v4, :cond_19

    :cond_f
    :try_start_b
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    if-eqz v0, :cond_10

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_10
    move v0, v2

    goto/16 :goto_0

    :cond_11
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    :cond_12
    aget-byte v5, p1, v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_4

    :cond_13
    shl-int/lit8 v1, v1, 0x8

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_5

    :cond_14
    shl-int/lit8 v1, v1, 0x8

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_6

    :cond_15
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_7

    :cond_16
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_8

    :cond_17
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_9

    :cond_18
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_a

    :cond_19
    shl-int/lit8 v0, v0, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move v0, v3

    goto/16 :goto_0
.end method

.method FH()[B
    .registers 2

    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->j3:[B

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
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairRSA;->j3:[B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->j6([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->DW:[B

    goto :goto_0
.end method

.method public j6()V
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->j6()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-void
.end method
