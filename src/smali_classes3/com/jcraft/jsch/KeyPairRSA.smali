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
    .registers 5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    if-eqz p2, :cond_1a

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I

    :cond_1a
    return-void
.end method

.method private VH()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    if-nez v0, :cond_22

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

    :cond_22
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    return-object v0
.end method

.method private Zo()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    if-nez v0, :cond_1c

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

    :cond_1c
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    return-object v0
.end method

.method private gn()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    if-nez v0, :cond_22

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

    :cond_22
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    return-object v0
.end method

.method static j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .registers 6

    const/16 v0, 0x8

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object p1

    new-instance v0, Lcom/jcraft/jsch/KeyPairRSA;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    const/4 p0, 0x4

    aget-object p0, p1, p0

    iput-object p0, v0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    const/4 p0, 0x5

    aget-object p0, p1, p0

    iput-object p0, v0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    const/4 p0, 0x6

    aget-object p0, p1, p0

    iput-object p0, v0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    new-instance p0, Ljava/lang/String;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p0, v0, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v0, Lcom/jcraft/jsch/KeyPair;->VH:I

    return-object v0
.end method


# virtual methods
.method public DW()[B
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->v5()Z

    move-result v0

    if-nez v0, :cond_44

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

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/jcraft/jsch/Buffer;->j6([BII)V

    return-object v2

    :cond_44
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW([B)[B
    .registers 5

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

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [[B

    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->j3:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->j6([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-object p1

    :catch_33
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method FH([B)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_31

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->v5(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_200

    :try_start_10
    const-string p1, ""

    const/4 v4, 0x4

    invoke-virtual {v1, v4, p1}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object p1

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    aget-object v1, p1, v3

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    aget-object v1, p1, v2

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    const/4 v1, 0x3

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B
    :try_end_28
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_10 .. :try_end_28} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_200

    :try_start_28
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->VH()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->gn()[B

    return v3

    :catch_2f
    move-exception p1

    return v0

    :cond_31
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->VH:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_200

    if-ne v1, v3, :cond_7d

    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_7c

    :try_start_3b
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    if-eqz p1, :cond_72

    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I

    :cond_72
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->VH()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->gn()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->Zo()[B
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_7b} :catch_200

    return v3

    :cond_7c
    return v0

    :cond_7d
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_92

    and-int/lit8 v1, v1, 0x7f

    const/4 v4, 0x2

    :goto_88
    if-gtz v1, :cond_8b

    goto :goto_93

    :cond_8b
    aget-byte v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_88

    :cond_92
    const/4 v4, 0x2

    :goto_93
    aget-byte v1, p1, v4

    if-eq v1, v2, :cond_98

    return v0

    :cond_98
    add-int/2addr v4, v3

    add-int/lit8 v1, v4, 0x1

    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_b6

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_a6
    if-gtz v2, :cond_aa

    move v2, v4

    goto :goto_b6

    :cond_aa
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_a6

    :cond_b6
    :goto_b6
    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_d7

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_c6
    if-gtz v1, :cond_cb

    move v1, v2

    move v2, v4

    goto :goto_d7

    :cond_cb
    aget-byte v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_c6

    :cond_d7
    :goto_d7
    :try_start_d7
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_de} :catch_200

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_fd

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_ed
    if-gtz v2, :cond_f1

    move v2, v4

    goto :goto_fd

    :cond_f1
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_ed

    :cond_fd
    :goto_fd
    :try_start_fd
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_104} :catch_200

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_125

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_114
    if-gtz v1, :cond_119

    move v1, v2

    move v2, v4

    goto :goto_125

    :cond_119
    shl-int/lit8 v2, v2, 0x8

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_114

    :cond_125
    :goto_125
    :try_start_125
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_12c} :catch_200

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_14b

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_13b
    if-gtz v2, :cond_13f

    move v2, v4

    goto :goto_14b

    :cond_13f
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_13b

    :cond_14b
    :goto_14b
    :try_start_14b
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->lg:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_152} :catch_200

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_173

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_162
    if-gtz v1, :cond_167

    move v1, v2

    move v2, v4

    goto :goto_173

    :cond_167
    shl-int/lit8 v2, v2, 0x8

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_162

    :cond_173
    :goto_173
    :try_start_173
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->rN:[B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_17a} :catch_200

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_199

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_189
    if-gtz v2, :cond_18d

    move v2, v4

    goto :goto_199

    :cond_18d
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_189

    :cond_199
    :goto_199
    :try_start_199
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->er:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1a0} :catch_200

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_1c1

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_1b0
    if-gtz v1, :cond_1b5

    move v1, v2

    move v2, v4

    goto :goto_1c1

    :cond_1b5
    shl-int/lit8 v2, v2, 0x8

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b0

    :cond_1c1
    :goto_1c1
    :try_start_1c1
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->yS:[B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c8} :catch_200

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_1e7

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_1d7
    if-gtz v2, :cond_1db

    move v2, v4

    goto :goto_1e7

    :cond_1db
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d7

    :cond_1e7
    :goto_1e7
    :try_start_1e7
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->gW:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    if-eqz p1, :cond_1ff

    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->Mr:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->BT:I
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ff} :catch_200

    :cond_1ff
    return v3

    :catch_200
    move-exception p1

    return v0
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

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->U2:[B

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
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

    return-object v0
.end method

.method public j6()V
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->j6()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->a8:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-void
.end method
