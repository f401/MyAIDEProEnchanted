.class final Lcom/google/android/gms/internal/ads/Iq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq<",
        "Lcom/google/android/gms/internal/ads/Zs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/xs;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hr;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/hr;

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->J0()Lcom/google/android/gms/internal/ads/lr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Iq;->j6(Lcom/google/android/gms/internal/ads/lr;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/xs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->J0()Lcom/google/android/gms/internal/ads/lr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lr;->EQ()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xs;-><init>([BI)V

    return-object v0

    :cond_38
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_40
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_40} :catch_40

    :catch_40
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/lr;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lr;->EQ()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lr;->EQ()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_11

    return-void

    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/jr;

    if-eqz v0, :cond_39

    check-cast p1, Lcom/google/android/gms/internal/ads/jr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->EQ()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->J0()Lcom/google/android/gms/internal/ads/lr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Iq;->j6(Lcom/google/android/gms/internal/ads/lr;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/hr;->QX()Lcom/google/android/gms/internal/ads/hr$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->J0()Lcom/google/android/gms/internal/ads/lr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hr$a;->j6(Lcom/google/android/gms/internal/ads/lr;)Lcom/google/android/gms/internal/ads/hr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->EQ()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hr$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hr$a;->j6(I)Lcom/google/android/gms/internal/ads/hr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_39
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Iq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/xs;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/jr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Iq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Iq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

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

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/hr;

    if-eqz v0, :cond_36

    check-cast p1, Lcom/google/android/gms/internal/ads/hr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->J0()Lcom/google/android/gms/internal/ads/lr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Iq;->j6(Lcom/google/android/gms/internal/ads/lr;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/xs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->Ws()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr;->J0()Lcom/google/android/gms/internal/ads/lr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lr;->EQ()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xs;-><init>([BI)V

    return-object v0

    :cond_36
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method
