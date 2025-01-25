.class public final Lutilcode/com/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;


# instance fields
.field private final accessor:Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lutilcode/com/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lutilcode/com/google/gson/InstanceCreator",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor;->accessor:Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

    iput-object p1, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor;->accessor:Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_12
    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {v0, p0, v1}, Lutilcode/com/google/gson/internal/ConstructorConstructor$3;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$4;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$4;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    :goto_15
    return-object v0

    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {v0, p0, p1}, Lutilcode/com/google/gson/internal/ConstructorConstructor$5;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    goto :goto_15

    :cond_24
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$6;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$6;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    :cond_32
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$7;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$7;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    :cond_40
    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$8;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$8;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$9;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    :cond_5c
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$10;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    :cond_6a
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_78

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$11;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$11;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    :cond_78
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9c

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9c

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$12;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$12;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto/16 :goto_15

    :cond_9c
    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$13;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/ConstructorConstructor$13;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V

    goto/16 :goto_15

    :cond_a3
    const/4 v0, 0x0

    goto/16 :goto_15
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;

    invoke-direct {v0, p0, p2, p1}, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/internal/ObjectConstructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/InstanceCreator;

    if-eqz v0, :cond_19

    new-instance v1, Lutilcode/com/google/gson/internal/ConstructorConstructor$1;

    invoke-direct {v1, p0, v0, v2}, Lutilcode/com/google/gson/internal/ConstructorConstructor$1;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/InstanceCreator;

    if-eqz v0, :cond_2a

    new-instance v1, Lutilcode/com/google/gson/internal/ConstructorConstructor$2;

    invoke-direct {v1, p0, v0, v2}, Lutilcode/com/google/gson/internal/ConstructorConstructor$2;-><init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_18

    :cond_2a
    invoke-direct {p0, v1}, Lutilcode/com/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lutilcode/com/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lutilcode/com/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;

    move-result-object v0

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
