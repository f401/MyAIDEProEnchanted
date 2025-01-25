.class final Lcom/google/android/gms/internal/ads/Mq;
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

.method private static FH(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/nq;
    .registers 3

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/ls;

    if-eqz v0, :cond_1f

    check-cast p0, Lcom/google/android/gms/internal/ads/ls;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ls;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ls;->J0()Lcom/google/android/gms/internal/ads/ns;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ns;->EQ()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/xq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/wq;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/wq;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsAeadKey proto"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ls;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/ls;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Mq;->FH(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p0
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected KmsAeadKey proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ns;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/google/android/gms/internal/ads/ns;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ls;->Ws()Lcom/google/android/gms/internal/ads/ls$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ls$a;->j6(Lcom/google/android/gms/internal/ads/ns;)Lcom/google/android/gms/internal/ads/ls$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ls$a;->j6(I)Lcom/google/android/gms/internal/ads/ls$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_18
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected KmsAeadKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Mq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ns;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/ns;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Mq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized KmsAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Mq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ls;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

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
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Mq;->FH(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p1

    return-object p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    return-object v0
.end method
