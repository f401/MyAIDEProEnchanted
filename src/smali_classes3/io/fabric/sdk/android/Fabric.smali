.class public Lio/fabric/sdk/android/Fabric;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/Fabric$Builder;
    }
.end annotation


# static fields
.field static final ANSWERS_KIT_IDENTIFIER:Ljava/lang/String; = "com.crashlytics.sdk.android:answers"

.field static final CRASHLYTICS_KIT_IDENTIFIER:Ljava/lang/String; = "com.crashlytics.sdk.android:crashlytics"

.field static final DEFAULT_DEBUGGABLE:Z = false

.field static final DEFAULT_LOGGER:Lio/fabric/sdk/android/m;

.field static final ROOT_DIR:Ljava/lang/String; = ".Fabric"

.field public static final TAG:Ljava/lang/String; = "Fabric"

.field static volatile singleton:Lio/fabric/sdk/android/Fabric;


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

.field private final context:Landroid/content/Context;

.field final debuggable:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final idManager:Lio/fabric/sdk/android/services/common/v;

.field private final initializationCallback:Lio/fabric/sdk/android/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/h<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kitInitializationCallback:Lio/fabric/sdk/android/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/h<",
            "*>;"
        }
    .end annotation
.end field

.field private final kits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field final logger:Lio/fabric/sdk/android/m;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/fabric/sdk/android/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/b;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/Fabric;->DEFAULT_LOGGER:Lio/fabric/sdk/android/m;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Labcd/kz;Landroid/os/Handler;Lio/fabric/sdk/android/m;ZLio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/common/v;Landroid/app/Activity;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Labcd/kz;",
            "Landroid/os/Handler;",
            "Lio/fabric/sdk/android/m;",
            "Z",
            "Lio/fabric/sdk/android/h;",
            "Lio/fabric/sdk/android/services/common/v;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    iput-object p3, p0, Lio/fabric/sdk/android/Fabric;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lio/fabric/sdk/android/Fabric;->mainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lio/fabric/sdk/android/Fabric;->logger:Lio/fabric/sdk/android/m;

    iput-boolean p6, p0, Lio/fabric/sdk/android/Fabric;->debuggable:Z

    iput-object p7, p0, Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/Fabric;->createKitInitializationCallback(I)Lio/fabric/sdk/android/h;

    move-result-object p1

    iput-object p1, p0, Lio/fabric/sdk/android/Fabric;->kitInitializationCallback:Lio/fabric/sdk/android/h;

    iput-object p8, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {p0, p9}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lio/fabric/sdk/android/Fabric;->getKitMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/app/Activity;
    .registers 1

    invoke-static {p0}, Lio/fabric/sdk/android/Fabric;->extractActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/fabric/sdk/android/Fabric;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/h;
    .registers 1

    iget-object p0, p0, Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/h;

    return-object p0
.end method

.method private static addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Lio/fabric/sdk/android/k;

    if-eqz v1, :cond_4

    check-cast v0, Lio/fabric/sdk/android/k;

    invoke-interface {v0}, Lio/fabric/sdk/android/k;->getKits()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_4

    :cond_25
    return-void
.end method

.method private static extractActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/fabric/sdk/android/Kit;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->singleton()Lio/fabric/sdk/android/Fabric;

    move-result-object v0

    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/Kit;

    return-object p0
.end method

.method private static getKitMap(Ljava/util/Collection;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, p0}, Lio/fabric/sdk/android/Fabric;->addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getLogger()Lio/fabric/sdk/android/m;
    .registers 1

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_7

    sget-object v0, Lio/fabric/sdk/android/Fabric;->DEFAULT_LOGGER:Lio/fabric/sdk/android/m;

    return-object v0

    :cond_7
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->logger:Lio/fabric/sdk/android/m;

    return-object v0
.end method

