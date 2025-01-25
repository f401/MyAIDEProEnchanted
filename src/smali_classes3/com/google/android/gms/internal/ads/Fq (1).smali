.class final Lcom/google/android/gms/internal/ads/Fq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oq<",
        "Lcom/google/android/gms/internal/ads/nq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/uq;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/ads/uq<",
            "Lcom/google/android/gms/internal/ads/nq;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2d9f47

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_10

    goto :goto_1a

    :cond_10
    const-string v1, "aead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, -0x1

    :goto_1b
    const/4 v1, 0x1

    if-nez v0, :cond_c1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch p2, :sswitch_data_d2

    goto :goto_65

    :sswitch_2a
    const-string p2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 v4, 0x5

    goto :goto_65

    :sswitch_34
    const-string p2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 v4, 0x2

    goto :goto_65

    :sswitch_3e
    const-string p2, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 v4, 0x1

    goto :goto_65

    :sswitch_48
    const-string p2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 v4, 0x4

    goto :goto_65

    :sswitch_52
    const-string p2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 v4, 0x0

    goto :goto_65

    :sswitch_5c
    const-string p2, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 v4, 0x3

    :cond_65
    :goto_65
    if-eqz v4, :cond_9f

    if-eq v4, v1, :cond_99

    if-eq v4, v6, :cond_93

    if-eq v4, v5, :cond_8d

    if-eq v4, v2, :cond_87

    if-ne v4, v0, :cond_77

    new-instance p2, Lcom/google/android/gms/internal/ads/Oq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/Oq;-><init>()V

    goto :goto_a4

    :cond_77
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "No support for primitive \'Aead\' with key type \'%s\'."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_87
    new-instance p2, Lcom/google/android/gms/internal/ads/Mq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/Mq;-><init>()V

    goto :goto_a4

    :cond_8d
    new-instance p2, Lcom/google/android/gms/internal/ads/Lq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/Lq;-><init>()V

    goto :goto_a4

    :cond_93
    new-instance p2, Lcom/google/android/gms/internal/ads/Kq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/Kq;-><init>()V

    goto :goto_a4

    :cond_99
    new-instance p2, Lcom/google/android/gms/internal/ads/Jq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/Jq;-><init>()V

    goto :goto_a4

    :cond_9f
    new-instance p2, Lcom/google/android/gms/internal/ads/Hq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/Hq;-><init>()V

    :goto_a4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/uq;->getVersion()I

    move-result v0

    if-lt v0, p3, :cond_ab

    return-object p2

    :cond_ab
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "No key manager for key type \'%s\' with version at least %d."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c1
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v3

    const-string p2, "No support for primitive \'%s\'."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_d2
    .sparse-switch
        0x1580a8e0 -> :sswitch_5c
        0x4878f271 -> :sswitch_52
        0x579e3055 -> :sswitch_48
        0x6b1dc604 -> :sswitch_3e
        0x6e9ea62f -> :sswitch_34
        0x7bee4165 -> :sswitch_2a
    .end sparse-switch
.end method
