.class final Landroidx/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;,
        Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static sInstance:Landroidx/lifecycle/ClassesInfoCache;


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasLifecycleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/ClassesInfoCache;

    invoke-direct {v0}, Landroidx/lifecycle/ClassesInfoCache;-><init>()V

    sput-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    return-void
.end method

.method private createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    move v5, v3

    :goto_1f
    if-ge v5, v8, :cond_51

    aget-object v0, v7, v5

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v6, v1, v0, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    goto :goto_31

    :cond_4d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1f

    :cond_51
    if-eqz p2, :cond_69

    :goto_53
    array-length v7, p2

    move v1, v3

    move v5, v3

    :goto_56
    if-ge v5, v7, :cond_c5

    aget-object v8, p2, v5

    const-class v0, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/OnLifecycleEvent;

    if-nez v0, :cond_6e

    move v0, v1

    :goto_65
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_56

    :cond_69
    invoke-direct {p0, p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    goto :goto_53

    :cond_6e
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v1, v9

    if-lez v1, :cond_ab

    aget-object v1, v9, v3

    const-class v10, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a3

    move v1, v2

    :goto_80
    invoke-interface {v0}, Landroidx/lifecycle/OnLifecycleEvent;->value()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    array-length v10, v9

    if-le v10, v2, :cond_96

    aget-object v1, v9, v2

    const-class v10, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b5

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne v0, v1, :cond_ad

    move v1, v4

    :cond_96
    array-length v9, v9

    if-gt v9, v4, :cond_bd

    new-instance v9, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    invoke-direct {v9, v1, v8}, Landroidx/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    invoke-direct {p0, v6, v9, v0, p1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    move v0, v2

    goto :goto_65

    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    move v1, v3

    goto :goto_80

    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Second arg is supported only for ON_ANY value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter type. second arg must be an event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot have more than 2 params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c5
    new-instance v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    invoke-direct {v0, v6}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    if-eqz v0, :cond_a

    if-ne p3, v0, :cond_10

    :cond_a
    if-nez v0, :cond_f

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void

    :cond_10
    iget-object v1, p2, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", new value "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    goto :goto_a
.end method

.method hasLifecycleMethods(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    invoke-direct {p0, p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_16
    if-ge v2, v4, :cond_2d

    aget-object v0, v3, v2

    const-class v5, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/OnLifecycleEvent;

    if-eqz v0, :cond_29

    invoke-direct {p0, p1, v3}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    const/4 v0, 0x1

    goto :goto_f

    :cond_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_2d
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_f
.end method
