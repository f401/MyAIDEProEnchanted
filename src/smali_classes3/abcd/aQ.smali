.class public Labcd/aQ;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/oM;

.field private FH:Labcd/wN;

.field private Hw:Ljava/lang/String;

.field private j6:Labcd/GN;

.field private v5:Labcd/KN;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/GN;

    invoke-direct {v0}, Labcd/GN;-><init>()V

    iput-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v0, Labcd/KN;

    invoke-direct {v0}, Labcd/KN;-><init>()V

    iput-object v0, p0, Labcd/aQ;->v5:Labcd/KN;

    return-void
.end method

.method private j6()Labcd/DN;
    .registers 3

    iget-object v0, p0, Labcd/aQ;->v5:Labcd/KN;

    invoke-virtual {v0}, Labcd/KN;->DW()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    iget-object v1, p0, Labcd/aQ;->v5:Labcd/KN;

    invoke-virtual {v1}, Labcd/KN;->j6()Labcd/JN;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/JN;)V

    :cond_13
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    invoke-virtual {v0}, Labcd/GN;->j6()Labcd/DN;

    move-result-object v0

    return-object v0
.end method

.method private j6(Labcd/DN;[B)Ljava/security/cert/X509Certificate;
    .registers 5

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    invoke-virtual {v0, p1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object p1, p0, Labcd/aQ;->FH:Labcd/wN;

    invoke-virtual {v0, p1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance p1, Labcd/cM;

    invoke-direct {p1, p2}, Labcd/cM;-><init>([B)V

    invoke-virtual {v0, p1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance p1, Labcd/tP;

    new-instance p2, Labcd/HN;

    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    invoke-direct {p2, v1}, Labcd/HN;-><init>(Labcd/FL;)V

    invoke-direct {p1, p2}, Labcd/tP;-><init>(Labcd/HN;)V

    return-object p1
.end method


# virtual methods
.method public DW(Ljava/util/Date;)V
    .registers 4

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/FN;

    invoke-direct {v1, p1}, Labcd/FN;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Labcd/GN;->DW(Labcd/FN;)V

    return-void
.end method

.method public DW(Ljavax/security/auth/x500/X500Principal;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/mP;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Labcd/mP;-><init>([B)V

    invoke-virtual {v0, v1}, Labcd/GN;->DW(Labcd/LN;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can\'t process principal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Labcd/aQ;->j6(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 11

    invoke-direct {p0}, Labcd/aQ;->j6()Labcd/DN;

    move-result-object v6

    :try_start_4
    iget-object v0, p0, Labcd/aQ;->DW:Labcd/oM;

    iget-object v1, p0, Labcd/aQ;->Hw:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Labcd/_P;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Labcd/qL;)[B

    move-result-object p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_1e

    :try_start_10
    invoke-direct {p0, v6, p1}, Labcd/aQ;->j6(Labcd/DN;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_14
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_10 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    new-instance p2, Labcd/ZP;

    const-string p3, "exception producing certificate object"

    invoke-direct {p2, p3, p1}, Labcd/ZP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1e
    move-exception p1

    new-instance p2, Labcd/ZP;

    const-string p3, "exception encoding TBS cert"

    invoke-direct {p2, p3, p1}, Labcd/ZP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/aQ;->Hw:Ljava/lang/String;

    :try_start_2
    invoke-static {p1}, Labcd/_P;->j6(Ljava/lang/String;)Labcd/oM;

    move-result-object v0

    iput-object v0, p0, Labcd/aQ;->DW:Labcd/oM;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_14

    invoke-static {v0, p1}, Labcd/_P;->j6(Labcd/oM;Ljava/lang/String;)Labcd/wN;

    move-result-object p1

    iput-object p1, p0, Labcd/aQ;->FH:Labcd/wN;

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    invoke-virtual {v0, p1}, Labcd/GN;->j6(Labcd/wN;)V

    return-void

    :catch_14
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown signature type requested: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/math/BigInteger;)V
    .registers 4

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/wL;

    invoke-direct {v1, p1}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/wL;)V

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serial number must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/security/PublicKey;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/vL;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Labcd/vL;-><init>([B)V

    invoke-virtual {v1}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object p1

    invoke-static {p1}, Labcd/CN;->j6(Ljava/lang/Object;)Labcd/CN;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/GN;->j6(Labcd/CN;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to process key - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/util/Date;)V
    .registers 4

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/FN;

    invoke-direct {v1, p1}, Labcd/FN;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/FN;)V

    return-void
.end method

.method public j6(Ljavax/security/auth/x500/X500Principal;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/mP;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Labcd/mP;-><init>([B)V

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/LN;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can\'t process principal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
