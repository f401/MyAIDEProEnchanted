.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;,
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;
    }
.end annotation


# static fields
.field static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/lang/Object;

.field private final FH:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->DW:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->DW(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->FH:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    return-void
.end method

.method private static DW(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    .registers 2

    sget-object v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-static {p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    .registers 13

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->DW(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->DW:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_16
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v3, :cond_52

    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->DW(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object v6

    iget-object v6, v6, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->DW:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/arch/lifecycle/a$a;

    invoke-static {v1, v8, v7, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/a$a;Ljava/lang/Class;)V

    goto :goto_33

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_52
    array-length v2, v0

    const/4 v3, 0x0

    :goto_54
    if-ge v3, v2, :cond_be

    aget-object v5, v0, v3

    const-class v6, Landroid/arch/lifecycle/g;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/arch/lifecycle/g;

    if-nez v6, :cond_63

    goto :goto_b3

    :cond_63
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x1

    if-lez v8, :cond_7f

    aget-object v8, v7, v4

    const-class v10, Landroid/arch/lifecycle/c;

    invoke-virtual {v8, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_77

    const/4 v8, 0x1

    goto :goto_80

    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    const/4 v8, 0x0

    :goto_80
    invoke-interface {v6}, Landroid/arch/lifecycle/g;->value()Landroid/arch/lifecycle/a$a;

    move-result-object v6

    array-length v10, v7

    const/4 v11, 0x2

    if-le v10, v9, :cond_a8

    aget-object v8, v7, v9

    const-class v9, Landroid/arch/lifecycle/a$a;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a0

    sget-object v8, Landroid/arch/lifecycle/a$a;->ON_ANY:Landroid/arch/lifecycle/a$a;

    if-ne v6, v8, :cond_98

    const/4 v8, 0x2

    goto :goto_a8

    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Second arg is supported only for ON_ANY value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter type. second arg must be an event"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a8
    :goto_a8
    array-length v7, v7

    if-gt v7, v11, :cond_b6

    new-instance v7, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-direct {v7, v8, v5}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;-><init>(ILjava/lang/reflect/Method;)V

    invoke-static {v1, v7, v6, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/a$a;Ljava/lang/Class;)V

    :goto_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_b6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot have more than 2 params"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_be
    new-instance v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    invoke-direct {v0, v1}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;-><init>(Ljava/util/Map;)V

    sget-object v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private j6(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V
    .registers 5

    iget-object v0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->j6:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6(Ljava/util/List;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->j6:Ljava/util/Map;

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_ANY:Landroid/arch/lifecycle/a$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6(Ljava/util/List;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    return-void
.end method

.method private j6(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V
    .registers 8

    :try_start_0
    iget v0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->j6:I

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_2f

    :cond_c
    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->DW:Ljava/lang/reflect/Method;

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->DW:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v2

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_1a
    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->DW:Ljava/lang/reflect/Method;

    iget-object p3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->DW:Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_26
    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->DW:Ljava/lang/reflect/Method;

    iget-object p2, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->DW:Ljava/lang/Object;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2f} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2f} :catch_30

    :goto_2f
    return-void

    :catch_30
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_37
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to call observer method"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private j6(Ljava/util/List;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            ">;",
            "Landroid/arch/lifecycle/c;",
            "Landroid/arch/lifecycle/a$a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_16

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-direct {p0, v1, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method private static j6(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/a$a;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            "Landroid/arch/lifecycle/a$a;",
            ">;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            "Landroid/arch/lifecycle/a$a;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/a$a;

    if-eqz v0, :cond_49

    if-ne p2, v0, :cond_b

    goto :goto_49

    :cond_b
    iget-object p0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->DW:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already declared with different @OnLifecycleEvent value: previous"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", new value "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    if-nez v0, :cond_4e

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-void
.end method


# virtual methods
.method public j6(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V
    .registers 4

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->FH:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    invoke-direct {p0, v0, p1, p2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->j6(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    return-void
.end method
