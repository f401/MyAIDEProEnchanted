.class public final Lcom/blankj/utilcode/util/ActivityUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;II)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Ljava/lang/Class;Z)V

    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishActivity(Ljava/lang/Class;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    if-nez p1, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishAllActivities()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishAllActivities(Z)V

    return-void
.end method

.method public static finishAllActivities(II)V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static finishAllActivities(Z)V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    if-nez p0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishAllActivitiesExceptNewest()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishAllActivitiesExceptNewest(Z)V

    return-void
.end method

.method public static finishAllActivitiesExceptNewest(II)V
    .registers 5

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static finishAllActivitiesExceptNewest(Z)V
    .registers 4

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishOtherActivities(Ljava/lang/Class;Z)V

    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static finishToActivity(Landroid/app/Activity;Z)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishToActivity(Landroid/app/Activity;ZZ)Z

    move-result v0

    return v0
.end method

.method public static finishToActivity(Landroid/app/Activity;ZII)Z
    .registers 7

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static finishToActivity(Landroid/app/Activity;ZZ)Z
    .registers 6

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static finishToActivity(Ljava/lang/Class;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishToActivity(Ljava/lang/Class;ZZ)Z

    move-result v0

    return v0
.end method

.method public static finishToActivity(Ljava/lang/Class;ZII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;ZII)Z"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static finishToActivity(Ljava/lang/Class;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;ZZ)Z"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private static getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    :cond_1
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_5

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.internal.policy.DecorContext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mActivityContext"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getActivityIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActivityIcon(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityLogo(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActivityLogo(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherActivity()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMainActivities()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getMainActivities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMainActivities(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    :goto_0
    return-object v0

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private static getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    new-array v2, v1, [Landroidx/core/util/Pair;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;
    .registers 4

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static getTopActivityOrApp()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .registers 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActivityAlive(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isActivityExists(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isActivityExistsInStack(Landroid/app/Activity;)Z
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActivityExistsInStack(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Intent;)Z
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 1

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;II)V
    .registers 6

    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivities([Landroid/content/Intent;)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivities([Landroid/content/Intent;II)V
    .registers 6

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private static startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;II)V
    .registers 6

    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0, p0, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v0, v1, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p1, p0, p2, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .registers 6

    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, p0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/Class;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0, p1, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Intent;)Z
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivity(Landroid/content/Intent;II)Z
    .registers 7

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return v1
.end method

.method private static startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 5

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ActivityUtils"

    const-string v1, "intent is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static startActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;III)V
    .registers 7

    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13

    invoke-static {p1, p5, p6}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p5, p6}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 12

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .registers 12

    invoke-static {p1, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13

    invoke-static {p1, p5, p6}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 12

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .registers 12

    invoke-static {p1, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;III)V
    .registers 6

    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I[Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    return-void
.end method

.method private static startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0, p0, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z
    .registers 6

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ActivityUtils"

    const-string v1, "intent is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ActivityUtils"

    const-string v2, "intent is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ActivityUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-virtual {p1, p0, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v0, p0, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startHomeActivity()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)Z

    return-void
.end method

.method public static startLauncherActivity()V
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startLauncherActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static startLauncherActivity(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
