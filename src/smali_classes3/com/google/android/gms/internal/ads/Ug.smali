.class public final Lcom/google/android/gms/internal/ads/Ug;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private EQ:I

.field private final FH:Lcom/google/android/gms/internal/ads/ix;

.field private final Hw:Lcom/google/android/gms/internal/ads/lk;

.field private VH:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final Zo:Lcom/google/android/gms/ads/internal/C;

.field private gn:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final j6:Ljava/lang/Object;

.field private tp:Lcom/google/android/gms/internal/ads/Ol;

.field private final u7:Landroid/util/DisplayMetrics;

.field private final v5:Lcom/google/android/gms/internal/ads/D;

.field private we:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/C;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->j6:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ug;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ug;->FH:Lcom/google/android/gms/internal/ads/ix;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ug;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ug;->v5:Lcom/google/android/gms/internal/ads/D;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    new-instance p2, Lcom/google/android/gms/internal/ads/Ol;

    const-wide/16 p3, 0xc8

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/Ol;-><init>(J)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ug;->tp:Lcom/google/android/gms/internal/ads/Ol;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ug;->u7:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private final DW(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->gn:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/ch;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ch;-><init>(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->gn:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ug;->gn:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p1
.end method

.method private final j6(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->VH:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/bh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bh;-><init>(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->VH:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ug;->VH:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ug;)Lcom/google/android/gms/ads/internal/C;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    return-object p0
.end method

.method private final j6()Lcom/google/android/gms/internal/ads/Mo;
    .registers 12

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->DW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    const-string v2, "native-video"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Ug;->FH:Lcom/google/android/gms/internal/ads/ix;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Ug;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Ug;->v5:Lcom/google/android/gms/internal/ads/D;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v9}, Lcom/google/android/gms/ads/internal/a;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/Ug;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 5

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->we:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->J0:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vo;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->QX:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->J8:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->VH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/videoClicked"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->gn:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/_g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/_g;-><init>(Lcom/google/android/gms/internal/ads/Ug;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ah;-><init>(Lcom/google/android/gms/internal/ads/Ug;)V

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    if-eqz p2, :cond_55

    new-instance p2, Lcom/google/android/gms/ads/internal/gmsg/c;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;)V

    const-string v0, "/open"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_55
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ug;->j6(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private final j6(Ljava/lang/ref/WeakReference;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz p1, :cond_5f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_5f

    :cond_12
    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->tp:Lcom/google/android/gms/internal/ads/Ol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ol;->j6()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->u7:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ug;->u7:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ug;->j6:Ljava/lang/Object;

    monitor-enter v2

    :try_start_42
    iget v4, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    if-ne v4, v0, :cond_4a

    iget v4, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    if-eq v4, v1, :cond_5a

    :cond_4a
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    xor-int/2addr p2, v3

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/tp;->j6(IIZ)V

    :cond_5a
    monitor-exit v2

    return-void

    :catchall_5c
    move-exception p1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_5c

    throw p1

    :cond_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method final synthetic DW(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/C;->eQ()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/C;->eQ()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(ZLcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ug;->j6()Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v1

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->Hw()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    :goto_b
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    goto :goto_14

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->FH()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    goto :goto_b

    :goto_14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/Mo;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Ug;->j6(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Ug;->DW(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/Ug;->j6(Lcom/google/android/gms/internal/ads/Mo;Z)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/Xg;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/Xg;-><init>(Lcom/google/android/gms/internal/ads/Ug;Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    invoke-interface {v1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    const-string p3, "Exception occurred while getting video view"

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(ZLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 8

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ug;->j6()Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->Hw()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    :goto_a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    goto :goto_13

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->FH()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    goto :goto_a

    :goto_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/Mo;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ug;->j6(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ug;->DW(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/tp;->j6(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ug;->j6(Lcom/google/android/gms/internal/ads/Mo;Z)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/Yg;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/ads/Yg;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lorg/json/JSONObject;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/vp;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Zg;

    invoke-direct {p2, p0, p3, v0}, Lcom/google/android/gms/internal/ads/Zg;-><init>(Lcom/google/android/gms/internal/ads/Ug;Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->HO:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Mo;->loadUrl(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p1

    const-string p2, "Exception occurred while getting video view"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method
