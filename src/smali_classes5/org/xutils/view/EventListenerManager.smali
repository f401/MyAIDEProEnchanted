.class final Lorg/xutils/view/EventListenerManager;
.super Ljava/lang/Object;
.source "EventListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/view/EventListenerManager$DynamicHandler;
    }
.end annotation


# static fields
.field private static final AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUICK_EVENT_TIME_SPAN:J = 0x12cL

.field private static final listenerCache:Lorg/xutils/common/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/util/DoubleKeyValueMap",
            "<",
            "Lorg/xutils/view/ViewInfo;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/xutils/view/EventListenerManager;->AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;

    .line 39
    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v1, "onItemClick"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lorg/xutils/common/util/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lorg/xutils/view/EventListenerManager;->listenerCache:Lorg/xutils/common/util/DoubleKeyValueMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .registers 1

    .line 33
    sget-object v0, Lorg/xutils/view/EventListenerManager;->AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;

    return-object v0
.end method

.method public static addEventMethod(Lorg/xutils/view/ViewFinder;Lorg/xutils/view/ViewInfo;Lorg/xutils/view/annotation/Event;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 13

    const/4 v0, 0x0

    .line 67
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/xutils/view/ViewFinder;->findViewByInfo(Lorg/xutils/view/ViewInfo;)Landroid/view/View;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_7d

    .line 71
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->type()Ljava/lang/Class;

    move-result-object v5

    .line 73
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->setter()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 79
    :goto_2b
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->method()Ljava/lang/String;

    move-result-object v6

    .line 86
    sget-object v7, Lorg/xutils/view/EventListenerManager;->listenerCache:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v7, p1, v5}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_4b

    .line 95
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lorg/xutils/view/EventListenerManager$DynamicHandler;

    .line 96
    invoke-virtual {v0}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->getHandler()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 97
    if-eqz v2, :cond_89

    .line 98
    invoke-virtual {v0, v6, p4}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    move v0, v2

    .line 103
    :cond_4b
    :goto_4b
    if-nez v0, :cond_87

    .line 105
    new-instance v0, Lorg/xutils/view/EventListenerManager$DynamicHandler;

    invoke-direct {v0, p3}, Lorg/xutils/view/EventListenerManager$DynamicHandler;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0, v6, p4}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 110
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    invoke-virtual {v7, p1, v5, v0}, Lorg/xutils/common/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :goto_66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_7e

    .line 124
    :cond_7d
    :goto_7d
    return-void

    .line 121
    :catchall_7e
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7d

    :cond_87
    move-object v0, v1

    goto :goto_66

    :cond_89
    move v0, v2

    goto :goto_4b

    :cond_8b
    move-object v3, v1

    goto :goto_2b
.end method
