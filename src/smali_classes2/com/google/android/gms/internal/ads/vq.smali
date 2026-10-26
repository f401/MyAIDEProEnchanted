.class public final Lcom/google/android/gms/internal/ads/vq;
.super Ljava/lang/Object;


# instance fields
.field private j6:Lcom/google/android/gms/internal/ads/hs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vq;->j6:Lcom/google/android/gms/internal/ads/hs;

    return-void
.end method

.method static final j6(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/vq;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hs;->Ws()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/vq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vq;-><init>(Lcom/google/android/gms/internal/ads/hs;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "empty keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final j6()Lcom/google/android/gms/internal/ads/hs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vq;->j6:Lcom/google/android/gms/internal/ads/hs;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vq;->j6:Lcom/google/android/gms/internal/ads/hs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Eq;->j6(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
