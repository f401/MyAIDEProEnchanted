.class final Lcom/google/android/gms/internal/ads/Zo;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/Mo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private BT:I

.field private final DW:Lcom/google/android/gms/internal/ads/ix;

.field private EQ:Lcom/google/android/gms/ads/internal/overlay/c;

.field private final FH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final Hw:Lcom/google/android/gms/ads/internal/P;

.field private J0:Lcom/google/android/gms/internal/ads/yp;

.field private J8:Ljava/lang/String;

.field private KD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:I

.field private P8:Lcom/google/android/gms/internal/ads/A;

.field private QX:Z

.field private SI:Lcom/google/android/gms/internal/ads/B;

.field private Sf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/po;",
            ">;"
        }
    .end annotation
.end field

.field private U2:Z

.field private final VH:F

.field private Ws:Z

.field private XL:Z

.field private final Zo:Landroid/util/DisplayMetrics;

.field private a8:Z

.field private aM:Z

.field private cb:I

.field private cn:Z

.field private dx:I

.field private ef:I

.field private ei:Lcom/google/android/gms/internal/ads/A;

.field private er:Z

.field private final g3:Lcom/google/android/gms/internal/ads/YF;

.field private gW:Lcom/google/android/gms/internal/ads/ga;

.field private gn:Z

.field private j3:Ljava/lang/Boolean;

.field private final j6:Lcom/google/android/gms/internal/ads/zzbhs;

.field private lg:Ljava/lang/String;

.field private nw:Lcom/google/android/gms/internal/ads/A;

.field private rN:Lcom/google/android/gms/internal/ads/bp;

.field private ro:Lcom/google/android/gms/ads/internal/overlay/c;

.field private sG:I

.field private sh:Lcom/google/android/gms/internal/ads/Yl;

.field private tp:Lcom/google/android/gms/internal/ads/No;

.field private u7:Z

.field private final v5:Lcom/google/android/gms/ads/internal/ta;

.field private final vJ:Landroid/view/WindowManager;

.field private vy:I

.field private we:Labcd/ox;

