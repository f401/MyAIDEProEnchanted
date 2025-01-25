.class final Lcom/google/android/gms/internal/ads/Cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zp;

.field private final j6:Lcom/google/android/gms/internal/ads/Wj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zp;Lcom/google/android/gms/internal/ads/Wj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cp;->DW:Lcom/google/android/gms/internal/ads/zp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Cp;->j6:Lcom/google/android/gms/internal/ads/Wj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cp;->DW:Lcom/google/android/gms/internal/ads/zp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Cp;->j6:Lcom/google/android/gms/internal/ads/Wj;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/internal/ads/zp;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
