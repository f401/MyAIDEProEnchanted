.class final Lcom/google/android/gms/internal/ads/Fq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/oq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oq",
        "<",
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
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/ads/uq",
            "<",
            "Lcom/google/android/gms/internal/ads/nq;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x2d9f47

    if-eq v6, v7, :cond_2

    :cond_0
    move v5, v0

    :goto_0
    if-nez v5, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/Oq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Oq;-><init>()V

    :goto_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uq;->getVersion()I

    move-result v4

    if-lt v4, p3, :cond_9

    return-object v0

    :cond_2
    const-string v6, "aead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_0
    const-string v5, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v5, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v5, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v5, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v5, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No support for primitive \'Aead\' with key type \'%s\'."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/Mq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Mq;-><init>()V

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/Lq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Lq;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/Kq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Kq;-><init>()V

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/Jq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Jq;-><init>()V

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/Hq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Hq;-><init>()V

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v4, "No key manager for key type \'%s\' with version at least %d."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No support for primitive \'%s\'."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1580a8e0 -> :sswitch_5
        0x4878f271 -> :sswitch_4
        0x579e3055 -> :sswitch_3
        0x6b1dc604 -> :sswitch_2
        0x6e9ea62f -> :sswitch_1
        0x7bee4165 -> :sswitch_0
    .end sparse-switch
.end method
