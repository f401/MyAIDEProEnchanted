.class final Lcom/google/android/gms/internal/ads/Qq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq",
        "<",
        "Lcom/google/android/gms/internal/ads/tq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/tq;
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Kr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Kr;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Kr;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->EQ()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Gr;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kr;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/ads/Yq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Br;->EQ()Lcom/google/android/gms/internal/ads/ds;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/Yq;-><init>(Lcom/google/android/gms/internal/ads/ds;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Gs;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Gs;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized EciesAeadHkdfPublicKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Qq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/tq;

    move-result-object v0

    return-object v0
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr;
    .registers 4

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 8

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Kr;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/Kr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Gr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kr;->J0()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->EQ()Lcom/google/android/gms/internal/ads/Mr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Mr;->EQ()Lcom/google/android/gms/internal/ads/Or;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Wq;->j6(Lcom/google/android/gms/internal/ads/Or;)Lcom/google/android/gms/internal/ads/Ms;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Kr;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ks;->j6(Lcom/google/android/gms/internal/ads/Ms;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/ads/Yq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gr;->J0()Lcom/google/android/gms/internal/ads/Br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Br;->EQ()Lcom/google/android/gms/internal/ads/ds;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/Yq;-><init>(Lcom/google/android/gms/internal/ads/ds;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Gs;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Gs;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Ns;Lcom/google/android/gms/internal/ads/Es;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    return-object v0
.end method
