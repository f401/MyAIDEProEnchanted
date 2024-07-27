.class public final Lcom/google/android/gms/internal/ads/va;
.super Lcom/google/android/gms/internal/ads/La;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/Aa;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:[Ljava/lang/String;


# instance fields
.field private final DW:Ljava/lang/Object;

.field private EQ:Landroid/graphics/Point;

.field private final FH:Landroid/widget/FrameLayout;

.field private Hw:Landroid/widget/FrameLayout;

.field private VH:Landroid/view/View;

.field private Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private gn:Lcom/google/android/gms/internal/ads/ia;

.field private tp:Landroid/graphics/Point;

.field private u7:Z

.field private v5:Landroid/view/View;

.field private we:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/PE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2011"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1009"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3010"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/va;->j6:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/La;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/va;->u7:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/o;->gn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    return-void
.end method

.method private final FH(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final J0(I)I
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final FH(Labcd/ox;I)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PE;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PE;->j6()V

    :cond_0
    return-void
.end method

.method public final Hw(Labcd/ox;)V
    .registers 14

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v9

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/va;->FH(Landroid/view/View;)V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ma;

    if-nez v2, :cond_0

    const-string v1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/va;->u7:Z

    check-cast v1, Lcom/google/android/gms/internal/ads/ma;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v2, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ma;->FH()Lcom/google/android/gms/internal/ads/_j;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/PE;

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/PE;->DW(Lcom/google/android/gms/internal/ads/TE;)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v2, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ha;->Hw()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v2, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ha;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-nez v2, :cond_6

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/ha;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/ha;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ma;->x6()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-eqz v2, :cond_f

    move v4, v8

    :goto_2
    if-ge v4, v11, :cond_f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "1098"

    aput-object v10, v2, v6

    const/4 v6, 0x1

    const-string v10, "3011"

    aput-object v10, v2, v6

    aget-object v2, v2, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :goto_3
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_10

    check-cast v2, Landroid/view/ViewGroup;

    move-object v4, v2

    :goto_4
    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    move v2, v3

    :goto_5
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v6, "1007"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v2, :cond_12

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    if-nez v2, :cond_9

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ma;->j6()Lcom/google/android/gms/internal/ads/Mo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_b

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ma;->j6(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-eqz v2, :cond_17

    sget-object v5, Lcom/google/android/gms/internal/ads/va;->j6:[Ljava/lang/String;

    array-length v6, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v3, v8

    :goto_8
    if-ge v3, v6, :cond_17

    aget-object v2, v5, v3

    :try_start_5
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :goto_9
    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-nez v3, :cond_15

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_a
    :try_start_6
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/ma;->j6(Lcom/google/android/gms/internal/ads/Aa;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ma;->Hw(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/va;->FH(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v1, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/PE;

    if-nez v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/ads/PE;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/PE;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ma;->FH()Lcom/google/android/gms/internal/ads/_j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    :cond_d
    monitor-exit v9

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    :cond_f
    move-object v2, v7

    goto/16 :goto_3

    :cond_10
    move-object v4, v7

    goto/16 :goto_4

    :cond_11
    move v2, v8

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-direct {v3, v2}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Vk;->j6()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v2, "Privileged processes cannot create HTML overlays."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_b
    move-object v2, v7

    goto/16 :goto_7

    :cond_13
    const-string v3, "Error obtaining overlay."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    :cond_14
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_8

    :cond_15
    :try_start_7
    new-instance v3, Lcom/google/android/gms/internal/ads/wa;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/wa;-><init>(Lcom/google/android/gms/internal/ads/va;Landroid/view/View;)V

    instance-of v5, v1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v5, :cond_16

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ma;->DW(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)Z

    :goto_c
    monitor-exit v4

    goto/16 :goto_a

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_16
    :try_start_9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_c

    :cond_17
    move-object v2, v7

    goto/16 :goto_9
.end method

.method public final aM()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/lang/String;Labcd/ox;)V
    .registers 7

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "1098"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3011"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    monitor-exit v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final lg(Ljava/lang/String;)Labcd/ox;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-nez v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->Xa()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "x"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "y"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "start_x"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "start_y"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    const-string v2, "1007"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    :cond_1
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    const-string v2, "1007"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-interface {v0, p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final onGlobalLayout()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onScrollChanged()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return v6

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    aget v3, v0, v6

    int-to-float v3, v3

    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v5, 0x1

    aget v0, v0, v5

    int-to-float v0, v0

    :try_start_2
    new-instance v5, Landroid/graphics/Point;

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sub-float v0, v4, v0

    float-to-int v0, v0

    invoke-direct {v5, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget v2, v5, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final tR()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v5(Labcd/ox;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;)V

    return-void
.end method
