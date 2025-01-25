.class final Lcom/google/android/gms/internal/ads/Uk;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Nk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Nk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uk;->j6:Lcom/google/android/gms/internal/ads/Nk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Nk;Lcom/google/android/gms/internal/ads/Qk;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Uk;-><init>(Lcom/google/android/gms/internal/ads/Nk;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Uk;->j6:Lcom/google/android/gms/internal/ads/Nk;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Lcom/google/android/gms/internal/ads/Nk;Z)Z

    return-void

    :cond_13
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Uk;->j6:Lcom/google/android/gms/internal/ads/Nk;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Lcom/google/android/gms/internal/ads/Nk;Z)Z

    :cond_25
    return-void
.end method
