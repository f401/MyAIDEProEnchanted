.class public Lio/github/zeroaicy/util/ContextUtil;
.super Ljava/lang/Object;
.source "ContextUtil.java"


# static fields
.field private static CONTEXT_INSTANCE:Landroid/content/Context; = null

.field public static final TAG:Ljava/lang/String; = "ContextUtil"

.field private static activityThreadReflect:Lio/github/zeroaicy/util/reflect/ReflectPie;

.field private static createAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppContext()Landroid/content/Context;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    const/4 v0, 0x1

    invoke-static {v0}, Lio/github/zeroaicy/util/ContextUtil;->createAppContext(Z)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static createAppContext(Z)Landroid/content/Context;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    if-eqz p0, :cond_0

    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    .line 107
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 94
    const-string v1, "currentActivityThread"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 97
    const-string v1, "mBoundApplication"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mBoundApplicationObj \u53cd\u5c04\u503c\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    const-string v2, "info"

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainThreadObj \u53cd\u5c04\u503c\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageInfoObj \u53cd\u5c04\u503c\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_3
    const-string v2, "android.app.ContextImpl"

    invoke-static {v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v2

    .line 107
    const-string v3, "createAppContext"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 4

    const/4 v1, 0x0

    .line 113
    const/16 v0, 0xd2

    int-to-long v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 114
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v2, "mActivities"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 115
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 116
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Activity;

    .line 129
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 122
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    move-object v0, v1

    .line 129
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 118
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v3

    .line 120
    const-string v0, "paused"

    invoke-virtual {v3, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "activity"

    invoke-virtual {v3, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2

    .line 20
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->activityThreadReflect:Lio/github/zeroaicy/util/reflect/ReflectPie;

    if-eqz v0, :cond_0

    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->activityThreadReflect:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->activityThreadReflect:Lio/github/zeroaicy/util/reflect/ReflectPie;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v1, "currentActivityThread"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 4

    .line 32
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 33
    :try_start_0
    const-string v0, "io.github.zeroaicy.util.ContextUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    monitor-enter v1

    .line 34
    :try_start_1
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 36
    :try_start_2
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v2, "currentActivityThread"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 37
    const-string v2, "getApplication"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :cond_0
    :goto_0
    monitor-exit v1

    .line 44
    :cond_1
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 46
    :try_start_3
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->createAppContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 51
    :cond_2
    :goto_1
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :catch_1
    move-exception v0

    .line 39
    :try_start_4
    const-string v2, "ContextUtil"

    const-string v3, "\u5c1d\u8bd5getApplication"

    invoke-static {v2, v3, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 46
    :catch_2
    move-exception v0

    .line 48
    const-string v1, "ContextUtil"

    const-string v2, "\u5c1d\u8bd5createAppContext"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 3

    .line 55
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 64
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 65
    if-lez v1, :cond_0

    .line 66
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 74
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    :try_start_0
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v1, "getProcessName"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lio/github/zeroaicy/util/reflect/ReflectPieException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    const-string v0, ":"

    goto :goto_0
.end method
