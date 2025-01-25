.class final synthetic Lcom/google/android/gms/ads/internal/overlay/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/up;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/overlay/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->j6:Lcom/google/android/gms/ads/internal/overlay/c;

    return-void
.end method


# virtual methods
.method public final j6(Z)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/d;->j6:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/c;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->v5()V

    :cond_9
    return-void
.end method
