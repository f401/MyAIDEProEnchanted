.class final Lcom/google/android/gms/internal/ads/Lx;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Jx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Jx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lx;->j6:Lcom/google/android/gms/internal/ads/Jx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Lx;->j6:Lcom/google/android/gms/internal/ads/Jx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Jx;->j6(Lcom/google/android/gms/internal/ads/Jx;)V

    return-void
.end method
