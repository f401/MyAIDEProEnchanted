.class final Lcom/google/android/gms/internal/ads/wa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ga;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/va;

.field private final j6:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/va;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wa;->DW:Lcom/google/android/gms/internal/ads/va;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wa;->j6:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wa;->DW:Lcom/google/android/gms/internal/ads/va;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wa;->j6:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/va;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wa;->DW:Lcom/google/android/gms/internal/ads/va;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/va;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method
