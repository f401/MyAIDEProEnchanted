.class final Lcom/google/android/gms/internal/ads/Ip;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Hp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Hp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ip;->j6:Lcom/google/android/gms/internal/ads/Hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    if-eqz p2, :cond_34

    const-string p1, "height"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_34

    :try_start_10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Ip;->j6:Lcom/google/android/gms/internal/ads/Hp;

    monitor-enter p2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_2e

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ip;->j6:Lcom/google/android/gms/internal/ads/Hp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hp;->j6(Lcom/google/android/gms/internal/ads/Hp;)I

    move-result v0

    if-eq v0, p1, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ip;->j6:Lcom/google/android/gms/internal/ads/Hp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Hp;->j6(Lcom/google/android/gms/internal/ads/Hp;I)I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ip;->j6:Lcom/google/android/gms/internal/ads/Hp;

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestLayout()V

    :cond_29
    monitor-exit p2

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception p1

    const-string p2, "Exception occurred while getting webview content height"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    return-void
.end method
