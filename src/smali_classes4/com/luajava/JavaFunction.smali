.class public abstract Lcom/luajava/JavaFunction;
.super Ljava/lang/Object;


# instance fields
.field protected L:Lcom/luajava/LuaState;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    return-void
.end method


# virtual methods
.method public abstract execute()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation
.end method

.method public getParam(I)Lcom/luajava/LuaObject;
    .registers 3

    iget-object v0, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-object v1, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushJavaFunction(Lcom/luajava/JavaFunction;)V

    iget-object v0, p0, Lcom/luajava/JavaFunction;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
