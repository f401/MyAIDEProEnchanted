.class final Lcom/google/android/gms/internal/ads/Jq;
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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nr;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/nr;

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->Ws()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->Ws()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_34

    goto :goto_3c

    :cond_34
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    :goto_3c
    new-instance v0, Lcom/google/android/gms/internal/ads/ys;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->Ws()Lcom/google/android/gms/internal/ads/rr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ys;-><init>([BI)V

    return-object v0

    :cond_52
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5a
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesEaxKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/pr;

    if-eqz v0, :cond_53

    check-cast p1, Lcom/google/android/gms/internal/ads/pr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pr;->EQ()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pr;->J0()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pr;->J0()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_26

    goto :goto_2e

    :cond_26
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/google/android/gms/internal/ads/nr;->QX()Lcom/google/android/gms/internal/ads/nr$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pr;->EQ()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pr;->J0()Lcom/google/android/gms/internal/ads/rr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nr$a;->j6(Lcom/google/android/gms/internal/ads/rr;)Lcom/google/android/gms/internal/ads/nr$a;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nr$a;->j6(I)Lcom/google/android/gms/internal/ads/nr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_53
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Jq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/nq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/pr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesEaxKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/nr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

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

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/nr;

    if-eqz v0, :cond_50

    check-cast p1, Lcom/google/android/gms/internal/ads/nr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ht;->j6(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->Ws()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->Ws()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_32

    goto :goto_3a

    :cond_32
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    :goto_3a
    new-instance v0, Lcom/google/android/gms/internal/ads/ys;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nr;->Ws()Lcom/google/android/gms/internal/ads/rr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rr;->EQ()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ys;-><init>([BI)V

    return-object v0

    :cond_50
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object v0
.end method
