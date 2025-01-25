.class final Lcom/google/android/gms/internal/ads/lF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final DW:Lcom/google/android/gms/internal/ads/dF;

.field final FH:Landroid/webkit/WebView;

.field final Hw:Z

.field private j6:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final v5:Lcom/google/android/gms/internal/ads/jF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jF;Lcom/google/android/gms/internal/ads/dF;Landroid/webkit/WebView;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lF;->v5:Lcom/google/android/gms/internal/ads/jF;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lF;->DW:Lcom/google/android/gms/internal/ads/dF;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lF;->FH:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/lF;->Hw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/nF;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/nF;-><init>(Lcom/google/android/gms/internal/ads/lF;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lF;->j6:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lF;->FH:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lF;->FH:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lF;->j6:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lF;->j6:Landroid/webkit/ValueCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method
