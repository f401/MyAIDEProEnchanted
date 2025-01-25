.class public Lcom/s1243808733/widget/CustomWebView;
.super Landroid/webkit/WebView;
.source "CustomWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/s1243808733/widget/CustomWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/s1243808733/widget/CustomWebView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 21
    invoke-static {}, Lcom/s1243808733/widget/CustomWebView;->isSupportForceDark()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_14

    .line 22
    invoke-virtual {p0}, Lcom/s1243808733/widget/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebSettings;I)V

    :cond_14
    return-void
.end method

.method public static isSupportForceDark()Z
    .registers 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
