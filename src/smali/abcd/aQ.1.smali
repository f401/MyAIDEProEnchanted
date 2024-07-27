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

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    iget-object v1, p0, Labcd/aQ;->v5:Labcd/KN;

    invoke-virtual {v1}, Labcd/KN;->j6()Labcd/JN;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/JN;)V

    :cond_0
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    invoke-virtual {v0}, Labcd/GN;->j6()Labcd/DN;

    move-result-object v0

    return-object v0
.end method

.method private j6(Labcd/DN;[B)Ljava/security/cert/X509Certificate;
    .registers 7

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    invoke-virtual {v0, p1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/aQ;->FH:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/cM;

    invoke-direct {v1, p2}, Labcd/cM;-><init>([B)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/tP;

    new-instance v2, Labcd/HN;

    new-instance v3, Labcd/tM;

    invoke-direct {v3, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    invoke-direct {v2, v3}, Labcd/HN;-><init>(Labcd/FL;)V

    invoke-direct {v1, v2}, Labcd/tP;-><init>(Labcd/HN;)V

    return-object v1
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
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/mP;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/mP;-><init>([B)V

    invoke-virtual {v0, v1}, Labcd/GN;->DW(Labcd/LN;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t process principal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Labcd/aQ;->j6(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 10

    invoke-direct {p0}, Labcd/aQ;->j6()Labcd/DN;

    move-result-object v5

    :try_start_0
    iget-object v0, p0, Labcd/aQ;->DW:Labcd/oM;

    iget-object v1, p0, Labcd/aQ;->Hw:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Labcd/_P;->j6(Labcd/oM;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Labcd/qL;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-direct {p0, v5, v0}, Labcd/aQ;->j6(Labcd/DN;[B)Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/ZP;

    const-string v2, "exception producing certificate object"

    invoke-direct {v1, v2, v0}, Labcd/ZP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/ZP;

    const-string v2, "exception encoding TBS cert"

    invoke-direct {v1, v2, v0}, Labcd/ZP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/aQ;->Hw:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Labcd/_P;->j6(Ljava/lang/String;)Labcd/oM;

    move-result-object v0

    iput-object v0, p0, Labcd/aQ;->DW:Labcd/oM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Labcd/aQ;->DW:Labcd/oM;

    invoke-static {v0, p1}, Labcd/_P;->j6(Labcd/oM;Ljava/lang/String;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/aQ;->FH:Labcd/wN;

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    iget-object v1, p0, Labcd/aQ;->FH:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/wN;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown signature type requested: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6(Ljava/math/BigInteger;)V
    .registers 4

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/wL;

    invoke-direct {v1, p1}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/wL;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serial number must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/security/PublicKey;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/vL;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/vL;-><init>([B)V

    invoke-virtual {v1}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v1

    invoke-static {v1}, Labcd/CN;->j6(Ljava/lang/Object;)Labcd/CN;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/CN;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to process key - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/aQ;->j6:Labcd/GN;

    new-instance v1, Labcd/mP;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/mP;-><init>([B)V

    invoke-virtual {v0, v1}, Labcd/GN;->j6(Labcd/LN;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t process principal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
