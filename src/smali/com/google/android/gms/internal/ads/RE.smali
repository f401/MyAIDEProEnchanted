.class final Lcom/google/android/gms/internal/ads/RE;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/PE;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/PE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/RE;->j6:Lcom/google/android/gms/internal/ads/PE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RE;->j6:Lcom/google/android/gms/internal/ads/PE;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/PE;I)V

    return-void
.end method
