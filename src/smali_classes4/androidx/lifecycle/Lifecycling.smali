.class public Landroidx/lifecycle/Lifecycling;
.super Ljava/lang/Object;


# static fields
.field private static final GENERATED_CALLBACK:I = 0x2

.field private static final REFLECTIVE_CALLBACK:I = 0x1

.field private static sCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassToAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/lifecycle/GeneratedAdapter;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/GeneratedAdapter;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_c} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_c} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    :goto_14
    invoke-static {v0}, Landroidx/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    :goto_1e
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_36} :catch_61
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_36} :catch_5a

    :cond_36
    :goto_36
    return-object v0

    :cond_37
    const-string v1, ""

    goto :goto_e

    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_58} :catch_61
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_58} :catch_5a

    move-result-object v0

    goto :goto_1e

    :catch_5a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_61
    move-exception v0

    const/4 v0, 0x0

    goto :goto_36
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_LifecycleAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/lifecycle/Lifecycling$1;

    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->lifecycleEventObserver(Ljava/lang/Object;)Landroidx/lifecycle/LifecycleEventObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/Lifecycling$1;-><init>(Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v0
.end method

.method private static getObserverConstructorType(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    sget-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->resolveObserverCallbackType(Ljava/lang/Class;)I

    move-result v0

    sget-object v1, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method private static isLifecycleParent(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_c

    const-class v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static lifecycleEventObserver(Ljava/lang/Object;)Landroidx/lifecycle/LifecycleEventObserver;
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p0, Landroidx/lifecycle/LifecycleEventObserver;

    instance-of v2, p0, Landroidx/lifecycle/FullLifecycleObserver;

    if-eqz v0, :cond_15

    if-eqz v2, :cond_15

    new-instance v1, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/FullLifecycleObserver;

    check-cast p0, Landroidx/lifecycle/LifecycleEventObserver;

    invoke-direct {v1, v0, p0}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    move-object p0, v1

    :goto_14
    return-object p0

    :cond_15
    if-eqz v2, :cond_21

    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    check-cast p0, Landroidx/lifecycle/FullLifecycleObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    move-object p0, v0

    goto :goto_14

    :cond_21
    if-eqz v0, :cond_26

    check-cast p0, Landroidx/lifecycle/LifecycleEventObserver;

    goto :goto_14

    :cond_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    sget-object v2, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_51

    new-instance v2, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p0}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroidx/lifecycle/GeneratedAdapter;)V

    move-object p0, v2

    goto :goto_14

    :cond_51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Landroidx/lifecycle/GeneratedAdapter;

    move v2, v1

    :goto_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-static {v1, p0}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v1

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_58

    :cond_6e
    new-instance p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {p0, v3}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/GeneratedAdapter;)V

    goto :goto_14

    :cond_74
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_14
.end method

.method private static resolveObserverCallbackType(Ljava/lang/Class;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_1b

    sget-object v1, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_9

    :cond_1b
    sget-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ClassesInfoCache;->hasLifecycleMethods(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    goto :goto_9

    :cond_25
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v4}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {v4}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v2, :cond_38

    move v0, v2

    goto :goto_9

    :cond_38
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :cond_46
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x0

    move v4, v1

    :goto_4d
    if-ge v4, v6, :cond_78

    aget-object v7, v5, v4

    invoke-static {v7}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5b

    :goto_57
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4d

    :cond_5b
    invoke-static {v7}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v1

    if-ne v1, v2, :cond_63

    move v0, v2

    goto :goto_9

    :cond_63
    if-nez v0, :cond_83

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_6b
    sget-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto :goto_57

    :cond_78
    if-eqz v0, :cond_81

    sget-object v1, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_9

    :cond_81
    move v0, v2

    goto :goto_9

    :cond_83
    move-object v1, v0

    goto :goto_6b
.end method
