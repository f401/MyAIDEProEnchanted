.class final Lcom/google/android/gms/internal/ads/Cy;
.super Landroid/os/Handler;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/By;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/By;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cy;->j6:Lcom/google/android/gms/internal/ads/By;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cy;->j6:Lcom/google/android/gms/internal/ads/By;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/By;->j6(Landroid/os/Message;)V

    return-void
.end method
