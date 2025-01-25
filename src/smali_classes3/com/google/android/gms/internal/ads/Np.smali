.class final Lcom/google/android/gms/internal/ads/Np;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static j6:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static j6(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Zo()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Np;->j6(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_22

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_22
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static j6(Landroid/webkit/WebView;)Z
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/Np;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/Np;->j6:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_27

    if-nez v0, :cond_1d

    :try_start_7
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/Np;->j6:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_14} :catch_15
    .catchall {:try_start_7 .. :try_end_14} :catchall_27

    goto :goto_1d

    :catch_15
    move-exception p0

    const/4 p0, 0x0

    :try_start_17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/Np;->j6:Ljava/lang/Boolean;

    :cond_1d
    :goto_1d
    sget-object p0, Lcom/google/android/gms/internal/ads/Np;->j6:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-class v0, Lcom/google/android/gms/internal/ads/Np;

    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/ads/Np;

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_27

    throw p0
.end method
