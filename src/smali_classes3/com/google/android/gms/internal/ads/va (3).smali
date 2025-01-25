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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
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
            "Ljava/lang/ref/WeakReference<",
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

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_52

    invoke-static {}, Lcom/google/android/gms/common/util/o;->gn()Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    :cond_52
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    return-void
.end method

.method private final FH(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    :cond_e
    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method private final J0(I)I
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final FH(Labcd/ox;I)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/PE;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/PE;->j6()V

    :cond_1f
    return-void
.end method

.method public final Hw(Labcd/ox;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/va;->FH(Landroid/view/View;)V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/ma;

    if-nez v2, :cond_16

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_16
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/va;->u7:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/ma;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v3, :cond_26

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;)V

    :cond_26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/ma;

    const/4 v9, 0x0

    if-eqz v4, :cond_5f

    check-cast v3, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ma;->FH()Lcom/google/android/gms/internal/ads/_j;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_50
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/PE;

    if-eqz v4, :cond_5f

    if-eqz v3, :cond_5f

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/PE;->DW(Lcom/google/android/gms/internal/ads/TE;)V

    :cond_5f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v4, :cond_75

    check-cast v3, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ha;->Hw()Z

    move-result v3

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v3, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/ha;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto :goto_81

    :cond_75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v3, p1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v3, :cond_81

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/ha;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    :cond_81
    :goto_81
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-nez v3, :cond_87

    monitor-exit v0

    return-void

    :cond_87
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ma;->x6()Z

    move-result v3

    if-eqz v3, :cond_c5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-eqz v4, :cond_bd

    const/4 v4, 0x0

    :goto_9a
    const/4 v5, 0x2

    if-ge v4, v5, :cond_bd

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1098"

    aput-object v6, v5, v9

    const-string v6, "3011"

    aput-object v6, v5, v2

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_ba

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_be

    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a

    :cond_bd
    move-object v4, v1

    :goto_be
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_c5

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_c6

    :cond_c5
    move-object v4, v1

    :goto_c6
    if-eqz v3, :cond_cb

    if-eqz v4, :cond_cb

    goto :goto_cc

    :cond_cb
    const/4 v2, 0x0

    :goto_cc
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    const/4 v10, -0x1

    if-eqz v3, :cond_10d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-eqz v3, :cond_e5

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v6, "1007"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e5
    if-eqz v2, :cond_f0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_10d

    :cond_f0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-direct {v3, v2}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_10d

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_10d
    :goto_10d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    if-nez v2, :cond_131

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_131
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v2, v3, :cond_142

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_142
    .catchall {:try_start_4 .. :try_end_142} :catchall_206

    :cond_142
    :try_start_142
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ma;->j6()Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v2
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_146} :catch_147
    .catchall {:try_start_142 .. :try_end_146} :catchall_206

    goto :goto_15d

    :catch_147
    move-exception v2

    :try_start_148
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Vk;->j6()Z

    move-result v3

    if-eqz v3, :cond_157

    const-string v2, "Privileged processes cannot create HTML overlays."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_15c

    :cond_157
    const-string v3, "Error obtaining overlay."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15c
    move-object v2, v1

    :goto_15d
    if-eqz v2, :cond_16a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_16a

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_16a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16d
    .catchall {:try_start_148 .. :try_end_16d} :catchall_206

    :try_start_16d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/ma;->j6(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-eqz v3, :cond_191

    sget-object v3, Lcom/google/android/gms/internal/ads/va;->j6:[Ljava/lang/String;

    array-length v4, v3
    :try_end_179
    .catchall {:try_start_16d .. :try_end_179} :catchall_203

    :goto_179
    if-ge v9, v4, :cond_191

    aget-object v5, v3, v9

    :try_start_17d
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_18e

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_191

    :cond_18e
    add-int/lit8 v9, v9, 0x1

    goto :goto_179

    :cond_191
    :goto_191
    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-nez v3, :cond_197

    :goto_195
    monitor-exit v2

    goto :goto_1a8

    :cond_197
    new-instance v3, Lcom/google/android/gms/internal/ads/wa;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/wa;-><init>(Lcom/google/android/gms/internal/ads/va;Landroid/view/View;)V

    instance-of v4, p1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v4, :cond_1a4

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/ma;->DW(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)Z

    goto :goto_195

    :cond_1a4
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)V
    :try_end_1a7
    .catchall {:try_start_17d .. :try_end_1a7} :catchall_203

    goto :goto_195

    :goto_1a8
    :try_start_1a8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/ma;->j6(Lcom/google/android/gms/internal/ads/Aa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ma;->Hw(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/va;->FH(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/ma;

    if-eqz v1, :cond_201

    check-cast p1, Lcom/google/android/gms/internal/ads/ma;

    if-eqz p1, :cond_201

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_201

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_201

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/PE;

    if-nez v1, :cond_1fa

    new-instance v1, Lcom/google/android/gms/internal/ads/PE;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/PE;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    :cond_1fa
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ma;->FH()Lcom/google/android/gms/internal/ads/_j;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    :cond_201
    monitor-exit v0
    :try_end_202
    .catchall {:try_start_1a8 .. :try_end_202} :catchall_206

    return-void

    :catchall_203
    move-exception p1

    :try_start_204
    monitor-exit v2
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_203

    :try_start_205
    throw p1

    :catchall_206
    move-exception p1

    monitor-exit v0
    :try_end_208
    .catchall {:try_start_205 .. :try_end_208} :catchall_206

    goto :goto_20a

    :goto_209
    throw p1

    :goto_20a
    goto :goto_209
.end method

.method public final aM()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final destroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->Hw:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->we:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/va;->v5:Landroid/view/View;

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final j6(Ljava/lang/String;Labcd/ox;)V
    .registers 6

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    if-nez p2, :cond_15

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_15
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1098"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "3011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_3a

    :cond_2e
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_38
    monitor-exit v0

    return-void

    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final lg(Ljava/lang/String;)Labcd/ox;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    :cond_a
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    :goto_1a
    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->Xa()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/va;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->VH:Landroid/view/View;

    if-eqz v1, :cond_7c

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v2, :cond_75

    check-cast v1, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    check-cast v1, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    const-string v3, "1007"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    :goto_6f
    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    goto :goto_85

    :cond_75
    const-string v3, "1007"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    goto :goto_6f

    :cond_7c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-interface {v1, p1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    :cond_85
    :goto_85
    monitor-exit v0

    return-void

    :catchall_87
    move-exception p1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    goto :goto_8b

    :goto_8a
    throw p1

    :goto_8b
    goto :goto_8a
.end method

.method public final onGlobalLayout()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;Ljava/util/Map;)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final onScrollChanged()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;Ljava/util/Map;)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/va;->DW:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p1

    return v1

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/va;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_4b

    aget v3, v0, v1

    int-to-float v3, v3

    :try_start_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_4b

    const/4 v5, 0x1

    aget v0, v0, v5

    int-to-float v0, v0

    :try_start_21
    new-instance v5, Landroid/graphics/Point;

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sub-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v5, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/va;->tp:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/va;->EQ:Landroid/graphics/Point;

    :cond_34
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v0, v5, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, v5, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit p1

    return v1

    :catchall_4b
    move-exception p2

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_4b

    throw p2
.end method

.method public final tR()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->Zo:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v5(Labcd/ox;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/va;->gn:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;)V

    return-void
.end method
