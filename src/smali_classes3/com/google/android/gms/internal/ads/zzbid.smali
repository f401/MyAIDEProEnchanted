.class Lcom/google/android/gms/internal/ads/zzbid;
.super Landroid/webkit/WebView;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_22

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :try_start_37
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception v0

    const-string v1, "Unable to enable Javascript."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Np;->j6(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p1, "Ignore addJavascriptInterface due to low Android version."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_6
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    goto :goto_9

    :catch_6
    move-exception p1

    goto :goto_9

    :catch_8
    move-exception p1

    :goto_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "CoreWebView.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
