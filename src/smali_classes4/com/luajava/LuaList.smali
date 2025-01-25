.class public Lcom/luajava/LuaList;
.super Lcom/luajava/LuaObject;

# interfaces
.implements Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;)V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->newTable()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaList;->registerValue(I)V

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
.method public add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaList;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    :try_start_a
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/luajava/LuaState;->setI(IJ)V

    invoke-virtual {p0}, Lcom/luajava/LuaList;->pop()V
    :try_end_1b
    .catch Lcom/luajava/LuaException; {:try_start_a .. :try_end_1b} :catch_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :catch_1d
    move-exception v0

    invoke-virtual {p0}, Lcom/luajava/LuaList;->pop()V

    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/luajava/LuaList;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->pop(I)V

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaList;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