.method private init()V
    .registers 3

    new-instance v0, Lio/fabric/sdk/android/ActivityLifecycleManager;

    iget-object v1, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/ActivityLifecycleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    new-instance v1, Lio/fabric/sdk/android/c;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/c;-><init>(Lio/fabric/sdk/android/Fabric;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/ActivityLifecycleManager;->j6(Lio/fabric/sdk/android/ActivityLifecycleManager$b;)Z

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/Fabric;->initializeKits(Landroid/content/Context;)V

    return-void
.end method

.method public static isDebuggable()Z
    .registers 1

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-boolean v0, v0, Lio/fabric/sdk/android/Fabric;->debuggable:Z

    return v0
.end method

.method public static isInitialized()Z
    .registers 1

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-eqz v0, :cond_10

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static setFabric(Lio/fabric/sdk/android/Fabric;)V
    .registers 1

    sput-object p0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    invoke-direct {p0}, Lio/fabric/sdk/android/Fabric;->init()V

    return-void
.end method

.method static singleton()Lio/fabric/sdk/android/Fabric;
    .registers 2

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-eqz v0, :cond_7

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;
    .registers 3

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_24

    const-class v0, Lio/fabric/sdk/android/Fabric;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_1b

    new-instance v0, Lio/fabric/sdk/android/Fabric$Builder;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/Fabric$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Fabric$Builder;->j6([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric$Builder;->j6()Lio/fabric/sdk/android/Fabric;

    move-result-object p0

    invoke-static {p0}, Lio/fabric/sdk/android/Fabric;->setFabric(Lio/fabric/sdk/android/Fabric;)V

    :cond_1b
    const-class p0, Lio/fabric/sdk/android/Fabric;

    monitor-exit p0

    goto :goto_24

    :catchall_1f
    move-exception p0

    const-class p1, Lio/fabric/sdk/android/Fabric;

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1f

    throw p0

    :cond_24
    :goto_24
    sget-object p0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    return-object p0
.end method

.method public static with(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/Fabric;
    .registers 2

    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_17

    const-class v0, Lio/fabric/sdk/android/Fabric;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_e

    invoke-static {p0}, Lio/fabric/sdk/android/Fabric;->setFabric(Lio/fabric/sdk/android/Fabric;)V

    :cond_e
    const-class p0, Lio/fabric/sdk/android/Fabric;

    monitor-exit p0

    goto :goto_17

    :catchall_12
    move-exception p0

    const-class v0, Lio/fabric/sdk/android/Fabric;

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_12

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    return-object p0
.end method


# virtual methods
.method addAnnotatedDependencies(Ljava/util/Map;Lio/fabric/sdk/android/Kit;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lio/fabric/sdk/android/Kit;->dependsOnAnnotation:Labcd/bz;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Labcd/bz;->value()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_5a

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/fabric/sdk/android/Kit;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p2, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/j;

    iget-object v5, v5, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-virtual {v6, v5}, Labcd/ez;->j6(Labcd/lz;)V

    goto :goto_1c

    :cond_3a
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/Kit;

    if-eqz v4, :cond_52

    iget-object v4, p2, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/Kit;

    iget-object v3, v3, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-virtual {v4, v3}, Labcd/ez;->j6(Labcd/lz;)V

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_52
    new-instance p1, Labcd/mz;

    const-string p2, "Referenced Kit was null, does the kit exist?"

    invoke-direct {p1, p2}, Labcd/mz;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    return-void
.end method

.method createKitInitializationCallback(I)Lio/fabric/sdk/android/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/fabric/sdk/android/h<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lio/fabric/sdk/android/d;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/d;-><init>(Lio/fabric/sdk/android/Fabric;I)V

    return-object v0
.end method

.method public getActivityLifecycleManager()Lio/fabric/sdk/android/ActivityLifecycleManager;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    return-object v0
.end method

.method public getAppIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstallIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getKitsFinderFuture(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/fabric/sdk/android/f;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getMainHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.4.8.32"

    return-object v0
.end method

.method initializeKits(Landroid/content/Context;)V
    .registers 9

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/Fabric;->getKitsFinderFuture(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric;->getKits()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lio/fabric/sdk/android/n;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/n;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v1, Lio/fabric/sdk/android/h;->j6:Lio/fabric/sdk/android/h;

    iget-object v3, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v2, p1, p0, v1, v3}, Lio/fabric/sdk/android/Kit;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/common/v;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/Kit;

    iget-object v4, p0, Lio/fabric/sdk/android/Fabric;->kitInitializationCallback:Lio/fabric/sdk/android/h;

    iget-object v5, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v3, p1, p0, v4, v5}, Lio/fabric/sdk/android/Kit;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/common/v;)V

    goto :goto_20

    :cond_34
    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->initialize()V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const/4 v1, 0x3

    const-string v3, "Fabric"

    invoke-interface {p1, v3, v1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;I)Z

    move-result p1

    const-string v1, " [Version: "

    if-eqz p1, :cond_64

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Initializing "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Fabric;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], with the following kits:\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    :cond_64
    const/4 p1, 0x0

    :goto_65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_69
    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/Kit;

    iget-object v5, v4, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/j;

    iget-object v6, v2, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-virtual {v5, v6}, Labcd/ez;->j6(Labcd/lz;)V

    iget-object v5, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-virtual {p0, v5, v4}, Lio/fabric/sdk/android/Fabric;->addAnnotatedDependencies(Ljava/util/Map;Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v4}, Lio/fabric/sdk/android/Kit;->initialize()V

    if-eqz p1, :cond_69

    invoke-virtual {v4}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    :cond_9d
    if-eqz p1, :cond_aa

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->activity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
