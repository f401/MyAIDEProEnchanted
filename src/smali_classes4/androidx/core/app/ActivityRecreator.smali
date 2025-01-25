.class final Landroidx/core/app/ActivityRecreator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityRecreator"

.field protected static final activityThreadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;

.field protected static final mainThreadField:Ljava/lang/reflect/Field;

.field protected static final performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

.field protected static final tokenField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getMainThreadField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getTokenField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    sget-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityThreadClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    move-result-object v0

    :goto_6
    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static getMainThreadField()Ljava/lang/reflect/Field;
    .registers 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :goto_c
    return-object v0

    :catchall_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1d

    move-object v0, v1

    goto :goto_3

    :catchall_1d
    move-exception v1

    goto :goto_3
.end method

.method private static getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    move-object v0, v1

    goto :goto_3

    :catchall_22
    move-exception v1

    goto :goto_3
.end method

.method private static getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_a

    :cond_8
    :goto_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    :try_start_a
    const-string v0, "requestRelaunchActivity"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Landroid/content/res/Configuration;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Landroid/content/res/Configuration;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_47

    goto :goto_9

    :catchall_47
    move-exception v0

    goto :goto_8
.end method

.method private static getTokenField()Ljava/lang/reflect/Field;
    .registers 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :goto_c
    return-object v0

    :catchall_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static needsRelaunchCall()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected static queueOnStopIfNecessary(Ljava/lang/Object;Landroid/app/Activity;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_a

    :goto_9
    return v0

    :cond_a
    sget-object v2, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/app/ActivityRecreator$3;

    invoke-direct {v4, v2, v1}, Landroidx/core/app/ActivityRecreator$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    const/4 v0, 0x1

    goto :goto_9

    :catchall_1c
    move-exception v1

    const-string v2, "ActivityRecreator"

    const-string v3, "Exception while fetching field values"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method static recreate(Landroid/app/Activity;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_b
    return v0

    :cond_c
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_18

    move v0, v1

    goto :goto_b

    :cond_18
    sget-object v2, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_22

    sget-object v2, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_22

    move v0, v1

    goto :goto_b

    :cond_22
    :try_start_22
    sget-object v2, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2c

    move v0, v1

    goto :goto_b

    :cond_2c
    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_36

    move v0, v1

    goto :goto_b

    :cond_36
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    invoke-direct {v5, p0}, Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v6, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/app/ActivityRecreator$1;

    invoke-direct {v7, v5, v2}, Landroidx/core/app/ActivityRecreator$1;-><init>(Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_9b

    :try_start_4c
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v6

    if-eqz v6, :cond_9f

    sget-object v6, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    const/4 v8, 0x0

    aput-object v8, v7, v2

    const/4 v2, 0x2

    const/4 v8, 0x0

    aput-object v8, v7, v2

    const/4 v2, 0x3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x4

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x5

    const/4 v8, 0x0

    aput-object v8, v7, v2

    const/4 v2, 0x6

    const/4 v8, 0x0

    aput-object v8, v7, v2

    const/4 v2, 0x7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0x8

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_4c .. :try_end_8f} :catchall_a3

    :goto_8f
    :try_start_8f
    sget-object v2, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/core/app/ActivityRecreator$2;

    invoke-direct {v3, v4, v5}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_9b

    goto/16 :goto_b

    :catchall_9b
    move-exception v0

    move v0, v1

    goto/16 :goto_b

    :cond_9f
    :try_start_9f
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_8f

    :catchall_a3
    move-exception v0

    :try_start_a4
    sget-object v2, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/core/app/ActivityRecreator$2;

    invoke-direct {v3, v4, v5}, Landroidx/core/app/ActivityRecreator$2;-><init>(Landroid/app/Application;Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_af
    .catchall {:try_start_a4 .. :try_end_af} :catchall_9b
.end method
