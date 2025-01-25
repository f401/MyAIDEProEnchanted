.class public Lcom/jcraft/jsch/KeyPairPKCS8;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final Mr:[B

.field private static final U2:[B

.field private static final XL:[B

.field private static final a8:[B

.field private static final aM:[B

.field private static final er:[B

.field private static final j3:[B

.field private static final lg:[B

.field private static final rN:[B

.field private static final yS:[B


# instance fields
.field private gW:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x9

    new-array v1, v0, [B

    fill-array-data v1, :array_4c

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->XL:[B

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_56

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->aM:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_5e

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->j3:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_68

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->Mr:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_72

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->U2:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_7c

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->a8:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_86

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->lg:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_90

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->rN:[B

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->er:[B

    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->yS:[B

    return-void

    :array_4c
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_56
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x38t
        0x4t
        0x1t
    .end array-data

    :array_5e
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xdt
    .end array-data

    nop

    :array_68
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xct
    .end array-data

    nop

    :array_72
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_7c
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x16t
    .end array-data

    nop

    :array_86
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2at
    .end array-data

    nop

    :array_90
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->gW:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method


# virtual methods
.method public DW()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->gW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->DW()[B

    move-result-object v0

    return-object v0
.end method

.method public DW([B)[B
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->gW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->DW([B)[B

    move-result-object p1

    return-object p1
.end method

.method FH([B)Z
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v2, p0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object p1
    :try_end_f
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_1 .. :try_end_f} :catch_f0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_ee

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object p1, p1, v4

    :try_start_15
    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v5

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    array-length v6, v3

    if-lez v6, :cond_39

    const/4 v6, 0x0

    :goto_29
    array-length v7, v3

    if-lt v6, v7, :cond_2d

    goto :goto_39

    :cond_2d
    aget-object v7, v3, v6

    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_39
    :goto_39
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object p1

    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->XL:[B

    invoke-static {v5, v3}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v3

    if-eqz v3, :cond_59

    new-instance v1, Lcom/jcraft/jsch/KeyPairRSA;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->u7:Lcom/jcraft/jsch/JSch;

    invoke-direct {v1, v3}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/KeyPairRSA;->FH([B)Z

    move-result p1

    if-eqz p1, :cond_e9

    :goto_55
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->gW:Lcom/jcraft/jsch/KeyPair;

    goto/16 :goto_e9

    :cond_59
    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->aM:[B

    invoke-static {v5, v3}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v3

    if-eqz v3, :cond_e9

    new-instance v3, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v3, p0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_90

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object p1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object p1

    const/4 v5, 0x0

    :goto_7d
    array-length v6, p1

    if-lt v5, v6, :cond_84

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_97

    :cond_84
    aget-object v6, p1, v5

    invoke-virtual {v6}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    :cond_90
    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_97
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [B

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [B

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, [B

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v9}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v11}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    new-instance p1, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->u7:Lcom/jcraft/jsch/JSch;

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPairDSA;->Zo()[B

    move-result-object p1

    new-instance v1, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->u7:Lcom/jcraft/jsch/JSch;

    invoke-direct {v1, v3}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/KeyPairDSA;->FH([B)Z

    move-result p1
    :try_end_e5
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_15 .. :try_end_e5} :catch_f0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_e5} :catch_ee

    if-eqz p1, :cond_e9

    goto/16 :goto_55

    :cond_e9
    :goto_e9
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->gW:Lcom/jcraft/jsch/KeyPair;

    if-eqz p1, :cond_f1

    return v2

    :catch_ee
    move-exception p1

    goto :goto_f1

    :catch_f0
    move-exception p1

    :cond_f1
    :goto_f1
    return v0
.end method

.method FH()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->gW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->FH()[B

    move-result-object v0

    return-object v0
.end method

.method Hw([B)Lcom/jcraft/jsch/Cipher;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->U2:[B

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_35

    if-eqz v1, :cond_c

    const-string v1, "aes128-cbc"

    goto :goto_23

    :cond_c
    :try_start_c
    sget-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->a8:[B

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_35

    if-eqz v1, :cond_17

    const-string v1, "aes192-cbc"

    goto :goto_23

    :cond_17
    :try_start_17
    sget-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->lg:[B

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_35

    if-eqz v1, :cond_22

    const-string v1, "aes256-cbc"

    goto :goto_23

    :cond_22
    move-object v1, v0

    :goto_23
    :try_start_23
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Cipher;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_33

    move-object v0, v2

    goto :goto_7f

    :catch_33
    move-exception v2

    goto :goto_37

    :catch_35
    move-exception v1

    move-object v1, v0

    :goto_37
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7f

    if-nez v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown oid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->FH([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6a

    :cond_57
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "function "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6a
    invoke-static {}, Lcom/jcraft/jsch/JSch;->v5()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PKCS8: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/jcraft/jsch/Logger;->j6(ILjava/lang/String;)V

    :cond_7f
    :goto_7f
    return-object v0
.end method

.method public Hw()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->gW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->Hw()[B

    move-result-object v0

    return-object v0
.end method

.method public j6([B)Z
    .registers 12

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->v5()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->v5()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_10
    const/4 v0, 0x0

    :try_start_11
    new-instance v2, Lcom/jcraft/jsch/KeyPair$ASN1;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->J8:[B

    invoke-direct {v2, p0, v3}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v5

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v3
    :try_end_2e
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_11 .. :try_end_2e} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_be

    aget-object v2, v2, v1

    :try_start_30
    sget-object v4, Lcom/jcraft/jsch/KeyPairPKCS8;->j3:[B

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->j6([B[B)Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2
    :try_end_3c
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_30 .. :try_end_3c} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_be

    aget-object v3, v2, v0

    aget-object v2, v2, v1

    :try_start_40
    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v4

    new-instance v6, Ljava/math/BigInteger;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->DW()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v6

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->j6()[B

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/KeyPairPKCS8;->Hw([B)Lcom/jcraft/jsch/Cipher;

    move-result-object v6
    :try_end_7c
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_40 .. :try_end_7c} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_7c} :catch_be

    if-nez v6, :cond_7f

    return v0

    :cond_7f
    :try_start_7f
    const-string v7, "pbkdf"

    invoke-static {v7}, Lcom/jcraft/jsch/JSch;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jcraft/jsch/PBKDF;

    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->j6()I

    move-result v8

    invoke-interface {v7, p1, v4, v3, v8}, Lcom/jcraft/jsch/PBKDF;->j6([B[BII)[B

    move-result-object p1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_97} :catch_98

    goto :goto_9a

    :catch_98
    move-exception p1

    const/4 p1, 0x0

    :goto_9a
    if-nez p1, :cond_9d

    return v0

    :cond_9d
    :try_start_9d
    invoke-interface {v6, v1, p1, v2}, Lcom/jcraft/jsch/Cipher;->j6(I[B[B)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->DW([B)V

    array-length p1, v5

    new-array p1, p1, [B

    const/4 v2, 0x0

    array-length v7, v5

    const/4 v9, 0x0

    move-object v4, v6

    move v6, v2

    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/Cipher;->j6([BII[BI)V

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPairPKCS8;->FH([B)Z

    move-result p1

    if-eqz p1, :cond_c1

    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->J0:Z

    return v1

    :cond_b8
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->rN:[B

    invoke-static {v3, p1}, Lcom/jcraft/jsch/Util;->j6([B[B)Z
    :try_end_bd
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_9d .. :try_end_bd} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_bd} :catch_be

    goto :goto_c1

    :catch_be
    move-exception p1

    goto :goto_c1

    :catch_c0
    move-exception p1

    :cond_c1
    :goto_c1
    return v0
.end method
