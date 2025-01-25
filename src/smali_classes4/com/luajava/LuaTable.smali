.class public Lcom/luajava/LuaTable;
.super Lcom/luajava/LuaObject;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luajava/LuaTable$LuaEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/luajava/LuaObject;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;)V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->newTable()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaTable;->registerValue(I)V

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_9
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTable(I)V

    goto :goto_9
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    :try_start_5
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getTable(I)I

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    :goto_14
    iget-object v3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_1a
    .catch Lcom/luajava/LuaException; {:try_start_5 .. :try_end_1a} :catch_22

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    :goto_1f
    return v0

    :cond_20
    move v0, v2

    goto :goto_14

    :catch_22
    move-exception v0

    move v0, v1

    goto :goto_1f
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x1

    const/4 v5, -0x2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_f
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v5}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v6}, Lcom/luajava/LuaState;->pop(I)V

    return-object v2

    :cond_1d
    :try_start_1d
    new-instance v3, Lcom/luajava/LuaTable$LuaEntry;

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    invoke-direct {v3, p0, v0, v1}, Lcom/luajava/LuaTable$LuaEntry;-><init>(Lcom/luajava/LuaTable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Lcom/luajava/LuaException; {:try_start_1d .. :try_end_37} :catch_3d

    :goto_37
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v6}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_f

    :catch_3d
    move-exception v0

    goto :goto_37
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    :try_start_7
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Object;

    move-object v1, v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_23
    .catch Lcom/luajava/LuaException; {:try_start_7 .. :try_end_23} :catch_29

    :goto_23
    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v4}, Lcom/luajava/LuaState;->pop(I)V

    return-object v1

    :catch_29
    move-exception v2

    goto :goto_23
.end method

.method public isEmpty()Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1}, Lcom/luajava/LuaState;->pop(I)V

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_13

    :cond_1d
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_1a
.end method

.method public isList()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->pop()V

    :goto_10
    return v0

    :cond_11
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->pop(I)V

    :goto_27
    move v0, v1

    goto :goto_10

    :cond_29
    move v1, v0

    goto :goto_20

    :cond_2b
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_27
.end method

.method public keySet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_f
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    return-object v1

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Lcom/luajava/LuaException; {:try_start_1d .. :try_end_29} :catch_2f

    :goto_29
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_f

    :catch_2f
    move-exception v0

    goto :goto_29
.end method

.method public length()I
    .registers 3

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->pop()V

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    :try_start_3
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTable(I)V
    :try_end_13
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_13} :catch_1d

    :goto_13
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    return-object v0

    :catch_1d
    move-exception v0

    goto :goto_13
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    :try_start_3
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTable(I)V
    :try_end_e
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_e} :catch_18

    :goto_e
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_e
.end method

.method public size()I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_a
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_a
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
