.class final Lcom/google/android/gms/internal/ads/Qo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/No;

.field private final j6:Lcom/google/android/gms/internal/ads/Wj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/No;Lcom/google/android/gms/internal/ads/Wj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qo;->DW:Lcom/google/android/gms/internal/ads/No;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qo;->j6:Lcom/google/android/gms/internal/ads/Wj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qo;->DW:Lcom/google/android/gms/internal/ads/No;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qo;->j6:Lcom/google/android/gms/internal/ads/Wj;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/internal/ads/No;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
