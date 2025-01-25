.class public Labcd/tP;
.super Ljava/security/cert/X509Certificate;

# interfaces
.implements Labcd/nP;


# instance fields
.field private DW:Labcd/xN;

.field private FH:[Z

.field private Hw:Z

.field private Zo:Labcd/nP;

.field private j6:Labcd/HN;

.field private v5:I


# direct methods
.method public constructor <init>(Labcd/HN;)V
    .registers 9

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    new-instance v0, Labcd/fP;

    invoke-direct {v0}, Labcd/fP;-><init>()V

    iput-object v0, p0, Labcd/tP;->Zo:Labcd/nP;

    iput-object p1, p0, Labcd/tP;->j6:Labcd/HN;

    :try_start_c
    const-string p1, "2.5.29.19"

    invoke-direct {p0, p1}, Labcd/tP;->j6(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-static {p1}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p1

    invoke-static {p1}, Labcd/xN;->j6(Ljava/lang/Object;)Labcd/xN;

    move-result-object p1

    iput-object p1, p0, Labcd/tP;->DW:Labcd/xN;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_79

    :cond_1e
    :try_start_1e
    const-string p1, "2.5.29.15"

    invoke-direct {p0, p1}, Labcd/tP;->j6(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_60

    invoke-static {p1}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p1

    invoke-static {p1}, Labcd/cM;->j6(Ljava/lang/Object;)Labcd/cM;

    move-result-object p1

    invoke-virtual {p1}, Labcd/cM;->u7()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Labcd/cM;->tp()I

    move-result p1

    sub-int/2addr v1, p1

    const/16 p1, 0x9

    if-ge v1, p1, :cond_3f

    goto :goto_40

    :cond_3f
    move p1, v1

    :goto_40
    new-array p1, p1, [Z

    iput-object p1, p0, Labcd/tP;->FH:[Z

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_46
    if-ne v2, v1, :cond_49

    goto :goto_63

    :cond_49
    iget-object v3, p0, Labcd/tP;->FH:[Z

    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v2, 0x8
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_51} :catch_64

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_5a

    const/4 v4, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_60
    const/4 p1, 0x0

    :try_start_61
    iput-object p1, p0, Labcd/tP;->FH:[Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_63} :catch_64

    :goto_63
    return-void

    :catch_64
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot construct KeyUsage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_79
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot construct BasicConstraints: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    goto :goto_8f

    :goto_8e
    throw p1

    :goto_8f
    goto :goto_8e
.end method

.method private j6()I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Labcd/tP;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_7
    array-length v4, v1
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_8} :catch_13

    if-lt v2, v4, :cond_b

    return v3

    :cond_b
    aget-byte v4, v1, v2

    mul-int v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_13
    move-exception v1

    return v0
.end method

.method private j6(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .registers 5

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    iget-object v1, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v1}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/EN;->tp()Labcd/wN;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/tP;->j6(Labcd/wN;Labcd/wN;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    invoke-static {p2, v0}, Labcd/uP;->j6(Ljava/security/Signature;Labcd/qL;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Labcd/tP;->getTBSCertificate()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Labcd/tP;->getSignature()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    :cond_38
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "certificate does not verify with supplied key"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Labcd/wN;Labcd/wN;)Z
    .registers 6

    invoke-virtual {p1}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v0

    invoke-virtual {p2}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object p1

    sget-object p2, Labcd/mM;->j6:Labcd/mM;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v2

    :cond_2b
    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object p2

    if-eqz p2, :cond_44

    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object p1

    sget-object p2, Labcd/mM;->j6:Labcd/mM;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    return v1

    :cond_44
    return v2

    :cond_45
    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object p1

    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private j6(Ljava/lang/String;)[B
    .registers 4

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Labcd/oM;

    invoke-direct {v1, p1}, Labcd/oM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Labcd/IN;->j6()Labcd/AL;

    move-result-object p1

    invoke-virtual {p1}, Labcd/AL;->u7()[B

    move-result-object p1

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public checkValidity()V
    .registers 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Labcd/tP;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 7

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Labcd/tP;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3f

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Labcd/tP;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_21

    return-void

    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "certificate not valid till "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->tp()Labcd/FN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FN;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "certificate expired on "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->v5()Labcd/FN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FN;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Ljava/security/cert/Certificate;

    :try_start_c
    invoke-virtual {p0}, Labcd/tP;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Labcd/OP;->j6([B[B)Z

    move-result p1
    :try_end_18
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_18} :catch_19

    return p1

    :catch_19
    move-exception p1

    return v1
.end method

.method public getBasicConstraints()I
    .registers 2

    iget-object v0, p0, Labcd/tP;->DW:Labcd/xN;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Labcd/xN;->Zo()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Labcd/tP;->DW:Labcd/xN;

    invoke-virtual {v0}, Labcd/xN;->v5()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_16

    const v0, 0x7fffffff

    return v0

    :cond_16
    iget-object v0, p0, Labcd/tP;->DW:Labcd/xN;

    invoke-virtual {v0}, Labcd/xN;->v5()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 6

    invoke-virtual {p0}, Labcd/tP;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v1}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_23

    return-object v0

    :cond_23
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/oM;

    invoke-virtual {v1, v3}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v4

    invoke-virtual {v4}, Labcd/IN;->DW()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 5

    const-string v0, "2.5.29.37"

    invoke-direct {p0, v0}, Labcd/tP;->j6(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3d

    :try_start_8
    new-instance v1, Labcd/vL;

    invoke-direct {v1, v0}, Labcd/vL;-><init>([B)V

    invoke-virtual {v1}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/FL;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v0}, Labcd/FL;->tp()I

    move-result v3

    if-ne v2, v3, :cond_24

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_24
    invoke-virtual {v0, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    check-cast v3, Labcd/oM;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_34

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :catch_34
    move-exception v0

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "error processing extended key usage extension"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 4

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance v1, Labcd/oM;

    invoke-direct {v1, p1}, Labcd/oM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object p1

    if-eqz p1, :cond_39

    :try_start_17
    invoke-virtual {p1}, Labcd/IN;->j6()Labcd/AL;

    move-result-object p1

    invoke-virtual {p1}, Labcd/yL;->Hw()[B

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_20

    return-object p1

    :catch_20
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error parsing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 3

    :try_start_0
    new-instance v0, Labcd/mP;

    iget-object v1, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v1}, Labcd/HN;->Zo()Labcd/sN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/yL;->Hw()[B

    move-result-object v1

    invoke-static {v1}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/mP;-><init>(Labcd/sN;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 9

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->gn()Labcd/cM;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Labcd/cM;->u7()[B

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Labcd/cM;->tp()I

    move-result v0

    sub-int/2addr v2, v0

    new-array v0, v2, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ne v4, v2, :cond_1f

    return-object v0

    :cond_1f
    div-int/lit8 v5, v4, 0x8

    aget-byte v5, v1, v5

    rem-int/lit8 v6, v4, 0x8

    const/16 v7, 0x80

    ushr-int v6, v7, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    :goto_2f
    aput-boolean v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/CL;

    invoke-direct {v1, v0}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v2}, Labcd/HN;->Zo()Labcd/sN;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/CL;->j6(Labcd/qL;)V

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyUsage()[Z
    .registers 2

    iget-object v0, p0, Labcd/tP;->FH:[Z

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 6

    invoke-virtual {p0}, Labcd/tP;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v1}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_23

    return-object v0

    :cond_23
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/oM;

    invoke-virtual {v1, v3}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v4

    invoke-virtual {v4}, Labcd/IN;->DW()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->v5()Labcd/FN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FN;->v5()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->tp()Labcd/FN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FN;->v5()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    :try_start_0
    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->we()Labcd/CN;

    move-result-object v0

    invoke-static {v0}, Labcd/pP;->j6(Labcd/CN;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->VH()Labcd/wL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 7

    sget-object v0, Labcd/pP;->DW:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const-string v1, "Alg.Alias.Signature."

    if-eqz v0, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/tP;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    :cond_21
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v2, 0x0

    :goto_26
    array-length v3, v0

    if-ne v2, v3, :cond_2e

    invoke-virtual {p0}, Labcd/tP;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/tP;->getSigAlgOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_47

    return-object v3

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_26
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 3

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_c
    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->gn()Labcd/cM;

    move-result-object v0

    invoke-virtual {v0}, Labcd/cM;->u7()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 3

    new-instance v0, Labcd/mP;

    iget-object v1, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v1}, Labcd/HN;->EQ()Labcd/sN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/sN;->DW()Labcd/EL;

    move-result-object v1

    invoke-static {v1}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/mP;-><init>(Labcd/sN;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 9

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->J8()Labcd/cM;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Labcd/cM;->u7()[B

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Labcd/cM;->tp()I

    move-result v0

    sub-int/2addr v2, v0

    new-array v0, v2, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ne v4, v2, :cond_1f

    return-object v0

    :cond_1f
    div-int/lit8 v5, v4, 0x8

    aget-byte v5, v1, v5

    rem-int/lit8 v6, v4, 0x8

    const/16 v7, 0x80

    ushr-int v6, v7, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    :goto_2f
    aput-boolean v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/CL;

    invoke-direct {v1, v0}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v2}, Labcd/HN;->EQ()Labcd/sN;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/CL;->j6(Labcd/qL;)V

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t encode issuer DN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTBSCertificate()[B
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J8()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 6

    invoke-virtual {p0}, Labcd/tP;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8e

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_8e

    :cond_1f
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/oM;

    invoke-virtual {v2}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Labcd/sP;->J8:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->DW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->tp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->v5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->VH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->gn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->u7:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->EQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    sget-object v4, Labcd/sP;->we:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    goto :goto_17

    :cond_82
    invoke-virtual {v0, v2}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v2

    invoke-virtual {v2}, Labcd/IN;->DW()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_8e
    :goto_8e
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Labcd/tP;->Hw:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Labcd/tP;->j6()I

    move-result v0

    iput v0, p0, Labcd/tP;->v5:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/tP;->Hw:Z

    :cond_e
    iget v0, p0, Labcd/tP;->v5:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSignature()[B

    move-result-object v3

    const-string v4, "            Signature: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static {v3, v5, v6}, Labcd/VP;->j6([BII)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x14

    :goto_a2
    array-length v5, v3

    if-lt v4, v5, :cond_199

    iget-object v3, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v3}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v3

    invoke-virtual {v3}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v3

    if-eqz v3, :cond_194

    invoke-virtual {v3}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_c0

    const-string v5, "       Extensions: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c0
    :goto_c0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_c8

    goto/16 :goto_194

    :cond_c8
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/oM;

    invoke-virtual {v3, v5}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v6

    invoke-virtual {v6}, Labcd/IN;->j6()Labcd/AL;

    move-result-object v7

    if-eqz v7, :cond_18f

    new-instance v7, Labcd/vL;

    invoke-virtual {v6}, Labcd/IN;->j6()Labcd/AL;

    move-result-object v8

    invoke-virtual {v8}, Labcd/AL;->u7()[B

    move-result-object v8

    invoke-direct {v7, v8}, Labcd/vL;-><init>([B)V

    const-string v8, "                       critical("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Labcd/IN;->DW()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v6, ") "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_f6
    sget-object v6, Labcd/IN;->VH:Labcd/zL;

    invoke-virtual {v5, v6}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-virtual {v7}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v6

    invoke-static {v6}, Labcd/xN;->j6(Ljava/lang/Object;)Labcd/xN;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c0

    :cond_10d
    sget-object v6, Labcd/IN;->FH:Labcd/zL;

    invoke-virtual {v5, v6}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_124

    new-instance v6, Labcd/BN;

    invoke-virtual {v7}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v7

    check-cast v7, Labcd/cM;

    invoke-direct {v6, v7}, Labcd/BN;-><init>(Labcd/cM;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_109

    :cond_124
    sget-object v6, Labcd/dN;->DW:Labcd/zL;

    invoke-virtual {v5, v6}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13b

    new-instance v6, Labcd/eN;

    invoke-virtual {v7}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v7

    check-cast v7, Labcd/cM;

    invoke-direct {v6, v7}, Labcd/eN;-><init>(Labcd/cM;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_109

    :cond_13b
    sget-object v6, Labcd/dN;->Hw:Labcd/zL;

    invoke-virtual {v5, v6}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    new-instance v6, Labcd/fN;

    invoke-virtual {v7}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v7

    check-cast v7, Labcd/kM;

    invoke-direct {v6, v7}, Labcd/fN;-><init>(Labcd/kM;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_109

    :cond_152
    sget-object v6, Labcd/dN;->EQ:Labcd/zL;

    invoke-virtual {v5, v6}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    new-instance v6, Labcd/gN;

    invoke-virtual {v7}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v7

    check-cast v7, Labcd/kM;

    invoke-direct {v6, v7}, Labcd/gN;-><init>(Labcd/kM;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_109

    :cond_169
    invoke-virtual {v5}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v6

    invoke-static {v6}, Labcd/pN;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_17e} :catch_17f

    goto :goto_109

    :catch_17f
    move-exception v6

    invoke-virtual {v5}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "*****"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c0

    :cond_194
    :goto_194
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_199
    array-length v5, v3

    sub-int/2addr v5, v6

    const-string v7, "                       "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v4, v5, :cond_1ac

    new-instance v5, Ljava/lang/String;

    invoke-static {v3, v4, v6}, Labcd/VP;->j6([BII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_1b7

    :cond_1ac
    new-instance v5, Ljava/lang/String;

    array-length v7, v3

    sub-int/2addr v7, v4

    invoke-static {v3, v4, v7}, Labcd/VP;->j6([BII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    :goto_1b7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x14

    goto/16 :goto_a2
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .registers 4

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-static {v0}, Labcd/uP;->j6(Labcd/wN;)Ljava/lang/String;

    move-result-object v0

    :try_start_a
    sget-object v1, Labcd/pP;->DW:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    move-exception v1

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_16
    invoke-direct {p0, p1, v0}, Labcd/tP;->j6(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-static {v0}, Labcd/uP;->j6(Labcd/wN;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Labcd/tP;->j6(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method
