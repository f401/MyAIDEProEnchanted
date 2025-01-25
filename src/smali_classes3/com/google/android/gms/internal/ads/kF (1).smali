.class final Lcom/google/android/gms/internal/ads/kF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/jF;

.field private final j6:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jF;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kF;->DW:Lcom/google/android/gms/internal/ads/jF;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kF;->j6:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kF;->DW:Lcom/google/android/gms/internal/ads/jF;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kF;->j6:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jF;->j6(Landroid/view/View;)V

    return-void
.end method
