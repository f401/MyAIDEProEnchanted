.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator",
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
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lcom/google/gson/internal/reflect/ReflectionAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    .line 54
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_12

    .line 103
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->accessor:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 105
    :cond_12
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_17} :catch_18

    .line 125
    :goto_17
    return-object v0

    .line 124
    :catch_18
    move-exception v0

    .line 125
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .line 136
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 137
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 138
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$4;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    .line 215
    :goto_15
    return-object v0

    .line 143
    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 144
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    goto :goto_15

    .line 159
    :cond_24
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 160
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$6;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 165
    :cond_32
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 166
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$7;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 172
    :cond_40
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$8;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 180
    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 181
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 182
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 187
    :cond_5c
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 188
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 193
    :cond_6a
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 194
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$11;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 199
    :cond_78
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9c

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 200
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 199
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 201
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$12;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto/16 :goto_15

    .line 207
    :cond_9c
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$13;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$13;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    goto/16 :goto_15

    .line 215
    :cond_a3
    const/4 v0, 0x0

    goto/16 :goto_15
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/gson/internal/ConstructorConstructor$14;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 64
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/InstanceCreator;

    .line 65
    if-eqz v0, :cond_19

    .line 66
    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    .line 96
    :cond_18
    :goto_18
    return-object v0

    .line 75
    :cond_19
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/InstanceCreator;

    .line 77
    if-eqz v0, :cond_2a

    .line 78
    new-instance v1, Lcom/google/gson/internal/ConstructorConstructor$2;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_18

    .line 85
    :cond_2a
    invoke-direct {p0, v1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 86
    if-nez v0, :cond_18

    .line 90
    invoke-direct {p0, v2, v1}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 91
    if-nez v0, :cond_18

    .line 96
    invoke-direct {p0, v2, v1}, Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
