.class final Lcom/google/android/gms/ads/internal/T;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/Q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/Q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/T;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/T;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/Q;->DW(Lcom/google/android/gms/ads/internal/Q;)Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/T;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/Q;->DW(Lcom/google/android/gms/ads/internal/Q;)Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
