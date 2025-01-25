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

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    iput-object p6, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    if-eqz p2, :cond_1e

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I

    :cond_1e
    return-void
.end method

.method static j6(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .registers 10

    const/4 v0, 0x7

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object p1

    new-instance v7, Lcom/jcraft/jsch/KeyPairDSA;

    const/4 v0, 0x1

    aget-object v2, p1, v0

    const/4 v0, 0x2

    aget-object v3, p1, v0

    const/4 v0, 0x3

    aget-object v4, p1, v0

    const/4 v0, 0x4

    aget-object v5, p1, v0

    const/4 v0, 0x5

    aget-object v6, p1, v0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p0, v7, Lcom/jcraft/jsch/KeyPair;->gn:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v7, Lcom/jcraft/jsch/KeyPair;->VH:I

    return-object v7
.end method


# virtual methods
.method public DW()[B
    .registers 5

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->v5()Z

    move-result v0

    if-nez v0, :cond_3d

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

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/jcraft/jsch/Buffer;->j6([BII)V

    return-object v2

    :cond_3d
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

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [[B

    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->j3:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->j6([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->DW:[B
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    return-object p1

    :catch_37
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method FH([B)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->VH:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_174

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ne v1, v3, :cond_45

    aget-byte v1, p1, v0

    if-eq v1, v2, :cond_44

    :try_start_c
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->FH()I

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->VH()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    if-eqz p1, :cond_43

    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I

    :cond_43
    return v3

    :cond_44
    return v0

    :cond_45
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->VH:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_60

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->v5(I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_53} :catch_174

    :try_start_53
    const-string p1, ""

    invoke-virtual {v1, v3, p1}, Lcom/jcraft/jsch/Buffer;->j6(ILjava/lang/String;)[[B

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B
    :try_end_5d
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_53 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_174

    return v3

    :catch_5e
    move-exception p1

    return v0

    :cond_60
    aget-byte v1, p1, v0

    if-eq v1, v2, :cond_65

    return v0

    :cond_65
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7a

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x2

    :goto_70
    if-gtz v1, :cond_73

    goto :goto_7b

    :cond_73
    aget-byte v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_70

    :cond_7a
    const/4 v2, 0x2

    :goto_7b
    aget-byte v1, p1, v2

    if-eq v1, v4, :cond_80

    return v0

    :cond_80
    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_9e

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_8e
    if-gtz v2, :cond_92

    move v2, v4

    goto :goto_9e

    :cond_92
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_8e

    :cond_9e
    :goto_9e
    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_bf

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_ae
    if-gtz v1, :cond_b3

    move v1, v2

    move v2, v4

    goto :goto_bf

    :cond_b3
    aget-byte v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_ae

    :cond_bf
    :goto_bf
    :try_start_bf
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c6} :catch_174

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_e5

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_d5
    if-gtz v2, :cond_d9

    move v2, v4

    goto :goto_e5

    :cond_d9
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_d5

    :cond_e5
    :goto_e5
    :try_start_e5
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ec} :catch_174

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_10d

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_fc
    if-gtz v1, :cond_101

    move v1, v2

    move v2, v4

    goto :goto_10d

    :cond_101
    shl-int/lit8 v2, v2, 0x8

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_fc

    :cond_10d
    :goto_10d
    :try_start_10d
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_114} :catch_174

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_133

    and-int/lit8 v2, v2, 0x7f

    const/4 v4, 0x0

    :goto_123
    if-gtz v2, :cond_127

    move v2, v4

    goto :goto_133

    :cond_127
    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_123

    :cond_133
    :goto_133
    :try_start_133
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13a} :catch_174

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_15b

    and-int/lit8 v1, v1, 0x7f

    move v4, v2

    const/4 v2, 0x0

    :goto_14a
    if-gtz v1, :cond_14f

    move v1, v2

    move v2, v4

    goto :goto_15b

    :cond_14f
    shl-int/lit8 v2, v2, 0x8

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_14a

    :cond_15b
    :goto_15b
    :try_start_15b
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    if-eqz p1, :cond_173

    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->er:I
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_173} :catch_174

    :cond_173
    return v3

    :catch_174
    move-exception p1

    return v0
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

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
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

    return-object v0
.end method

.method Zo()[B
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPair;->j6(I)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/jcraft/jsch/KeyPair;->DW([BII)I

    move-result v1

    new-array v0, v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Mr:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->U2:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->a8:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->lg:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->j6([BI[B)I

    return-object v2
.end method

.method public j6()V
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->j6()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->rN:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->DW([B)V

    return-void
.end method
