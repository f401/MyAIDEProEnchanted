.class public final Lcom/blankj/utilcode/util/CollectionUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CollectionUtils$Closure;,
        Lcom/blankj/utilcode/util/CollectionUtils$Predicate;,
        Lcom/blankj/utilcode/util/CollectionUtils$Transformer;
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

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/util/Enumeration",
            "<TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public static addAll(Ljava/util/Collection;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;[TE;)V"
        }
    .end annotation

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_7
.end method

.method public static addIgnoreNull(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-eqz p1, :cond_3

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/util/Collection",
            "<TE;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_d

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_d
    if-nez p0, :cond_22

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public static collect(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Transformer;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE1;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Transformer",
            "<TE1;TE2;>;)",
            "Ljava/util/Collection",
            "<TE2;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    :cond_9
    return-object v0

    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils$Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_6

    :cond_26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_6
.end method

.method public static countMatches(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate",
            "<TE;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return v0

    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static disjunction(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 11

    if-nez p0, :cond_a

    if-nez p1, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    if-nez p0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_12
    if-nez p1, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {v5, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v6

    invoke-static {v5, v3}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v7

    invoke-static {v5, v3}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_56
    sub-int v8, v6, v7

    if-ge v1, v8, :cond_33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_56
.end method

.method public static exists(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate",
            "<TE;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static filter(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate",
            "<TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method public static find(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate",
            "<TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5
.end method

.method public static forAllDo(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Closure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Closure",
            "<TE;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/blankj/utilcode/util/CollectionUtils$Closure;->execute(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    const/4 v1, -0x1

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    if-ltz p1, :cond_c3

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_1a
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_25

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_25
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2e

    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    goto :goto_4

    :cond_2e
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_5e

    check-cast p0, Ljava/util/Iterator;

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    add-int/lit8 p1, p1, -0x1

    if-ne p1, v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_34

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5e
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6d

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_6d
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_9d

    check-cast p0, Ljava/util/Enumeration;

    :goto_73
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_86

    add-int/lit8 p1, p1, -0x1

    if-ne p1, v1, :cond_82

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_82
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_73

    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9d
    :try_start_9d
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_a0} :catch_a3

    move-result-object v0

    goto/16 :goto_4

    :catch_a3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_28

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_36
    move-object v0, v1

    goto :goto_8
.end method

.method private static getFreq(Ljava/lang/Object;Ljava/util/Map;)I
    .registers 3

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {v5, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v6

    invoke-static {v5, v3}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_3a
    if-ge v1, v6, :cond_23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->size()I

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

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    if-eq v5, v4, :cond_2a

    goto :goto_5

    :cond_3f
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    if-le v5, v4, :cond_12

    goto :goto_5

    :cond_27
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static varargs newArrayListNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

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

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static varargs newHashSetNotNull([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

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
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static varargs newLinkedList([Ljava/lang/Object;)Ljava/util/LinkedList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

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

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static varargs newLinkedListNotNull([Ljava/lang/Object;)Ljava/util/LinkedList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

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
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static newSynchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newTreeSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/TreeSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TE;>;[TE;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_b

    :cond_a
    return-object v1

    :cond_b
    array-length v2, p1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_a

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static varargs newTreeSetNotNull(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/TreeSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TE;>;[TE;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_b

    :cond_a
    return-object v1

    :cond_b
    array-length v2, p1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_a

    aget-object v3, p1, v0

    if-nez v3, :cond_16

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static newUnmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newUnmodifiableListNotNull([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->newArrayListNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    if-nez p0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-nez p1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static select(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public static selectRejected(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Predicate;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Predicate",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/CollectionUtils$Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public static shuffle(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public static size(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_f

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_3

    :cond_f
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1a

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_3

    :cond_1a
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_22

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    goto :goto_3

    :cond_22
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_34

    check-cast p0, Ljava/util/Iterator;

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_28

    :cond_34
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_46

    check-cast p0, Ljava/util/Enumeration;

    :goto_3a
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_3a

    :cond_46
    :try_start_46
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_49} :catch_4b

    move-result v0

    goto :goto_3

    :catch_4b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sizeIsEmpty(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_10

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_4

    :cond_10
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_1b

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_4

    :cond_1b
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_26

    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_26
    instance-of v2, p0, Ljava/util/Iterator;

    if-eqz v2, :cond_33

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_33
    instance-of v2, p0, Ljava/util/Enumeration;

    if-eqz v2, :cond_40

    check-cast p0, Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_40
    :try_start_40
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_43} :catch_48

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :catch_48
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5

    if-nez p0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-nez p1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method public static toString(Ljava/util/Collection;)Ljava/lang/String;
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

.method public static transform(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Transformer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Object;",
            "E2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE1;>;",
            "Lcom/blankj/utilcode/util/CollectionUtils$Transformer",
            "<TE1;TE2;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/blankj/utilcode/util/CollectionUtils$Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/CollectionUtils;->collect(Ljava/util/Collection;Lcom/blankj/utilcode/util/CollectionUtils$Transformer;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 10

    if-nez p0, :cond_a

    if-nez p1, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    if-nez p0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_12
    if-nez p1, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lcom/blankj/utilcode/util/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {v5, v2}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v6

    invoke-static {v5, v3}, Lcom/blankj/utilcode/util/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_4a
    if-ge v1, v6, :cond_33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a
.end method
