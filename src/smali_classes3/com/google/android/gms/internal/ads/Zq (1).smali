.class final Lcom/google/android/gms/internal/ads/Zq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uq<",
        "Lcom/google/android/gms/internal/ads/yq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/yq;
    .registers 6

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Sr;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Sr;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Sr;

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_73

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Zq;->j6(Lcom/google/android/gms/internal/ads/Wr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Wr;->EQ()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/ads/_q;->j6:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_63

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5b

    new-instance v0, Lcom/google/android/gms/internal/ads/_s;

    const-string v1, "HMACSHA512"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/_s;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_72

    :cond_5b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    new-instance v0, Lcom/google/android/gms/internal/ads/_s;

    const-string v1, "HMACSHA256"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/_s;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_72

    :cond_6b
    new-instance v0, Lcom/google/android/gms/internal/ads/_s;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/_s;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    :goto_72
    return-object v0

    :cond_73
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_83
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_83} :catch_83

    :catch_83
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized HmacKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Wr;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_54

    sget-object v0, Lcom/google/android/gms/internal/ads/_q;->j6:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Wr;->EQ()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_28

    goto :goto_4d

    :cond_28
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3f

    goto :goto_4d

    :cond_3f
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_4e

    :goto_4d
    return-void

    :cond_4e
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Ur;

    if-eqz v0, :cond_42

    check-cast p1, Lcom/google/android/gms/internal/ads/Ur;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ur;->EQ()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ur;->J0()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Zq;->j6(Lcom/google/android/gms/internal/ads/Wr;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/Sr;->QX()Lcom/google/android/gms/internal/ads/Sr$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Sr$a;->j6(I)Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ur;->J0()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Sr$a;->j6(Lcom/google/android/gms/internal/ads/Wr;)Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ur;->EQ()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bt;->j6(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Sr$a;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu$a;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    return-object p1

    :cond_3a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Zq;->Hw(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/yq;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ur;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Ur;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Zq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized HmacKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Zq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Sr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yr;->QX()Lcom/google/android/gms/internal/ads/Yr$a;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

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
    .registers 6

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Sr;

    if-eqz v0, :cond_79

    check-cast p1, Lcom/google/android/gms/internal/ads/Sr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->EQ()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ht;->j6(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_71

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Zq;->j6(Lcom/google/android/gms/internal/ads/Wr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Wr;->EQ()Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yt;->j6()[B

    move-result-object v2

    const-string v3, "HMAC"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Wr;->J0()I

    move-result p1

    sget-object v2, Lcom/google/android/gms/internal/ads/_q;->j6:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_69

    const/4 v2, 0x2

    if-eq v0, v2, :cond_61

    const/4 v2, 0x3

    if-ne v0, v2, :cond_59

    new-instance v0, Lcom/google/android/gms/internal/ads/_s;

    const-string v2, "HMACSHA512"

    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/_s;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_59
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    new-instance v0, Lcom/google/android/gms/internal/ads/_s;

    const-string v2, "HMACSHA256"

    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/_s;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_69
    new-instance v0, Lcom/google/android/gms/internal/ads/_s;

    const-string v2, "HMACSHA1"

    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/_s;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_71
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method
