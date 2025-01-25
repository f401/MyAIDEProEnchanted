.class Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnhandledKeyEventManager"
.end annotation


# static fields
.field private static final sViewsWithListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCapturedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsContainingListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .registers 3

    sget v0, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    if-nez v0, :cond_14

    new-instance v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;-><init>()V

    sget v1, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return-object p1

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1a
    if-ltz v2, :cond_2c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_28

    move-object p1, v1

    goto :goto_b

    :cond_28
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1a

    :cond_2c
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_b
.end method

.method private getCapturedKeys()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    :cond_b
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    return-object v0
.end method

.method private onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 6

    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_11
    if-ltz v2, :cond_25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {v1, p1, p2}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_11

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private recalcViewsWithUnhandled()V
    .registers 8

    iget-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    :cond_7
    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return-void

    :cond_10
    sget-object v4, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_13
    iget-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1e

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    :cond_1e
    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_27
    if-ltz v3, :cond_61

    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_42

    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_27

    :cond_42
    iget-object v2, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_4d
    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_3e

    iget-object v5, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_4d

    :cond_61
    monitor-exit v4

    goto :goto_f

    :catchall_63
    move-exception v1

    monitor-exit v4
    :try_end_65
    .catchall {:try_start_13 .. :try_end_65} :catchall_63

    throw v1
.end method

.method static registerListeningView(Landroid/view/View;)V
    .registers 4

    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_9

    monitor-exit v1

    :goto_1c
    return-void

    :cond_1d
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1c

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method static unregisterListeningView(Landroid/view/View;)V
    .registers 4

    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_22

    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v2

    :goto_21
    return-void

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_26
    monitor-exit v2

    goto :goto_21

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0
.end method


# virtual methods
.method dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->recalcViewsWithUnhandled()V

    :cond_9
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eqz v0, :cond_2b

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2b
    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method preDispatch(Landroid/view/KeyEvent;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_33

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_33

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_33
    if-nez v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    :cond_3f
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_52

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-direct {p0, v0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    :cond_52
    move v0, v2

    goto :goto_d

    :cond_54
    move v0, v1

    goto :goto_d
.end method
