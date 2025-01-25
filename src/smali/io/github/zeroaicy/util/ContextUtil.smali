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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppContext()Landroid/content/Context;
    .registers 3

    .line 109
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lio/github/zeroaicy/util/ContextUtil;->createAppContext(Z)Landroid/content/Context;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return-object v0

    :catchall_6
    move-exception v0

    .line 112
    const-string v1, "ContextUtil"

    const-string v2, "createAppContext()"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private static createAppContext(Z)Landroid/content/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 118
    sget-object p0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    if-eqz p0, :cond_7

    return-object p0

    .line 121
    :cond_7
    const-string p0, "android.app.ActivityThread"

    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    .line 122
    const-string v0, "currentActivityThread"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    .line 125
    const-string v0, "mBoundApplication"

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->field(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 128
    const-string v1, "info"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_57

    if-eqz v0, :cond_4f

    .line 134
    const-string v1, "android.app.ContextImpl"

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v1

    .line 135
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const-string p0, "createAppContext"

    invoke-virtual {v1, p0, v2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sput-object p0, Lio/github/zeroaicy/util/ContextUtil;->createAppContext:Landroid/content/Context;

    return-object p0

    .line 132
    :cond_4f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "packageInfoObj 反射值空"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_57
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "mainThreadObj 反射值空"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_5f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "mBoundApplicationObj 反射值空"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 4

    .line 141
    const-wide/16 v0, 0xd2

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 142
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v1, "mActivities"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 143
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1a

    return-object v2

    .line 146
    :cond_1a
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 147
    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v1

    .line 148
    const-string v3, "paused"

    invoke-virtual {v1, v3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_22

    .line 149
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_47

    return-object v0

    :catch_47
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    return-object v2
.end method

.method public static getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2

    .line 20
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->activityThreadReflect:Lio/github/zeroaicy/util/reflect/ReflectPie;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 21
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->activityThreadReflect:Lio/github/zeroaicy/util/reflect/ReflectPie;

    return-object v0

    .line 23
    :cond_d
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v1, "currentActivityThread"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 3

    .line 28
    :try_start_0
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_9

    .line 29
    check-cast v0, Landroid/app/Application;

    return-object v0

    .line 31
    :cond_9
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
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-object v0

    :catchall_1c
    move-exception v0

    .line 37
    const-string v1, "ContextUtil"

    const-string v2, "getApplication()"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 50
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    if-eqz v0, :cond_8

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_10

    .line 51
    :cond_8
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 53
    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    .line 56
    :cond_10
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    if-nez v0, :cond_1a

    .line 57
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->createAppContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    .line 59
    :cond_1a
    sget-object v0, Lio/github/zeroaicy/util/ContextUtil;->CONTEXT_INSTANCE:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 3

    .line 66
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 73
    :cond_d
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    .line 75
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_25

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 2

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 88
    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_b
    :try_start_b
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getActivityThread()Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    const-string v1, "getProcessName"

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1c

    return-object v0

    .line 94
    :catchall_1c
    move-exception v0

    const-string v0, ":"

    return-object v0
.end method
