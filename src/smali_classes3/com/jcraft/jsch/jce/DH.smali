.class public Lcom/jcraft/jsch/jce/DH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/DH;


# instance fields
.field DW:Ljava/math/BigInteger;

.field FH:Ljava/math/BigInteger;

.field Hw:[B

.field VH:[B

.field Zo:Ljava/math/BigInteger;

.field private gn:Ljava/security/KeyPairGenerator;

.field j6:Ljava/math/BigInteger;

.field private u7:Ljavax/crypto/KeyAgreement;

.field v5:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 4

    new-instance v0, Labcd/pP;

    invoke-direct {v0}, Labcd/pP;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v0, "DH"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/jce/DH;->gn:Ljava/security/KeyPairGenerator;

    invoke-static {v0, v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->u7:Ljavax/crypto/KeyAgreement;

    return-void
.end method

.method DW(Ljava/math/BigInteger;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->DW:Ljava/math/BigInteger;

    return-void
.end method

.method public DW([B)V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->j6(Ljava/math/BigInteger;)V

    return-void
.end method

.method FH(Ljava/math/BigInteger;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->j6:Ljava/math/BigInteger;

    return-void
.end method

.method public FH([B)V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->FH(Ljava/math/BigInteger;)V

    return-void
.end method

.method public FH()[B
    .registers 6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->Zo:Ljava/math/BigInteger;

    if-nez v0, :cond_34

    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->v5:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->j6:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->DW:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->u7:Ljavax/crypto/KeyAgreement;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->u7:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/jcraft/jsch/jce/DH;->Zo:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/DH;->VH:[B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->VH:[B

    :cond_34
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->VH:[B

    return-object v0
.end method

.method j6(Ljava/math/BigInteger;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->v5:Ljava/math/BigInteger;

    return-void
.end method

.method public j6([B)V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->DW(Ljava/math/BigInteger;)V

    return-void
.end method

.method public j6()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->FH:Ljava/math/BigInteger;

    if-nez v0, :cond_3a

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->j6:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->DW:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->gn:Ljava/security/KeyPairGenerator;

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->gn:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->u7:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->FH:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->Hw:[B

    :cond_3a
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->Hw:[B

    return-object v0
.end method
