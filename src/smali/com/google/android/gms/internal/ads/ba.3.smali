.class final Lcom/google/android/gms/internal/ads/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ga;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ba;->j6:Lcom/google/android/gms/internal/ads/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ba;->j6:Lcom/google/android/gms/internal/ads/aa;

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aa;->cn(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method
