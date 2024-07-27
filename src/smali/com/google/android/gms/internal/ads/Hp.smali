.class final Lcom/google/android/gms/internal/ads/Hp;
.super Lcom/google/android/gms/internal/ads/Lp;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/ad;
.implements Lcom/google/android/gms/internal/ads/Mo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private BT:Lcom/google/android/gms/internal/ads/A;

.field private EQ:Lcom/google/android/gms/internal/ads/yp;

.field private final Hw:Lcom/google/android/gms/internal/ads/zzbhs;

.field private J0:Z

.field private J8:Z

.field private KD:I

.field private Mr:Lcom/google/android/gms/internal/ads/bp;

.field private P8:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private QX:I

.field private final SI:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Labcd/ox;",
            ">;"
        }
    .end annotation
.end field

.field private U2:Z

.field private final VH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private Ws:Z

.field private XL:Z

.field private final Zo:Lcom/google/android/gms/internal/ads/ix;

.field private a8:Z

.field private aM:Z

.field private cb:F

.field private cn:I

.field private dx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/po;",
            ">;"
        }
    .end annotation
.end field

.field private ei:Lcom/google/android/gms/ads/internal/overlay/c;

.field private er:I

.field private gW:Lcom/google/android/gms/internal/ads/A;

.field private final gn:Lcom/google/android/gms/ads/internal/P;

.field private j3:Ljava/lang/String;

.field private lg:Lcom/google/android/gms/internal/ads/ga;

.field private nw:Lcom/google/android/gms/internal/ads/Yl;

.field private rN:I

.field private ro:I

.field private final sG:Landroid/view/WindowManager;

.field private sh:I

.field private tp:Lcom/google/android/gms/ads/internal/overlay/c;

.field private final u7:Lcom/google/android/gms/ads/internal/ta;

.field private final v5:Lcom/google/android/gms/internal/ads/zp;

.field private vy:Lcom/google/android/gms/internal/ads/B;

.field private we:Ljava/lang/String;

