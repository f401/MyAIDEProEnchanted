.class final Lcom/google/android/gms/internal/ads/Oq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq<",
        "Lcom/google/android/gms/internal/ads/nq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ps;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/ps;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ps;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ps;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ps;->J0()Lcom/google/android/gms/internal/ads/rs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->EQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/wq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Nq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ps;->J0()Lcom/google/android/gms/internal/ads/rs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->J0()Lcom/google/android/gms/internal/ads/ds;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Nq;-><init>(Lcom/google/android/gms/internal/ads/ds;Lcom/google/android/gms/internal/ads/nq;)V

    return-object v1

    :cond_2e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_36
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_36} :catch_36

    :catch_36
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmSEnvelopeAeadKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/rs;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/google/android/gms/internal/ads/rs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ps;->Ws()Lcom/google/android/gms/internal/ads/ps$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ps$a;->j6(Lcom/google/android/gms/internal/ads/rs;)Lcom/google/android/gms/internal/ads/ps$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ps$a;->j6(I)Lcom/google/android/gms/internal/ads/ps$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_18
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Oq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rs;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/rs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Oq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmsEnvelopeAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Oq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ps;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pt;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr$a;

    sget-object p1, Lcom/google/android/gms/internal/ads/Yr$b;->v5:Lcom/google/android/gms/internal/ads/Yr$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Yr;

    return-object p1
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ps;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/google/android/gms/internal/ads/ps;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ps;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ps;->J0()Lcom/google/android/gms/internal/ads/rs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->EQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/wq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Nq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ps;->J0()Lcom/google/android/gms/internal/ads/rs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->J0()Lcom/google/android/gms/internal/ads/ds;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Nq;-><init>(Lcom/google/android/gms/internal/ads/ds;Lcom/google/android/gms/internal/ads/nq;)V

    return-object v1

    :cond_2c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsEnvelopeAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object v0
.end method
