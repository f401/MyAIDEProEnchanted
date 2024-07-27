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
    .registers 10

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    new-instance v2, Labcd/fP;

    invoke-direct {v2}, Labcd/fP;-><init>()V

    iput-object v2, p0, Labcd/tP;->Zo:Labcd/nP;

    iput-object p1, p0, Labcd/tP;->j6:Labcd/HN;

    :try_start_0
    const-string v2, "2.5.29.19"

    invoke-direct {p0, v2}, Labcd/tP;->j6(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object v2

    invoke-static {v2}, Labcd/xN;->j6(Ljava/lang/Object;)Labcd/xN;

    move-result-object v2

    iput-object v2, p0, Labcd/tP;->DW:Labcd/xN;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string v2, "2.5.29.15"

    invoke-direct {p0, v2}, Labcd/tP;->j6(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object v2

    invoke-static {v2}, Labcd/cM;->j6(Ljava/lang/Object;)Labcd/cM;

    move-result-object v2

    invoke-virtual {v2}, Labcd/cM;->u7()[B

    move-result-object v4

    array-length v3, v4

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2}, Labcd/cM;->tp()I

    move-result v2

    sub-int/2addr v3, v2

    if-ge v3, v0, :cond_1

    :goto_0
    new-array v0, v0, [Z

    iput-object v0, p0, Labcd/tP;->FH:[Z

    move v2, v1

    :goto_1
    if-ne v2, v3, :cond_2

    :goto_2
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Labcd/tP;->FH:[Z

    div-int/lit8 v0, v2, 0x8

    aget-byte v0, v4, v0

    const/16 v6, 0x80

    rem-int/lit8 v7, v2, 0x8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    ushr-int/2addr v6, v7

    and-int/2addr v0, v6

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    aput-boolean v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Labcd/tP;->FH:[Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot construct KeyUsage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot construct BasicConstraints: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6()I
    .registers 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Labcd/tP;->getEncoded()[B

    move-result-object v3

    const/4 v2, 0x1

    move v0, v1

    :goto_0
    array-length v4, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v4, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-byte v4, v3, v2

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
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

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    invoke-static {p2, v0}, Labcd/uP;->j6(Ljava/security/Signature;Labcd/qL;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Labcd/tP;->getTBSCertificate()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Labcd/tP;->getSignature()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "certificate does not verify with supplied key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/wN;Labcd/wN;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v2

    invoke-virtual {p2}, Labcd/wN;->Zo()Labcd/zL;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v2

    sget-object v3, Labcd/mM;->j6:Labcd/mM;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v2

    sget-object v3, Labcd/mM;->j6:Labcd/mM;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    invoke-virtual {p2}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;)[B
    .registers 4

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Labcd/oM;

    invoke-direct {v1, p1}, Labcd/oM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/IN;->j6()Labcd/AL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/AL;->u7()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .registers 6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Labcd/tP;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Labcd/tP;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate not valid till "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v1}, Labcd/HN;->tp()Labcd/FN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FN;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateNotYetValidException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate expired on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v1}, Labcd/HN;->v5()Labcd/FN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FN;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/security/cert/Certificate;

    :try_start_0
    invoke-virtual {p0}, Labcd/tP;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Labcd/OP;->j6([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBasicConstraints()I
    .registers 2

    iget-object v0, p0, Labcd/tP;->DW:Labcd/xN;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/xN;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/tP;->DW:Labcd/xN;

    invoke-virtual {v0}, Labcd/xN;->v5()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/tP;->DW:Labcd/xN;

    invoke-virtual {v0}, Labcd/xN;->v5()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 6

    invoke-virtual {p0}, Labcd/tP;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/oM;

    invoke-virtual {v2, v0}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v4

    invoke-virtual {v4}, Labcd/IN;->DW()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEncoded()[B
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
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

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Labcd/vL;

    invoke-direct {v1, v0}, Labcd/vL;-><init>([B)V

    invoke-virtual {v1}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/FL;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Labcd/FL;->tp()I

    move-result v1

    if-ne v2, v1, :cond_0

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v1

    check-cast v1, Labcd/oM;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "error processing extended key usage extension"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 5

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Labcd/oM;

    invoke-direct {v1, p1}, Labcd/oM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Labcd/IN;->j6()Labcd/AL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/yL;->Hw()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->gn()Labcd/cM;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Labcd/cM;->u7()[B

    move-result-object v4

    array-length v2, v4

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Labcd/cM;->tp()I

    move-result v0

    sub-int v0, v2, v0

    new-array v3, v0, [Z

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ne v0, v2, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    div-int/lit8 v2, v0, 0x8

    aget-byte v2, v4, v2

    const/16 v5, 0x80

    rem-int/lit8 v6, v0, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v2, v5

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    aput-boolean v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
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

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/oM;

    invoke-virtual {v2, v0}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v4

    invoke-virtual {v4}, Labcd/IN;->DW()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
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
    .registers 6

    sget-object v0, Labcd/pP;->DW:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alg.Alias.Signature."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/tP;->getSigAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Labcd/tP;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v1, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Alg.Alias.Signature."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/tP;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
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

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/wN;->VH()Labcd/qL;

    move-result-object v0

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->J8()Labcd/cM;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Labcd/cM;->u7()[B

    move-result-object v4

    array-length v2, v4

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Labcd/cM;->tp()I

    move-result v0

    sub-int v0, v2, v0

    new-array v3, v0, [Z

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ne v0, v2, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    div-int/lit8 v2, v0, 0x8

    aget-byte v2, v4, v2

    const/16 v5, 0x80

    rem-int/lit8 v6, v0, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v2, v5

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    aput-boolean v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
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

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/oM;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Labcd/sP;->J8:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->DW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->tp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->v5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->VH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->gn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->u7:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->EQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Labcd/sP;->we:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/IN;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Labcd/tP;->Hw:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/tP;->j6()I

    move-result v0

    iput v0, p0, Labcd/tP;->v5:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/tP;->Hw:Z

    :cond_0
    iget v0, p0, Labcd/tP;->v5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "  [0]         Version: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getVersion()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "         SerialNumber: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "             IssuerDN: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "           Start Date: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "           Final Date: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "            SubjectDN: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "           Public Key: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  Signature Algorithm: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/tP;->getSignature()[B

    move-result-object v4

    const-string v0, "            Signature: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Labcd/VP;->j6([BII)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_9

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->J0()Labcd/EN;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EN;->Zo()Labcd/JN;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Labcd/JN;->v5()Ljava/util/Enumeration;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "       Extensions: \n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/oM;

    invoke-virtual {v4, v0}, Labcd/JN;->j6(Labcd/oM;)Labcd/IN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/IN;->j6()Labcd/AL;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v6, Labcd/vL;

    invoke-virtual {v1}, Labcd/IN;->j6()Labcd/AL;

    move-result-object v7

    invoke-virtual {v7}, Labcd/AL;->u7()[B

    move-result-object v7

    invoke-direct {v6, v7}, Labcd/vL;-><init>([B)V

    const-string v7, "                       critical("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Labcd/IN;->DW()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    sget-object v1, Labcd/IN;->VH:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    invoke-static {v1}, Labcd/xN;->j6(Ljava/lang/Object;)Labcd/xN;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " value = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "*****"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v1, Labcd/IN;->FH:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v7, Labcd/BN;

    invoke-virtual {v6}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    check-cast v1, Labcd/cM;

    invoke-direct {v7, v1}, Labcd/BN;-><init>(Labcd/cM;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    sget-object v1, Labcd/dN;->DW:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v7, Labcd/eN;

    invoke-virtual {v6}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    check-cast v1, Labcd/cM;

    invoke-direct {v7, v1}, Labcd/eN;-><init>(Labcd/cM;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_5
    sget-object v1, Labcd/dN;->Hw:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v7, Labcd/fN;

    invoke-virtual {v6}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    check-cast v1, Labcd/kM;

    invoke-direct {v7, v1}, Labcd/fN;-><init>(Labcd/kM;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_6
    sget-object v1, Labcd/dN;->EQ:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v7, Labcd/gN;

    invoke-virtual {v6}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    check-cast v1, Labcd/kM;

    invoke-direct {v7, v1}, Labcd/gN;-><init>(Labcd/kM;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " value = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    invoke-static {v1}, Labcd/pN;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_9
    array-length v5, v4

    add-int/lit8 v5, v5, -0x14

    if-ge v0, v5, :cond_a

    const-string v5, "                       "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/String;

    invoke-static {v4, v0, v1}, Labcd/VP;->j6([BII)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x14

    goto/16 :goto_0

    :cond_a
    const-string v5, "                       "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/String;

    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-static {v4, v0, v6}, Labcd/VP;->j6([BII)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .registers 4

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-static {v0}, Labcd/uP;->j6(Labcd/wN;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Labcd/pP;->DW:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Labcd/tP;->j6(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Labcd/tP;->j6:Labcd/HN;

    invoke-virtual {v0}, Labcd/HN;->u7()Labcd/wN;

    move-result-object v0

    invoke-static {v0}, Labcd/uP;->j6(Labcd/wN;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/tP;->j6(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method
