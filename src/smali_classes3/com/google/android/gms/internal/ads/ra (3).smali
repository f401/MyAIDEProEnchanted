.class final Lcom/google/android/gms/internal/ads/ra;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/oa;

.field private final j6:Lcom/google/android/gms/internal/ads/dh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oa;Lcom/google/android/gms/internal/ads/dh;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ra;->DW:Lcom/google/android/gms/internal/ads/oa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ra;->j6:Lcom/google/android/gms/internal/ads/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra;->DW:Lcom/google/android/gms/internal/ads/oa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oa;->j6(Lcom/google/android/gms/internal/ads/oa;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ra;->j6:Lcom/google/android/gms/internal/ads/dh;

    const-string p2, "/showOverlay"

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/ads/dh;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void

    :cond_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
