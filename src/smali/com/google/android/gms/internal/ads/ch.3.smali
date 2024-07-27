.class final Lcom/google/android/gms/internal/ads/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Ug;

.field private final j6:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ch;->DW:Lcom/google/android/gms/internal/ads/Ug;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ch;->j6:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch;->DW:Lcom/google/android/gms/internal/ads/Ug;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch;->j6:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ug;->j6(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method
