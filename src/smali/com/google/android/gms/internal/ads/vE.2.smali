.class final Lcom/google/android/gms/internal/ads/vE;
.super Landroid/database/ContentObserver;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/sE;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sE;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vE;->j6:Lcom/google/android/gms/internal/ads/sE;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vE;->j6:Lcom/google/android/gms/internal/ads/sE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sE;->Hw()V

    return-void
.end method
