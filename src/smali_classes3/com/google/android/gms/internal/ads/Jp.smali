.class public Lcom/google/android/gms/internal/ads/Jp;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final DW:[Ljava/lang/String;

.field private static final j6:[Ljava/lang/String;


# instance fields
.field private FH:Lcom/google/android/gms/internal/ads/Op;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HOST_LOOKUP"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "AUTHENTICATION"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "PROXY_AUTHENTICATION"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "CONNECT"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "IO"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const/4 v1, 0x7

    const-string v9, "TIMEOUT"

    aput-object v9, v0, v1

    const/16 v1, 0x8

    const-string v9, "REDIRECT_LOOP"

    aput-object v9, v0, v1

    const/16 v1, 0x9

    const-string v9, "UNSUPPORTED_SCHEME"

    aput-object v9, v0, v1

    const/16 v1, 0xa

    const-string v9, "FAILED_SSL_HANDSHAKE"

    aput-object v9, v0, v1

    const/16 v1, 0xb

    const-string v9, "BAD_URL"

    aput-object v9, v0, v1

    const/16 v1, 0xc

    const-string v9, "FILE"

    aput-object v9, v0, v1

    const/16 v1, 0xd

    const-string v9, "FILE_NOT_FOUND"

    aput-object v9, v0, v1

    const/16 v1, 0xe

    const-string v9, "TOO_MANY_REQUESTS"

    aput-object v9, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/Jp;->j6:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v2

    const-string v1, "EXPIRED"

    aput-object v1, v0, v3

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v4

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v5

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v6

    const-string v1, "INVALID"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/Jp;->DW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public FH(Lcom/google/android/gms/internal/ads/Kp;)Z
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public Hw(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Op;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jp;->FH:Lcom/google/android/gms/internal/ads/Op;

    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_14

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_14
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Kp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jp;->DW(Lcom/google/android/gms/internal/ads/Kp;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/Kp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Jp;->FH:Lcom/google/android/gms/internal/ads/Op;

    if-eqz p2, :cond_10

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/Op;->j6(Lcom/google/android/gms/internal/ads/Kp;)V

    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jp;->j6(Lcom/google/android/gms/internal/ads/Kp;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-gez p2, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/ads/Jp;->j6:[Ljava/lang/String;

    array-length p1, p1

    :cond_5
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    if-ltz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/ads/Jp;->DW:[Ljava/lang/String;

    array-length p1, p1

    :cond_c
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x1

    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 3

    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_13

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/Kp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jp;->Hw(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/Kp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jp;->Hw(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_14

    const/16 p2, 0xde

    if-eq p1, p2, :cond_14

    packed-switch p1, :pswitch_data_16

    packed-switch p1, :pswitch_data_28

    const/4 p1, 0x0

    return p1

    :cond_14
    :pswitch_14  #0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x7e, 0x7f, 0x80, 0x81, 0x82
    const/4 p1, 0x1

    return p1

    :pswitch_data_16
    .packed-switch 0x55
        :pswitch_14  #00000055
        :pswitch_14  #00000056
        :pswitch_14  #00000057
        :pswitch_14  #00000058
        :pswitch_14  #00000059
        :pswitch_14  #0000005a
        :pswitch_14  #0000005b
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x7e
        :pswitch_14  #0000007e
        :pswitch_14  #0000007f
        :pswitch_14  #00000080
        :pswitch_14  #00000081
        :pswitch_14  #00000082
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_13

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/Kp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jp;->FH(Lcom/google/android/gms/internal/ads/Kp;)Z

    move-result p1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/Kp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Jp;->FH(Lcom/google/android/gms/internal/ads/Kp;)Z

    move-result p1

    return p1
.end method
