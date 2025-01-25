.class public Lcom/luajava/LuaObject;
.super Ljava/lang/Object;


# instance fields
.field protected L:Lcom/luajava/LuaState;

.field protected ref:I


# direct methods
.method protected constructor <init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    if-eq v0, v1, :cond_15

    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "LuaStates must be the same!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_31
    :try_start_31
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_2e

    monitor-exit v1

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->pushNumber(D)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_22

    monitor-exit v1

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Object parent should be a table or userdata ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->remove(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_22

    monitor-exit v1

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p1

    :try_start_4
    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaObject;->registerValue(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    monitor-exit p1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p1

    :try_start_4
    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaObject;->registerValue(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_13

    monitor-exit p1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p1

    throw v0
.end method


# virtual methods
.method public asArray()[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    :try_start_4
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid object. Not a table ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->objLen(I)I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    move-result v3

    :try_start_1f
    const-string v0, "java.lang.Object"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_24} :catch_35
    .catchall {:try_start_1f .. :try_end_24} :catchall_12

    move-result-object v0

    :try_start_25
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_29
    if-le v1, v3, :cond_40

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    check-cast v0, [Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catch_35
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    iget-object v4, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lcom/luajava/LuaState;->pushInteger(J)V

    iget-object v4, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->getTable(I)I
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_12

    add-int/lit8 v4, v1, -0x1

    :try_start_4e
    iget-object v5, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_58
    .catch Lcom/luajava/LuaException; {:try_start_4e .. :try_end_58} :catch_61
    .catchall {:try_start_4e .. :try_end_58} :catchall_12

    :goto_58
    :try_start_58
    iget-object v4, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :catch_61
    move-exception v4

    goto :goto_58
.end method

.method public asMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/util/Map;",
            "^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid object. Not a table ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_12
    :try_start_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_1d
    invoke-virtual {p1, p3}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_f

    return-object v0

    :cond_29
    const/4 v1, -0x2

    :try_start_2a
    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lcom/luajava/LuaException; {:try_start_2a .. :try_end_36} :catch_3b
    .catchall {:try_start_2a .. :try_end_36} :catchall_f

    :goto_36
    const/4 v1, 0x1

    :try_start_37
    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_f

    goto :goto_1d

    :catch_3b
    move-exception v1

    goto :goto_36
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/luajava/LuaObject;->callx([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public callx([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid object. Not a function, table or userdata ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    if-eqz p1, :cond_75

    array-length v0, p1

    :goto_2e
    if-lt v1, v0, :cond_6b

    :goto_30
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, p2, v4}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v1

    if-eqz v1, :cond_e0

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->isString(I)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pop(I)V

    :goto_4f
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Runtime error. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_65
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6b
    .catchall {:try_start_22 .. :try_end_6b} :catchall_1f

    :cond_6b
    aget-object v4, p1, v1

    :try_start_6d
    iget-object v5, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v5, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_75
    move v0, v1

    goto :goto_30

    :cond_77
    const-string v0, ""

    goto :goto_4f

    :cond_7a
    const/4 v3, 0x4

    if-ne v1, v3, :cond_91

    :try_start_7d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Memory allocation error. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_91
    const/4 v3, 0x6

    if-ne v1, v3, :cond_a8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while running the error handler function. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_a8
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Lua Error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ". "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_e0
    if-ne p2, v6, :cond_114

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_e9
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v1, v0, :cond_fa

    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid Number of Results ."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fa
    new-array v1, v0, [Ljava/lang/Object;

    :goto_fc
    if-gtz v0, :cond_100

    monitor-exit v2

    return-object v1

    :cond_100
    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_111
    .catchall {:try_start_7d .. :try_end_111} :catchall_1f

    add-int/lit8 v0, v0, -0x1

    goto :goto_fc

    :cond_114
    move v0, p2

    goto :goto_e9
.end method

.method public createProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid Object. Must be Table."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_14
    :try_start_14
    new-instance v0, Lcom/luajava/LuaInvocationHandler;

    invoke-direct {v0, p0}, Lcom/luajava/LuaInvocationHandler;-><init>(Lcom/luajava/LuaObject;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_11

    return-object v0
.end method

.method public createProxy(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid Object. Must be Table."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_14
    :try_start_14
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_22
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_3b

    new-instance v0, Lcom/luajava/LuaInvocationHandler;

    invoke-direct {v0, p0}, Lcom/luajava/LuaInvocationHandler;-><init>(Lcom/luajava/LuaObject;)V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_3b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public dump()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/luajava/LuaException;

    const-string v2, "Invalid object. Not a function ."

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->dump(I)[B

    move-result-object v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_11

    return-object v0
.end method

.method protected finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1e

    :try_start_3
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    const/4 v0, 0x0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const v2, -0xf4628

    iget v3, p0, Lcom/luajava/LuaObject;->ref:I

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->LunRef(II)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    :cond_19
    :try_start_19
    monitor-exit v1

    :goto_1a
    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to release object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/luajava/LuaObject;->ref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public getBoolean()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getField(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0, p1}, Lcom/luajava/LuaState;->getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    return-object v0
.end method

.method public getFunction()Lcom/luajava/LuaFunction;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaFunction",
            "<*>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    new-instance v0, Lcom/luajava/LuaFunction;

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;I)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getI(J)Lcom/luajava/LuaObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, p0, v1}, Lcom/luajava/LuaState;->getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;

    move-result-object v0

    return-object v0
.end method

.method public getInteger()J
    .registers 6

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-wide v2

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .registers 2

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getNumber()D
    .registers 6

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v2

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-wide v2

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTable()Lcom/luajava/LuaTable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaTable",
            "<**>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    new-instance v0, Lcom/luajava/LuaTable;

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isBoolean()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isFunction()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInteger()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isJavaFunction()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isJavaFunction(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isJavaObject()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNil()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isNil(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNumber()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isNumber(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isString()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isString(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isTable()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUserdata()Z
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pop()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method public push()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const v1, -0xf4628

    iget v2, p0, Lcom/luajava/LuaObject;->ref:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/luajava/LuaState;->rawGetI(IJ)I

    return-void
.end method

.method protected registerValue(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const v2, -0xf4628

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->Lref(I)I

    move-result v0

    iput v0, p0, Lcom/luajava/LuaObject;->ref:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_3
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V
    :try_end_8
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_8} :catch_15

    :goto_8
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void

    :catch_15
    move-exception v0

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    goto :goto_8
.end method

.method public setI(JLjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_3
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V
    :try_end_8
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_8} :catch_15

    :goto_8
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/luajava/LuaState;->setI(IJ)V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void

    :catch_15
    move-exception v0

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNil()Z
    :try_end_6
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_6} :catch_1d
    .catchall {:try_start_3 .. :try_end_6} :catchall_23

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "nil"

    :try_start_b
    monitor-exit v1

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1c
    .catch Lcom/luajava/LuaException; {:try_start_b .. :try_end_1c} :catch_1d
    .catchall {:try_start_b .. :try_end_1c} :catchall_23

    goto :goto_c

    :catch_1d
    move-exception v0

    const/4 v0, 0x0

    :try_start_1f
    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_c

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getNumber()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_c

    :cond_36
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isString()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_c

    :cond_42
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z
    :try_end_45
    .catch Lcom/luajava/LuaException; {:try_start_26 .. :try_end_45} :catch_1d
    .catchall {:try_start_26 .. :try_end_45} :catchall_23

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "Lua Function"

    :try_start_4a
    monitor-exit v1

    goto :goto_c

    :cond_4c
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaObject()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_c

    :cond_5c
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z
    :try_end_5f
    .catch Lcom/luajava/LuaException; {:try_start_4a .. :try_end_5f} :catch_1d
    .catchall {:try_start_4a .. :try_end_5f} :catchall_23

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "Userdata"

    :try_start_64
    monitor-exit v1

    goto :goto_c

    :cond_66
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z
    :try_end_69
    .catch Lcom/luajava/LuaException; {:try_start_64 .. :try_end_69} :catch_1d
    .catchall {:try_start_64 .. :try_end_69} :catchall_23

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, "Lua Table"

    :try_start_6e
    monitor-exit v1

    goto :goto_c

    :cond_70
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaFunction()Z
    :try_end_73
    .catch Lcom/luajava/LuaException; {:try_start_6e .. :try_end_73} :catch_1d
    .catchall {:try_start_6e .. :try_end_73} :catchall_23

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "Java Function"

    :try_start_78
    monitor-exit v1

    goto :goto_c

    :cond_7a
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_7e
    .catch Lcom/luajava/LuaException; {:try_start_78 .. :try_end_7e} :catch_1d
    .catchall {:try_start_78 .. :try_end_7e} :catchall_23

    goto :goto_c
.end method

.method public type()I
    .registers 5

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->pop(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