.field private yS:Lcom/google/android/gms/internal/ads/A;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbhs;Lcom/google/android/gms/internal/ads/zp;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 18

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Lp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Jp;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hp;->XL:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hp;->aM:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->j3:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->SI:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Hp;->KD:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Hp;->ro:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Hp;->cn:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Hp;->sh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->Hw:Lcom/google/android/gms/internal/ads/zzbhs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Hp;->we:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Hp;->J8:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Hp;->QX:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Hp;->Zo:Lcom/google/android/gms/internal/ads/ix;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Hp;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->gn:Lcom/google/android/gms/ads/internal/P;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->u7:Lcom/google/android/gms/ads/internal/ta;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->sG:Landroid/view/WindowManager;

    new-instance v1, Lcom/google/android/gms/internal/ads/Yl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->Hw:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p0, v3}, Lcom/google/android/gms/internal/ads/Yl;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->nw:Lcom/google/android/gms/internal/ads/Yl;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object v2, p8, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {p1}, Landroid/content/MutableContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->Hw()V

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Hw()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ep;->j6(Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/ep;

    move-result-object v1

    const-string v2, "googleAdsJsInterface"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Lp;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->aM()V

    new-instance v1, Lcom/google/android/gms/internal/ads/B;

    new-instance v2, Lcom/google/android/gms/internal/ads/D;

    const/4 v3, 0x1

    const-string v4, "make_wv"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Hp;->we:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/D;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/B;-><init>(Lcom/google/android/gms/internal/ads/D;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v1

    invoke-virtual {v1, p9}, Lcom/google/android/gms/internal/ads/D;->j6(Lcom/google/android/gms/internal/ads/D;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/A;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->gW:Lcom/google/android/gms/internal/ads/A;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    const-string v2, "native:view_create"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Hp;->gW:Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/B;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->BT:Lcom/google/android/gms/internal/ads/A;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->yS:Lcom/google/android/gms/internal/ads/A;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vk;->DW(Landroid/content/Context;)V

    return-void
.end method

.method private final DW()Z
    .registers 9

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zp;->u7()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zp;->EQ()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->sG:Landroid/view/WindowManager;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Hp;->Hw:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_2
    move v3, v1

    move v4, v2

    :goto_1
    iget v7, p0, Lcom/google/android/gms/internal/ads/Hp;->ro:I

    if-ne v7, v1, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/ads/Hp;->KD:I

    if-ne v7, v2, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/ads/Hp;->cn:I

    if-ne v7, v3, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/ads/Hp;->sh:I

    if-eq v7, v4, :cond_0

    :cond_3
    iget v7, p0, Lcom/google/android/gms/internal/ads/Hp;->ro:I

    if-ne v7, v1, :cond_4

    iget v7, p0, Lcom/google/android/gms/internal/ads/Hp;->KD:I

    if-eq v7, v2, :cond_6

    :cond_4
    move v7, v5

    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/Hp;->ro:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/Hp;->KD:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/Hp;->cn:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/Hp;->sh:I

    new-instance v0, Lcom/google/android/gms/internal/ads/_f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Hp;->sG:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/_f;->j6(IIIIFI)V

    move v0, v7

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/app/Activity;)[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    aget v3, v4, v0

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    aget v4, v4, v5

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_1

    :cond_6
    move v7, v0

    goto :goto_2
.end method

.method private final EQ()V
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Ws:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Vk;->FH(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Ws:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final FH()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->gW:Lcom/google/android/gms/internal/ads/A;

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

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->J8:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->EQ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->gn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->EQ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final J0()V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/po;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/po;->j6()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private final aM()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->FH()Lcom/google/android/gms/internal/ads/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/s;->j6(Lcom/google/android/gms/internal/ads/D;)Z

    goto :goto_0
.end method

.method private final gn()V
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Ws:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Vk;->DW(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Ws:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final gn(Z)V
    .registers 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    const-string v2, "isVisible"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onAdVisibilityChanged"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Hp;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Hp;->er:I

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Hp;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Hp;->er:I

    return p1
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Lp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Lp;->DW(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zp;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_0
    return-void
.end method

.method public final DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final DW(Z)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->J8:Z

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Hp;->J8:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->Hw()V

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/_f;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const-string v0, "expanded"

    :goto_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/_f;->FH(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "default"

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final FH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/po;
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/po;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final FH(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->DW(Z)V

    return-void
.end method

.method public final Hw(Z)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zp;->u7()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/c;->j6(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Hp;->J0:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final I()I
    .registers 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final J8()Landroid/webkit/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    return-object v0
.end method

.method public final KD()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->FH()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final Mr()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->J8:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Mz()Lcom/google/android/gms/internal/ads/A;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->gW:Lcom/google/android/gms/internal/ads/A;

    return-object v0
.end method

.method public final P8()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->we:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final QX()Lcom/google/android/gms/internal/ads/B;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    return-object v0
.end method

.method public final SI()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->nw:Lcom/google/android/gms/internal/ads/Yl;

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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->ei:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final VH(Z)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->aM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->nw:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->Hw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->K3()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->SI:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->tp()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->vy()Lcom/google/android/gms/internal/ads/oo;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/oo;->j6(Lcom/google/android/gms/internal/ads/Dn;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->J0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final VH()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->XL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/ix;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Zo:Lcom/google/android/gms/internal/ads/ix;

    return-object v0
.end method

.method public final XL()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->SI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ox;

    return-object v0
.end method

.method public final Zo()V
    .registers 1

    return-void
.end method

.method public final Zo(Z)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/Hp;->rN:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Hp;->rN:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Hp;->rN:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->wC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->j3:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cn()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gl;->DW()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gl;->j6()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/gl;->j6(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final dx()Lcom/google/android/gms/internal/ads/ga;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->lg:Lcom/google/android/gms/internal/ads/ga;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ef()Lcom/google/android/gms/ads/internal/overlay/c;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic ei()Lcom/google/android/gms/internal/ads/tp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    return-object v0
.end method

.method public final g3()Lcom/google/android/gms/internal/ads/vn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final gW()Lcom/google/android/gms/internal/ads/yp;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->P8:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getRequestedOrientation()I
    .registers 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Hp;->QX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
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

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->aM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->gn:Lcom/google/android/gms/ads/internal/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->gn:Lcom/google/android/gms/ads/internal/P;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/P;->hx()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j3()Lcom/google/android/gms/internal/ads/zzbbi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    return-object v0
.end method

.method public final j6(I)V
    .registers 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->gW:Lcom/google/android/gms/internal/ads/A;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j6(Labcd/ox;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->SI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Hw:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhs;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->nw:Lcom/google/android/gms/internal/ads/Yl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->Hw:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yl;->j6(Landroid/app/Activity;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->ei:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/SE;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/SE;->J0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->U2:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/SE;->J0:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Hp;->gn(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/bp;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Mr:Lcom/google/android/gms/internal/ads/bp;

    if-eqz v0, :cond_0

    const-string v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->Mr:Lcom/google/android/gms/internal/ads/bp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ga;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->lg:Lcom/google/android/gms/internal/ads/ga;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yp;)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->j3:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/p",
            "<",
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    :cond_0
    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->dx:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->kf:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/op;->j6()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/op;->j6(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Lp;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method public final j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->DW(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->j6(Z)V

    return-void
.end method

.method public final j6(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zp;->j6(ZI)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zp;->j6(ZILjava/lang/String;)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zp;->j6(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(ZJ)V
    .registers 8

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    const-string v2, "success"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onCacheAccessComplete"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public final lg()V
    .registers 2

    const-string v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final nw()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Hw:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->j6()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .registers 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Lp;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->nw:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yl;->j6()V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hp;->U2:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zp;->EQ()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hp;->a8:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zp;->we()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zp;->J0()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hp;->a8:Z

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->DW()Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Hp;->gn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .registers 5

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Lp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->nw:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->DW()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->a8:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->EQ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->we()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->J0()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->a8:Z

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Hp;->gn(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Lp;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->J8()Lcom/google/android/gms/internal/ads/xp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->J8()Lcom/google/android/gms/internal/ads/xp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xp;->j6()V

    goto :goto_0
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v4

    if-lez v0, :cond_2

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v4

    if-gez v0, :cond_4

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hp;->DW()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Hp;->ef()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/c;->fd()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/high16 v10, 0x40000000    # 2.0f

    const/16 v9, 0x8

    const/4 v2, 0x1

    const/high16 v8, -0x80000000

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Lp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->J8:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->Zo()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->gn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->VH()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->k4:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Hp;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bp;->PH()F

    move-result v0

    :goto_1
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_6

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v1, v4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, v5

    div-float/2addr v2, v0

    float-to-int v3, v2

    if-nez v4, :cond_7

    if-eqz v3, :cond_7

    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v2, v3

    move v4, v3

    :goto_2
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    goto :goto_0

    :cond_7
    if-nez v5, :cond_19

    if-eqz v1, :cond_19

    int-to-float v2, v1

    div-float v0, v2, v0

    float-to-int v2, v0

    move v0, v1

    move v5, v1

    goto :goto_2

    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->j6()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ir:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Hw()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :cond_a
    :try_start_7
    new-instance v0, Lcom/google/android/gms/internal/ads/Ip;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Ip;-><init>(Lcom/google/android/gms/internal/ads/Hp;)V

    const-string v1, "/contentHeight"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Hp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Hp;->DW(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Hp;->er:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/Hp;->er:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_3
    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :cond_b
    :try_start_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->sG:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :cond_d
    :try_start_9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const v0, 0x7fffffff

    if-eq v1, v8, :cond_e

    if-ne v1, v10, :cond_12

    :cond_e
    move v6, v7

    :goto_4
    if-eq v4, v8, :cond_f

    if-ne v4, v10, :cond_18

    :cond_f
    move v4, v5

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yp;->FH:I

    if-gt v0, v6, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yp;->DW:I

    if-le v0, v4, :cond_13

    :cond_10
    move v1, v2

    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ek:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yp;->FH:I

    int-to-float v0, v0

    iget v8, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v0, v8

    int-to-float v6, v6

    iget v8, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v6, v8

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yp;->DW:I

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v0, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_14

    move v0, v2

    :goto_7
    if-eqz v1, :cond_17

    :goto_8
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yp;->FH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v1, v1, Lcom/google/android/gms/internal/ads/yp;->DW:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v7

    iget v3, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v5

    iget v4, p0, Lcom/google/android/gms/internal/ads/Hp;->cb:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x67

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dp, but only has "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dp."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_11

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :cond_12
    const v1, 0x7fffffff

    move v6, v1

    goto/16 :goto_4

    :cond_13
    move v1, v3

    goto/16 :goto_6

    :cond_14
    move v0, v3

    goto :goto_7

    :cond_15
    :try_start_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yp;->FH:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->EQ:Lcom/google/android/gms/internal/ads/yp;

    iget v1, v1, Lcom/google/android/gms/internal/ads/yp;->DW:I

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    move v0, v1

    goto/16 :goto_8

    :cond_18
    move v4, v0

    goto/16 :goto_5

    :cond_19
    move v0, v1

    move v2, v3

    goto/16 :goto_2
.end method

.method public final onPause()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Lp;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onResume()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Lp;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->v5:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->EQ()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->lg:Lcom/google/android/gms/internal/ads/ga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->lg:Lcom/google/android/gms/internal/ads/ga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ga;->j6(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Lp;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Zo:Lcom/google/android/gms/internal/ads/ix;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public final qU()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->aM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->gn:Lcom/google/android/gms/ads/internal/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->gn:Lcom/google/android/gms/ads/internal/P;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/P;->qU()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Hw:Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->DW()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->P8:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/Hp;->QX:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->tp:Lcom/google/android/gms/ads/internal/overlay/c;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Hp;->QX:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sh()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->BT:Lcom/google/android/gms/internal/ads/A;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->BT:Lcom/google/android/gms/internal/ads/A;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->BT:Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/B;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/Lp;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final tp()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Hp;->rN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u7()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->aM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v5()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->yS:Lcom/google/android/gms/internal/ads/A;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->gW:Lcom/google/android/gms/internal/ads/A;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aes2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/B;->j6()Lcom/google/android/gms/internal/ads/D;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/v;->j6(Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->yS:Lcom/google/android/gms/internal/ads/A;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->vy:Lcom/google/android/gms/internal/ads/B;

    const-string v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->yS:Lcom/google/android/gms/internal/ads/A;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/B;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/A;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final v5(Z)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Hp;->XL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final vJ()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Hp;->ef()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->Lx()V

    :cond_0
    return-void
.end method

.method public final vy()Lcom/google/android/gms/ads/internal/ta;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->u7:Lcom/google/android/gms/ads/internal/ta;

    return-object v0
.end method

.method public final we()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hp;->J0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final yS()Lcom/google/android/gms/internal/ads/bp;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->Mr:Lcom/google/android/gms/internal/ads/bp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
