.class public Lcom/luajava/LuaStack;
.super Ljava/lang/Object;


# static fields
.field private static final luaStack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
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

    sput-object v0, Lcom/luajava/LuaStack;->luaStack:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    new-instance v0, Lcom/luajava/LuaFunction;

    invoke-static {p0}, Lcom/luajava/LuaStack;->get(Ljava/lang/String;)Lcom/luajava/LuaState;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/luajava/LuaState;
    .registers 2

    sget-object v0, Lcom/luajava/LuaStack;->luaStack:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaState;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Lcom/luajava/LuaState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/luajava/LuaState;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/luajava/LuaStack;->luaStack:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
