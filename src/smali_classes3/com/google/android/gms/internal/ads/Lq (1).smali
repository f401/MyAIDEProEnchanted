.class final Lcom/google/android/gms/internal/ads/Lq;
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

.method private static DW()Lcom/google/android/gms/internal/ads/xr;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->Ws()Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->j6(I)Lcom/google/android/gms/internal/ads/xr$a;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/xr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xr;

    return-object v0
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/xr;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/xr;

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2a

    new-instance v0, Lcom/google/android/gms/internal/ads/Cs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Cs;-><init>([B)V

    return-object v0

    :cond_2a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected ChaCha20Poly1305Key proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3a
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid ChaCha20Poly1305 key"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/Lq;->DW()Lcom/google/android/gms/internal/ads/xr;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Lq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/Lq;->DW()Lcom/google/android/gms/internal/ads/xr;

    move-result-object p1

    return-object p1
.end method

.method public final getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/Lq;->DW()Lcom/google/android/gms/internal/ads/xr;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pt;->DW()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr$a;

    sget-object p1, Lcom/google/android/gms/internal/ads/Yr$b;->DW:Lcom/google/android/gms/internal/ads/Yr$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Yr$a;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Yr;

    return-object p1
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/xr;

    if-eqz v0, :cond_30

    check-cast p1, Lcom/google/android/gms/internal/ads/xr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/ads/Cs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Cs;-><init>([B)V

    return-object v0

    :cond_28
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected ChaCha20Poly1305Key proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    return-object v0
.end method
