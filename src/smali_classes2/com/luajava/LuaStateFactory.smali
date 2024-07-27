.class public final Lcom/luajava/LuaStateFactory;
.super Ljava/lang/Object;


# static fields
.field private static final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/luajava/LuaState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaStateFactory;->states:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExistingState(J)Lcom/luajava/LuaState;
    .registers 6

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/luajava/LuaStateFactory;->states:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/luajava/LuaState;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaState;-><init>(J)V

    sget-object v1, Lcom/luajava/LuaStateFactory;->states:Ljava/util/Map;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-exit v1

    throw v0
.end method

.method public static insertLuaState(Lcom/luajava/LuaState;)J
    .registers 5

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/luajava/LuaStateFactory;->states:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getPointer()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-class v2, Lcom/luajava/LuaStateFactory;

    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-exit v1

    throw v0
.end method

.method public static newLuaState()Lcom/luajava/LuaState;
    .registers 5

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    new-instance v0, Lcom/luajava/LuaState;

    invoke-direct {v0}, Lcom/luajava/LuaState;-><init>()V

    sget-object v1, Lcom/luajava/LuaStateFactory;->states:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-exit v1

    throw v0
.end method

.method public static removeLuaState(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/luajava/LuaStateFactory;->states:Ljava/util/Map;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    const/4 v0, 0x0

    check-cast v0, Lcom/luajava/LuaState;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/luajava/LuaStateFactory;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v0

    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-exit v1

    throw v0
.end method
