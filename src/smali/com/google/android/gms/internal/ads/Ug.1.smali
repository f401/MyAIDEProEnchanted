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
    .registers 10

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->j6:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ug;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ug;->FH:Lcom/google/android/gms/internal/ads/ix;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ug;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ug;->v5:Lcom/google/android/gms/internal/ads/D;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ol;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Ol;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->tp:Lcom/google/android/gms/internal/ads/Ol;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->u7:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private final DW(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->gn:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/ch;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ch;-><init>(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->gn:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->gn:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method private final j6(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->VH:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/bh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bh;-><init>(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->VH:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->VH:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ug;)Lcom/google/android/gms/ads/internal/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    return-object v0
.end method

.method private final j6()Lcom/google/android/gms/internal/ads/Mo;
    .registers 12

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->DW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    const-string v2, "native-video"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Ug;->FH:Lcom/google/android/gms/internal/ads/ix;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ug;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Ug;->v5:Lcom/google/android/gms/internal/ads/D;

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/a;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v9

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ug;->Hw:Lcom/google/android/gms/internal/ads/lk;

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    move v4, v3

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->we:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->J0:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/precache"

    new-instance v1, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/vo;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

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

    const-string v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/ads/_g;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/_g;-><init>(Lcom/google/android/gms/internal/ads/Ug;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/untrackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ah;-><init>(Lcom/google/android/gms/internal/ads/Ug;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    if-eqz p2, :cond_0

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/c;

    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_0
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ug;Ljava/lang/ref/WeakReference;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ug;->j6(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private final j6(Ljava/lang/ref/WeakReference;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ug;->tp:Lcom/google/android/gms/internal/ads/Ol;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ol;->j6()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ug;->u7:Landroid/util/DisplayMetrics;

    aget v5, v4, v2

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Ug;->u7:Landroid/util/DisplayMetrics;

    aget v4, v4, v1

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Ug;->j6:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    if-ne v6, v3, :cond_3

    iget v6, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    if-eq v6, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/Ug;->EQ:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/Ug;->we:I

    if-nez p2, :cond_5

    move v0, v1

    :goto_1
    invoke-interface {v3, v4, v6, v0}, Lcom/google/android/gms/internal/ads/tp;->j6(IIZ)V

    :cond_4
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method final synthetic DW(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/C;->eQ()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/C;->eQ()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic j6(ZLcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ug;->j6()Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->Hw()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    :goto_0
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

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/Xg;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/Xg;-><init>(Lcom/google/android/gms/internal/ads/Ug;Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    const/4 v1, 0x0

    invoke-interface {v0, p3, p4, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->FH()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method final synthetic j6(ZLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 8

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ug;->j6()Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->Hw()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ug;->Zo:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/Mo;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ug;->j6(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ug;->DW(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/tp;->j6(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/Ug;->j6(Lcom/google/android/gms/internal/ads/Mo;Z)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/Yg;

    invoke-direct {v2, v1, p2}, Lcom/google/android/gms/internal/ads/Yg;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lorg/json/JSONObject;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/vp;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/Zg;

    invoke-direct {v2, p0, p3, v1}, Lcom/google/android/gms/internal/ads/Zg;-><init>(Lcom/google/android/gms/internal/ads/Ug;Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Mo;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->HO:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->FH()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Lcom/google/android/gms/internal/ads/yp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    goto :goto_1
.end method
