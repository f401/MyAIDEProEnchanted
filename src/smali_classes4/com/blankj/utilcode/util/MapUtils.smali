.class public Lcom/blankj/utilcode/util/MapUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/MapUtils$Closure;,
        Lcom/blankj/utilcode/util/MapUtils$Transformer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forAllDo(Ljava/util/Map;Lcom/blankj/utilcode/util/MapUtils$Closure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/blankj/utilcode/util/MapUtils$Closure",
            "<TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/blankj/utilcode/util/MapUtils$Closure;->execute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNotEmpty(Ljava/util/Map;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/MapUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs newHashMap([Landroid/util/Pair;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Landroid/util/Pair",
            "<TK;TV;>;)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_b

    :cond_a
    return-object v1

    :cond_b
    array-length v2, p0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_a

    aget-object v3, p0, v0

    if-nez v3, :cond_16

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method public static varargs newHashTable([Landroid/util/Pair;)Ljava/util/Hashtable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Landroid/util/Pair",
            "<TK;TV;>;)",
            "Ljava/util/Hashtable",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_b

    :cond_a
    return-object v1

    :cond_b
    array-length v2, p0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_a

    aget-object v3, p0, v0

    if-nez v3, :cond_16

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method public static varargs newLinkedHashMap([Landroid/util/Pair;)Ljava/util/LinkedHashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Landroid/util/Pair",
            "<TK;TV;>;)",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p0, :cond_a

    array-length v0, p0

    if-nez v0, :cond_b

    :cond_a
    return-object v1

    :cond_b
    array-length v2, p0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_a

    aget-object v3, p0, v0

    if-nez v3, :cond_16

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13
.end method

.method public static varargs newTreeMap(Ljava/util/Comparator;[Landroid/util/Pair;)Ljava/util/TreeMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;[",
            "Landroid/util/Pair",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-eqz p0, :cond_20

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    if-eqz p1, :cond_c

    array-length v0, p1

    if-nez v0, :cond_d

    :cond_c
    return-object v1

    :cond_d
    array-length v2, p1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_c

    aget-object v3, p1, v0

    if-nez v3, :cond_18

    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_18
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "comparator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs newUnmodifiableMap([Landroid/util/Pair;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Landroid/util/Pair",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/MapUtils;->newHashMap([Landroid/util/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static size(Ljava/util/Map;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_3
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static transform(Ljava/util/Map;Lcom/blankj/utilcode/util/MapUtils$Transformer;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "K2:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK1;TV1;>;",
            "Lcom/blankj/utilcode/util/MapUtils$Transformer",
            "<TK1;TV1;TK2;TV2;>;)",
            "Ljava/util/Map",
            "<TK2;TV2;>;"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/blankj/utilcode/util/MapUtils$1;

    invoke-direct {v1, p1, v0}, Lcom/blankj/utilcode/util/MapUtils$1;-><init>(Lcom/blankj/utilcode/util/MapUtils$Transformer;Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/MapUtils;->forAllDo(Ljava/util/Map;Lcom/blankj/utilcode/util/MapUtils$Closure;)V
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_18} :catch_19
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_18} :catch_1e

    goto :goto_5

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_4
.end method
