.class final Lcom/google/android/gms/internal/ads/Pq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq",
        "<",
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
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ir;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Ir;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Ir;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ir;->EQ()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ir;->Ws()Lcom/google/android/gms/internal/ads/Kr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Gr;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ir;->Ws()Lcom/google/android/gms/internal/ads/Kr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ir;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v5, v2, v1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Ps;->u7:Lcom/google/android/gms/internal/ads/Ps;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v5, Lcom/google/android/gms/internal/ads/Yq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Br;->EQ()Lcom/google/android/gms/internal/ads/ds;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/Yq;-><init>(Lcom/google/android/gms/internal/ads/ds;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Fs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->J0()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Qr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->Ws()Lcom/google/android/gms/internal/ads/zr;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/zr;)Lcom/google/android/gms/internal/ads/Ns;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Fs;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized EciesAeadHkdfPrivateKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 7

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Er;

    if-eqz v0, :cond_0

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

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Kr;->XL()Lcom/google/android/gms/internal/ads/Kr$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/Kr$a;->j6(I)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Er;->EQ()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Kr$a;->j6(Lcom/google/android/gms/internal/ads/Gr;)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Kr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Kr$a;->DW(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Kr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ir;->QX()Lcom/google/android/gms/internal/ads/Ir$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/Ir$a;->j6(I)Lcom/google/android/gms/internal/ads/Ir$a;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Ir$a;->j6(Lcom/google/android/gms/internal/ads/Kr;)Lcom/google/android/gms/internal/ads/Ir$a;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Ir$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Ir$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Pq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/sq;

    move-result-object v0

    return-object v0
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Er;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Er;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Pq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid EciesAeadHkdf key format"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Pq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Ir;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pt;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->FH:Lcom/google/android/gms/internal/ads/Yr$b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Yr;

    return-object v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Ir;

    if-eqz v0, :cond_0

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

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ir;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v5, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Ps;->u7:Lcom/google/android/gms/internal/ads/Ps;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v5, Lcom/google/android/gms/internal/ads/Yq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Br;->EQ()Lcom/google/android/gms/internal/ads/ds;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/Yq;-><init>(Lcom/google/android/gms/internal/ads/ds;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Fs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->J0()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Qr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->Ws()Lcom/google/android/gms/internal/ads/zr;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/zr;)Lcom/google/android/gms/internal/ads/Ns;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Fs;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method
