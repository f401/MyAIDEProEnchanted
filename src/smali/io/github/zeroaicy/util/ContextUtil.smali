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
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppContext()Landroid/content/Context;
    .locals 3

    .line 109
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lio/github/zeroaicy/util/ContextUtil;->createAppContext(Z)Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    .line 112
    const-string v1, "ContextUtil"

    const-string v2, "createAppContext()"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private static createAppContext(Z)Landroid/content/Context;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 118
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-object v0

    .line 121
    :cond_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 122
    const-string v1, "currentActivityThread"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 125
    const-string v1, "mBoundApplication"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 128
    const-string v2, "info"

    invoke-virtual {v1, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 134
    const-string v2, "android.app.ContextImpl"

    invoke-static {v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v2

    .line 135
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

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageInfoObj \u53cd\u5c04\u503c\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainThreadObj \u53cd\u5c04\u503c\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mBoundApplicationObj \u53cd\u5c04\u503c\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 4

    const/4 v1, 0x0

    .line 141
    const-wide/16 v2, 0xd2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 142
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v2, "mActivities"

    invoke-virtual {v0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 143
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    move-object v0, v1

    .line 155
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v3

    .line 148
    const-string v0, "paused"

    invoke-virtual {v3, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const-string v0, "activity"

    invoke-virtual {v3, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;
    .locals 2

    .line 20
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->activityThreadReflect:Lio/github/zeroaicy/util/reflect/ReflectPie;

    if-eqz v0, :cond_0

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

.method public static getApplication()Landroid/app/Application;
    .locals 3

    .line 28
    :try_start_0
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Landroid/app/Application;

    .line 37
    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v1, "getApplication"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 32
    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 37
    const-string v1, "ContextUtil"

    const-string v2, "getApplication()"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 50
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 51
    :cond_0
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    .line 56
    :cond_1
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 57
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->createAppContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    .line 59
    :cond_2
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 3

    .line 66
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 75
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 2

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 88
    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 91
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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    const-string v0, ":"

    goto :goto_0
.end method
