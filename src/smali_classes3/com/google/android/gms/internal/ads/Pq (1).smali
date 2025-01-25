.class final Lcom/google/android/gms/internal/ads/Pq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq<",
        "Lcom/google/android/gms/internal/ads/sq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/sq;
    .registers 10

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ir;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Ir;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Ir;

    if-eqz v0, :cond_83

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->Ws()Lcom/google/android/gms/internal/ads/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Gr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->Ws()Lcom/google/android/gms/internal/ads/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Ps;->u7:Lcom/google/android/gms/internal/ads/Ps;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/ads/Yq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gr;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Br;->EQ()Lcom/google/android/gms/internal/ads/ds;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/Yq;-><init>(Lcom/google/android/gms/internal/ads/ds;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Fs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mr;->J0()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Qr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gr;->Ws()Lcom/google/android/gms/internal/ads/zr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/zr;)Lcom/google/android/gms/internal/ads/Ns;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Fs;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V

    return-object p1

    :cond_83
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8b
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 6

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Er;

    if-eqz v0, :cond_88

    check-cast p1, Lcom/google/android/gms/internal/ads/Er;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Er;->EQ()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Gr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Er;->EQ()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ks;->j6(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/Kr;->XL()Lcom/google/android/gms/internal/ads/Kr$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Kr$a;->j6(I)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Er;->EQ()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/Kr$a;->j6(Lcom/google/android/gms/internal/ads/Gr;)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/Kr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/Kr$a;->DW(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Kr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ir;->QX()Lcom/google/android/gms/internal/ads/Ir$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/Ir$a;->j6(I)Lcom/google/android/gms/internal/ads/Ir$a;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Ir$a;->j6(Lcom/google/android/gms/internal/ads/Kr;)Lcom/google/android/gms/internal/ads/Ir$a;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Ir$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Ir$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_88
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Pq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/sq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Er;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Er;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Pq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid EciesAeadHkdf key format"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Pq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Ir;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pt;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr$a;

    sget-object p1, Lcom/google/android/gms/internal/ads/Yr$b;->FH:Lcom/google/android/gms/internal/ads/Yr$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Yr;

    return-object p1
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Ir;

    if-eqz v0, :cond_81

    check-cast p1, Lcom/google/android/gms/internal/ads/Ir;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->Ws()Lcom/google/android/gms/internal/ads/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Gr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->Ws()Lcom/google/android/gms/internal/ads/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Ps;->u7:Lcom/google/android/gms/internal/ads/Ps;

    const-string v2, "EC"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/KeyFactory;

    invoke-virtual {p1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lcom/google/android/gms/internal/ads/Yq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gr;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Br;->EQ()Lcom/google/android/gms/internal/ads/ds;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/Yq;-><init>(Lcom/google/android/gms/internal/ads/ds;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Fs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mr;->J0()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Qr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gr;->Ws()Lcom/google/android/gms/internal/ads/zr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/zr;)Lcom/google/android/gms/internal/ads/Ns;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Fs;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V

    return-object p1

    :cond_81
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method
