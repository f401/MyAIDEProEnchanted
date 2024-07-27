.class final Lcom/google/android/gms/internal/ads/Mq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq",
        "<",
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

.method private static FH(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/nq;
    .registers 3

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/ls;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/ls;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ls;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ls;->J0()Lcom/google/android/gms/internal/ads/ns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ns;->EQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/wq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected KmsAeadKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ls;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/ls;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Mq;->FH(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/nq;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected KmsAeadKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ns;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/ns;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ls;->Ws()Lcom/google/android/gms/internal/ads/ls$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ls$a;->j6(Lcom/google/android/gms/internal/ads/ns;)Lcom/google/android/gms/internal/ads/ls$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ls$a;->j6(I)Lcom/google/android/gms/internal/ads/ls$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected KmsAeadKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Mq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    return-object v0
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ns;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/ns;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Mq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized KmsAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Mq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ls;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pt;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->v5:Lcom/google/android/gms/internal/ads/Yr$b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Yr;

    return-object v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Mq;->FH(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    return-object v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    return-object v0
.end method
