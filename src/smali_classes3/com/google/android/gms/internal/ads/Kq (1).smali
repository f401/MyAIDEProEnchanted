.class final Lcom/google/android/gms/internal/ads/Kq;
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
    .registers 5

    const-string v0, "expected AesGcmKey proto"

    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/tr;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/tr;

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tr;->EQ()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zs;-><init>([B)V

    return-object v1

    :cond_2b
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_31
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_2 .. :try_end_31} :catch_31

    :catch_31
    move-exception p1

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/vr;

    if-eqz v0, :cond_2b

    check-cast p1, Lcom/google/android/gms/internal/ads/vr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vr;->EQ()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/tr;->Ws()Lcom/google/android/gms/internal/ads/tr$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vr;->EQ()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/tr$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tr$a;->j6(I)Lcom/google/android/gms/internal/ads/tr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_2b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Kq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/vr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Kq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesGcmKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Kq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/tr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

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

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/tr;

    if-eqz v0, :cond_27

    check-cast p1, Lcom/google/android/gms/internal/ads/tr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zs;-><init>([B)V

    return-object v0

    :cond_27
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesGcmKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object v0
.end method