.field private yS:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhs;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)V
    .registers 14

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Zo;->gn:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Zo;->u7:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->U2:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Zo;->a8:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->lg:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zo;->cb:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zo;->dx:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zo;->sG:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zo;->ef:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->j6:Lcom/google/android/gms/internal/ads/zzbhs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zo;->J8:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Zo;->XL:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zo;->Mr:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Zo;->DW:Lcom/google/android/gms/internal/ads/ix;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Zo;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Zo;->Hw:Lcom/google/android/gms/ads/internal/P;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/Zo;->v5:Lcom/google/android/gms/ads/internal/ta;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->vJ:Landroid/view/WindowManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/Zo;->VH:F

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/Zo;->g3:Lcom/google/android/gms/internal/ads/YF;

    invoke-virtual {p0, p5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_53
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5d

    :catch_57
    move-exception p3

    const-string p4, "Unable to enable Javascript."

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5d
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_70

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_70
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object p3

    iget-object p4, p7, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object p3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->Hw()V

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Hw()Z

    move-result p2

    if-eqz p2, :cond_99

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ep;->j6(Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/ep;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_99
    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/Yl;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Zo;->j6:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/Yl;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->sh:Lcom/google/android/gms/internal/ads/Yl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->aM()V

    new-instance p2, Lcom/google/android/gms/internal/ads/B;

    new-instance p3, Lcom/google/android/gms/internal/ads/D;

    const-string p5, "make_wv"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/Zo;->J8:Ljava/lang/String;

    invoke-direct {p3, v0, p5, p6}, Lcom/google/android/gms/internal/ads/D;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/B;-><init>(Lcom/google/android/gms/internal/ads/D;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/D;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/A;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->ei:Lcom/google/android/gms/internal/ads/A;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    const-string p5, "native:view_create"

    invoke-virtual {p3, p5, p2}, Lcom/google/android/gms/internal/ads/B;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Zo;->nw:Lcom/google/android/gms/internal/ads/A;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Zo;->P8:Lcom/google/android/gms/internal/ads/A;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/Vk;->DW(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pk;->u7()V

    return-void
.end method

.method private final DW()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->Hw()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->j3:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_28

    if-nez v0, :cond_26

    :try_start_d
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Zo;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/Boolean;)V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1b} :catch_1d
    .catchall {:try_start_d .. :try_end_1b} :catchall_28

    monitor-exit p0

    return-void

    :catch_1d
    move-exception v0

    const/4 v0, 0x0

    :try_start_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/Boolean;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/Zo;)V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final EQ()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->aM:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Vk;->FH(Landroid/view/View;)Z

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->aM:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final FH()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->ei:Lcom/google/android/gms/internal/ads/A;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    return-void
.end method

.method private final Hw()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->XL:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1e

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->gn()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_32

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->EQ()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_32

    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->EQ()V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final Hw(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Zo;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final J0()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Sf:Ljava/util/Map;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/po;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/po;->j6()V

    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Sf:Ljava/util/Map;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method private final VH(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "isVisible"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final Zo(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Zo()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->a8()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->DW()V

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->a8()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_2f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Zo;->Hw(Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_47
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Zo;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method private final a8()Ljava/lang/Boolean;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->j3:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final aM()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/s;->j6(Lcom/google/android/gms/internal/ads/D;)Z

    :cond_20
    return-void
.end method

.method private final gn()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->aM:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Vk;->DW(Landroid/view/View;)Z

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->aM:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Zo;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/Zo;->vy:I

    return p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Zo;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zo;->vy:I

    return p1
.end method

.method static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Zo;
    .registers 24

    new-instance v12, Lcom/google/android/gms/internal/ads/Zo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhs;

    move-object v0, p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>(Landroid/content/Context;)V

    move-object v0, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/Zo;-><init>(Lcom/google/android/gms/internal/ads/zzbhs;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)V

    return-object v12
.end method

.method private final j6(Ljava/lang/Boolean;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->j3:Ljava/lang/Boolean;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Boolean;)V

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method private final j6(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Zo;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final j6()Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->u7()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->EQ()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->j6:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_38

    goto :goto_58

    :cond_38
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_5a

    :cond_58
    :goto_58
    move v6, v4

    move v7, v5

    :goto_5a
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zo;->dx:I

    if-ne v0, v4, :cond_6b

    iget v3, p0, Lcom/google/android/gms/internal/ads/Zo;->cb:I

    if-ne v3, v5, :cond_6b

    iget v3, p0, Lcom/google/android/gms/internal/ads/Zo;->sG:I

    if-ne v3, v6, :cond_6b

    iget v3, p0, Lcom/google/android/gms/internal/ads/Zo;->ef:I

    if-ne v3, v7, :cond_6b

    return v1

    :cond_6b
    if-ne v0, v4, :cond_71

    iget v0, p0, Lcom/google/android/gms/internal/ads/Zo;->cb:I

    if-eq v0, v5, :cond_72

    :cond_71
    const/4 v1, 0x1

    :cond_72
    iput v4, p0, Lcom/google/android/gms/internal/ads/Zo;->dx:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/Zo;->cb:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/Zo;->sG:I

    iput v7, p0, Lcom/google/android/gms/internal/ads/Zo;->ef:I

    new-instance v3, Lcom/google/android/gms/internal/ads/_f;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->vJ:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/_f;->j6(IIIIFI)V

    return v1
.end method

.method private final rN()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->cn:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->cn:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->tp()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final v5(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_4} :catch_c
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_4} :catch_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_8
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    goto :goto_1f

    :catch_8
    move-exception p1

    goto :goto_f

    :catch_a
    move-exception p1

    goto :goto_f

    :catch_c
    move-exception p1

    goto :goto_f

    :catch_e
    move-exception p1

    :goto_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_6

    monitor-exit p0

    return-void

    :goto_1f
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Zo;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/No;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_7
    return-void
.end method

.method public final DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Zo;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final DW(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->XL:Z

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Zo;->XL:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->Hw()V

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/internal/ads/_f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_20

    if-eqz p1, :cond_19

    const-string p1, "expanded"

    goto :goto_1b

    :cond_19
    const-string p1, "default"

    :goto_1b
    :try_start_1b
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/_f;->FH(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final FH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/po;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Sf:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_8

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/po;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final FH(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/No;->DW(Z)V

    return-void
.end method

.method public final Hw(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/No;->u7()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/c;->j6(ZZ)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Zo;->Ws:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final I()I
    .registers 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final J8()Landroid/webkit/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    return-object v0
.end method

.method public final KD()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->FH()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final Mr()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->XL:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Mz()Lcom/google/android/gms/internal/ads/A;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->ei:Lcom/google/android/gms/internal/ads/A;

    return-object v0
.end method

.method public final P8()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J8:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final QX()Lcom/google/android/gms/internal/ads/B;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    return-object v0
.end method

.method public final SI()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->sh:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->FH()V

    return-void
.end method

.method public final Sf()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public final U2()Lcom/google/android/gms/ads/internal/overlay/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->ro:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final VH()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->U2:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/ix;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->DW:Lcom/google/android/gms/internal/ads/ix;

    return-object v0
.end method

.method public final XL()Labcd/ox;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->we:Labcd/ox;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Zo()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->rN()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ap;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ap;-><init>(Lcom/google/android/gms/internal/ads/Zo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Zo(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zo;->BT:I

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zo;->BT:I

    if-gtz v0, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/c;->wC()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ca()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final cb()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->lg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cn()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gl;->DW()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gl;->j6()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gl;->j6(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final destroy()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->aM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->sh:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->Hw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->K3()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->onDestroy()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;

    :cond_18
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->we:Labcd/ox;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->tp()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->QX:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_42

    if-eqz v0, :cond_25

    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oo;->j6(Lcom/google/android/gms/internal/ads/Dn;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->J0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->QX:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Zo;->v5(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final dx()Lcom/google/android/gms/internal/ads/ga;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->gW:Lcom/google/android/gms/internal/ads/ga;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ef()Lcom/google/android/gms/ads/internal/overlay/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic ei()Lcom/google/android/gms/internal/ads/tp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    return-object v0
.end method

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->v5(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .registers 2

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_1e

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->QX:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->tp()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oo;->j6(Lcom/google/android/gms/internal/ads/Dn;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->J0()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->rN()V

    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final g3()Lcom/google/android/gms/internal/ads/vn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final gW()Lcom/google/android/gms/internal/ads/yp;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->KD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getRequestedOrientation()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Mr:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public final hx()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->a8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Hw:Lcom/google/android/gms/ads/internal/P;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/P;->hx()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isDestroyed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->QX:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j3()Lcom/google/android/gms/internal/ads/zzbbi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    return-object v0
.end method

.method public final j6(I)V
    .registers 7

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->ei:Lcom/google/android/gms/internal/ads/A;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j6(Labcd/ox;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->we:Labcd/ox;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->j6:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhs;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->sh:Lcom/google/android/gms/internal/ads/Yl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->j6:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Yl;->j6(Landroid/app/Activity;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->ro:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/SE;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/SE;->J0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->er:Z

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/SE;->J0:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Zo;->VH(Z)V

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/bp;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->rN:Lcom/google/android/gms/internal/ads/bp;

    if-eqz v0, :cond_c

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->rN:Lcom/google/android/gms/internal/ads/bp;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ga;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->gW:Lcom/google/android/gms/internal/ads/ga;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yp;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    if-nez p1, :cond_5

    const-string p1, ""

    :cond_5
    :try_start_5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->lg:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_7
    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/p<",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    :cond_7
    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Sf:Ljava/util/Map;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Sf:Ljava/util/Map;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Sf:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->kf:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/op;->j6()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/op;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_27
    move-object v2, p2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3b

    monitor-exit p0

    return-void

    :cond_34
    :try_start_34
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_c

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_c
    move-exception p1

    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, "Dispatching AFMA event: "

    if-eqz p2, :cond_3f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_3f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Zo;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/No;->j6(Z)V

    return-void
.end method

.method public final j6(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/No;->j6(ZI)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/No;->j6(ZILjava/lang/String;)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/No;->j6(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(ZJ)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_b

    const-string p1, "1"

    goto :goto_d

    :cond_b
    const-string p1, "0"

    :goto_d
    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final lg()V
    .registers 2

    const-string v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    if-nez v0, :cond_21

    :try_start_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_a} :catch_e
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_7 .. :try_end_a} :catch_c
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_11

    :catch_10
    move-exception p1

    :goto_11
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_28

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final nw()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->j6:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->sh:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->j6()V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->er:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/No;->EQ()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->yS:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->we()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->J0()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Zo;->yS:Z

    :cond_3e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->j6()Z

    const/4 v0, 0x1

    :cond_42
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Zo;->VH(Z)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->sh:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->DW()V

    :cond_c
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->yS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->EQ()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->we()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->J0()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_50
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Zo;->yS:Z

    :cond_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_57

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Zo;->VH(Z)V

    return-void

    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/2addr p3, p5

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/No;->J8()Lcom/google/android/gms/internal/ads/xp;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/No;->J8()Lcom/google/android/gms/internal/ads/xp;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xp;->j6()V

    :cond_30
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_41

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_20

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_20
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2b

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_2b
    cmpl-float v0, v1, v3

    if-lez v0, :cond_35

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_35
    cmpg-float v0, v1, v3

    if-gez v0, :cond_41

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    const/4 p1, 0x0

    return p1

    :cond_41
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Zo;->j6()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->ef()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/c;->fd()V

    :cond_f
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1ef

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->XL:Z

    if-nez v0, :cond_1ef

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->Zo()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_1ef

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->gn()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->VH()Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->k4:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bp;->PH()F

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    cmpl-float v1, v0, v1

    if-nez v1, :cond_63

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_63
    :try_start_63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_7c

    if-eqz v2, :cond_7c

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_84

    :cond_7c
    if-nez p1, :cond_84

    if-eqz v1, :cond_84

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    :cond_84
    :goto_84
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_8f
    .catchall {:try_start_63 .. :try_end_8f} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_91
    :try_start_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->j6()Z

    move-result v0

    if-eqz v0, :cond_e1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ir:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_dc

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Hw()Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_dc

    :cond_b2
    new-instance v0, Lcom/google/android/gms/internal/ads/_o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/_o;-><init>(Lcom/google/android/gms/internal/ads/Zo;)V

    const-string v1, "/contentHeight"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Zo;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Zo;->vy:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d3

    int-to-float p2, v1

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_d7

    :cond_d3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_d7
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_da
    .catchall {:try_start_91 .. :try_end_da} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_dc
    :goto_dc
    :try_start_dc
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_e1
    :try_start_e1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->Zo:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_f4
    .catchall {:try_start_e1 .. :try_end_f4} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_f6
    :try_start_f6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000  # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_116

    if-ne v0, v3, :cond_112

    goto :goto_116

    :cond_112
    const v0, 0x7fffffff

    goto :goto_117

    :cond_116
    :goto_116
    move v0, p1

    :goto_117
    if-eq v2, v4, :cond_11b

    if-ne v2, v3, :cond_11c

    :cond_11b
    move v5, p2

    :cond_11c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/yp;->FH:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_12c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/yp;->DW:I

    if-le v2, v5, :cond_12a

    goto :goto_12c

    :cond_12a
    const/4 v2, 0x0

    goto :goto_12d

    :cond_12c
    :goto_12c
    const/4 v2, 0x1

    :goto_12d
    sget-object v4, Lcom/google/android/gms/internal/ads/p;->ek:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_161

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget v4, v4, Lcom/google/android/gms/internal/ads/yp;->FH:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/Zo;->VH:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_15d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yp;->DW:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/Zo;->VH:F

    div-float/2addr v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v4

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_15d

    const/4 v0, 0x1

    goto :goto_15e

    :cond_15d
    const/4 v0, 0x0

    :goto_15e
    if-eqz v2, :cond_161

    move v2, v0

    :cond_161
    const/16 v0, 0x8

    if-eqz v2, :cond_1cc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/yp;->FH:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/Zo;->VH:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget v4, v4, Lcom/google/android/gms/internal/ads/yp;->DW:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/Zo;->VH:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v5

    float-to-int p2, p2

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x67

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Not enough space to show ad. Needs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1ba

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1ba
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Zo;->gn:Z

    if-nez p1, :cond_1ed

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->g3:Lcom/google/android/gms/internal/ads/YF;

    sget-object p2, Lcom/google/android/gms/internal/ads/_F;->BT:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/Zo;->gn:Z
    :try_end_1ca
    .catchall {:try_start_f6 .. :try_end_1ca} :catchall_1f4

    monitor-exit p0

    return-void

    :cond_1cc
    :try_start_1cc
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1d5

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1d5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Zo;->u7:Z

    if-nez p1, :cond_1e2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->g3:Lcom/google/android/gms/internal/ads/YF;

    sget-object p2, Lcom/google/android/gms/internal/ads/_F;->vy:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/Zo;->u7:Z

    :cond_1e2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget p1, p1, Lcom/google/android/gms/internal/ads/yp;->FH:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Zo;->J0:Lcom/google/android/gms/internal/ads/yp;

    iget p2, p2, Lcom/google/android/gms/internal/ads/yp;->DW:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_1ed
    .catchall {:try_start_1cc .. :try_end_1ed} :catchall_1f4

    :cond_1ed
    monitor-exit p0

    return-void

    :cond_1ef
    :goto_1ef
    :try_start_1ef
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1f2
    .catchall {:try_start_1ef .. :try_end_1f2} :catchall_1f4

    monitor-exit p0

    return-void

    :catchall_1f4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->EQ()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->gW:Lcom/google/android/gms/internal/ads/ga;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ga;->j6(Landroid/view/MotionEvent;)V

    :cond_10
    monitor-exit p0

    goto :goto_1c

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw p1

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->DW:Lcom/google/android/gms/internal/ads/ix;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/view/MotionEvent;)V

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final qU()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->a8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Hw:Lcom/google/android/gms/ads/internal/P;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/P;->qU()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ro()I
    .registers 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final sG()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->j6:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->DW()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->KD:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/Zo;->Mr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->EQ:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/c;->setRequestedOrientation(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/No;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/internal/ads/No;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zo;->tp:Lcom/google/android/gms/internal/ads/No;

    :cond_b
    return-void
.end method

.method public final sh()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->nw:Lcom/google/android/gms/internal/ads/A;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->nw:Lcom/google/android/gms/internal/ads/A;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/B;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    :cond_17
    return-void
.end method

.method public final stopLoading()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final tp()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zo;->BT:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u7()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->a8:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v5()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->P8:Lcom/google/android/gms/internal/ads/A;

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zo;->ei:Lcom/google/android/gms/internal/ads/A;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->P8:Lcom/google/android/gms/internal/ads/A;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zo;->SI:Lcom/google/android/gms/internal/ads/B;

    const-string v3, "native:view_show"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/B;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    :cond_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zo;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final v5(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Zo;->U2:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final vJ()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Zo;->ef()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->Lx()V

    :cond_9
    return-void
.end method

.method public final vy()Lcom/google/android/gms/ads/internal/ta;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->v5:Lcom/google/android/gms/ads/internal/ta;

    return-object v0
.end method

.method public final we()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Zo;->Ws:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final yS()Lcom/google/android/gms/internal/ads/bp;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zo;->rN:Lcom/google/android/gms/internal/ads/bp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
