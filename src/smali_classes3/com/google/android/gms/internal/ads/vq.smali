.class public final Lcom/google/android/gms/internal/ads/vq;
.super Ljava/lang/Object;


# instance fields
.field private j6:Lcom/google/android/gms/internal/ads/hs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vq;->j6:Lcom/google/android/gms/internal/ads/hs;

    return-void
.end method

.method static final j6(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/vq;
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hs;->Ws()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/vq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vq;-><init>(Lcom/google/android/gms/internal/ads/hs;)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final j6()Lcom/google/android/gms/internal/ads/hs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vq;->j6:Lcom/google/android/gms/internal/ads/hs;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vq;->j6:Lcom/google/android/gms/internal/ads/hs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Eq;->j6(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
