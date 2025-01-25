.class public final Lcom/google/android/gms/internal/ads/xa;
.super Lcom/google/android/gms/internal/ads/Qa;

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
.field static final j6:[Ljava/lang/String;


# instance fields
.field private final DW:Ljava/lang/Object;

.field private EQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/PE;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/Map;
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

.field private VH:Lcom/google/android/gms/internal/ads/ia;

.field private final Zo:Ljava/util/Map;
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

.field private gn:Landroid/view/View;

.field private tp:Landroid/graphics/Point;

.field private u7:Landroid/graphics/Point;

.field private final v5:Ljava/util/Map;
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

    sput-object v0, Lcom/google/android/gms/internal/ads/xa;->j6:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qa;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->Hw:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->v5:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->u7:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->tp:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->EQ:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_56
    :goto_56
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_56

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->Hw:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "1098"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "3011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_56

    :cond_95
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->Hw:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a4
    :goto_a4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_cc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->v5:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_a4

    :cond_cc
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/xa;->v5:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    return-void
.end method

.method private final FH(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_16

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v2, :cond_11

    check-cast v1, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    :cond_11
    if-eqz v1, :cond_16

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->DW(Landroid/view/View;)V

    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private final J0(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ia;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/ma;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/xa;->j6:[Ljava/lang/String;

    array-length v2, v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3b

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    :try_start_b
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_20

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_29

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ma;->Vq()V

    monitor-exit v0

    return-void

    :cond_29
    new-instance v2, Lcom/google/android/gms/internal/ads/za;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/za;-><init>(Lcom/google/android/gms/internal/ads/xa;Landroid/view/View;)V

    instance-of v3, p1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v3, :cond_36

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/ma;->DW(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)Z

    goto :goto_39

    :cond_36
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)V

    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3b

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/xa;Lcom/google/android/gms/internal/ads/ma;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xa;->j6(Lcom/google/android/gms/internal/ads/ma;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/xa;[Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xa;->j6([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final j6([Ljava/lang/String;)Z
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xa;->Hw:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    array-length v0, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_26

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xa;->v5:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    return v1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    return v1
.end method


# virtual methods
.method public final Fd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->gn:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->u7:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->tp:Landroid/graphics/Point;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final Hw(Labcd/ox;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/xa;->FH(Landroid/view/View;)V

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/ma;

    if-nez v2, :cond_16

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_16
    check-cast p1, Lcom/google/android/gms/internal/ads/ma;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ma;->tj()Z

    move-result v2

    if-nez v2, :cond_25

    const-string p1, "Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v2, :cond_39

    if-eqz v7, :cond_39

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    invoke-interface {v2, v7, v3}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;)V

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_179

    :try_start_3c
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/ma;

    const/4 v5, 0x0

    if-nez v4, :cond_45

    :cond_43
    :goto_43
    monitor-exit v2

    goto :goto_80

    :cond_45
    check-cast v3, Lcom/google/android/gms/internal/ads/ma;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_43

    if-eqz v4, :cond_43

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ma;->FH()Lcom/google/android/gms/internal/ads/_j;

    move-result-object v3

    if-eqz v3, :cond_70

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/_j;->j6(Z)V

    :cond_70
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xa;->EQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/PE;

    if-eqz v4, :cond_43

    if-eqz v3, :cond_43

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/PE;->DW(Lcom/google/android/gms/internal/ads/TE;)V
    :try_end_7f
    .catchall {:try_start_3c .. :try_end_7f} :catchall_176

    goto :goto_43

    :goto_80
    :try_start_80
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v3, :cond_96

    check-cast v2, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ha;->Hw()Z

    move-result v2

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    check-cast v2, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/ha;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    goto :goto_a2

    :cond_96
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v2, :cond_a2

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ha;->j6(Lcom/google/android/gms/internal/ads/ia;)V

    :cond_a2
    :goto_a2
    const/4 v2, 0x0

    :goto_a3
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_c7

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "1098"

    aput-object v6, v3, v5

    const-string v6, "3011"

    aput-object v6, v3, v4

    aget-object v3, v3, v2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_c4

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_c8

    :cond_c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_c7
    move-object v2, v1

    :goto_c8
    if-nez v2, :cond_d0

    const-string v1, "Ad choices asset view is not provided."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_105

    :cond_d0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_d7

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_d7
    if-eqz v1, :cond_105

    invoke-virtual {p1, p0, v4}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->gn:Landroid/view/View;

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xa;->gn:Landroid/view/View;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v4, "1007"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->Hw:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xa;->gn:Landroid/view/View;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v4, "1007"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->gn:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_105
    :goto_105
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xa;->Hw:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xa;->v5:Ljava/util/Map;

    move-object v1, p1

    move-object v2, v7

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/ya;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/ya;-><init>(Lcom/google/android/gms/internal/ads/xa;Lcom/google/android/gms/internal/ads/ma;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/xa;->FH(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter p1
    :try_end_125
    .catchall {:try_start_80 .. :try_end_125} :catchall_179

    :try_start_125
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ma;

    if-nez v2, :cond_12d

    :cond_12b
    :goto_12b
    monitor-exit p1

    goto :goto_171

    :cond_12d
    check-cast v1, Lcom/google/android/gms/internal/ads/ma;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v1, :cond_12b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ma;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_12b

    if-eqz v2, :cond_12b

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xa;->EQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/PE;

    if-nez v3, :cond_169

    new-instance v3, Lcom/google/android/gms/internal/ads/PE;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/ads/PE;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->EQ:Ljava/lang/ref/WeakReference;

    :cond_169
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ma;->FH()Lcom/google/android/gms/internal/ads/_j;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V
    :try_end_170
    .catchall {:try_start_125 .. :try_end_170} :catchall_173

    goto :goto_12b

    :goto_171
    :try_start_171
    monitor-exit v0
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_179

    return-void

    :catchall_173
    move-exception v1

    :try_start_174
    monitor-exit p1
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    :try_start_175
    throw v1
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_179

    :catchall_176
    move-exception p1

    :try_start_177
    monitor-exit v2
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    :try_start_178
    throw p1

    :catchall_179
    move-exception p1

    monitor-exit v0
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_179

    goto :goto_17d

    :goto_17c
    throw p1

    :goto_17d
    goto :goto_17c
.end method

.method public final aM()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    if-nez v7, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->u7:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/xa;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->u7:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/xa;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->tp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/xa;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->tp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/xa;->J0(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->gn:Landroid/view/View;

    if-eqz v1, :cond_82

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    instance-of v1, v2, Lcom/google/android/gms/internal/ads/ha;

    if-eqz v1, :cond_7d

    check-cast v2, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    check-cast v1, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ha;->v5()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v2

    const-string v4, "1007"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    :goto_77
    const/4 v8, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    goto :goto_89

    :cond_7d
    const-string v4, "1007"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    goto :goto_77

    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    invoke-interface {v1, p1, v2, v5, v7}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    :cond_89
    :goto_89
    monitor-exit v0

    return-void

    :catchall_8b
    move-exception p1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    goto :goto_8f

    :goto_8e
    throw p1

    :goto_8f
    goto :goto_8e
.end method

.method public final onGlobalLayout()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;Ljava/util/Map;)V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final onScrollChanged()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ia;->FH(Landroid/view/View;Ljava/util/Map;)V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p1

    return v1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_16

    monitor-exit p1

    return v1

    :cond_16
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_55

    aget v3, v2, v1

    int-to-float v3, v3

    :try_start_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_55

    const/4 v5, 0x1

    aget v2, v2, v5

    int-to-float v2, v2

    :try_start_2b
    new-instance v5, Landroid/graphics/Point;

    sub-float/2addr v0, v3

    float-to-int v0, v0

    sub-float/2addr v4, v2

    float-to-int v2, v4

    invoke-direct {v5, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/xa;->u7:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3e

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/xa;->tp:Landroid/graphics/Point;

    :cond_3e
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v0, v5, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, v5, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit p1

    return v1

    :catchall_55
    move-exception p2

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_2b .. :try_end_57} :catchall_55

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->Zo:Ljava/util/Map;
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
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xa;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xa;->VH:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ia;->j6(Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method
