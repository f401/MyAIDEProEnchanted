.class final Lcom/google/android/gms/internal/ads/Dp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/m;


# instance fields
.field private DW:Lcom/google/android/gms/ads/internal/overlay/m;

.field private j6:Lcom/google/android/gms/internal/ads/Mo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/ads/internal/overlay/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dp;->j6:Lcom/google/android/gms/internal/ads/Mo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dp;->DW:Lcom/google/android/gms/ads/internal/overlay/m;

    return-void
.end method


# virtual methods
.method public final ep()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dp;->DW:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->ep()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dp;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->v5()V

    return-void
.end method

.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final uC()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dp;->DW:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->uC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dp;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->KD()V

    return-void
.end method
