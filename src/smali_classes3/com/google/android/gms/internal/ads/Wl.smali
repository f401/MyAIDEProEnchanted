.class final Lcom/google/android/gms/internal/ads/Wl;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Vl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Vl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Wl;->j6:Lcom/google/android/gms/internal/ads/Vl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wl;->j6:Lcom/google/android/gms/internal/ads/Vl;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Vl;->j6(Lcom/google/android/gms/internal/ads/Vl;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
