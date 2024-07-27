.class final Lcom/google/android/gms/internal/ads/uv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/vv;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/yt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uv;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uv;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yt;->v5(I)B

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uv;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    return v0
.end method
