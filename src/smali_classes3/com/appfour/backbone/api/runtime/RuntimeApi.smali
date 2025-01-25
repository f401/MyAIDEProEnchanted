.class public Lcom/appfour/backbone/api/runtime/RuntimeApi;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessField(Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getClass(J)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/appfour/backbone/api/runtime/a;->j6(J)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static invokeMethod(Ljava/lang/Object;[Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;[Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isInstanceOf(Ljava/lang/Object;J)Z
    .registers 4

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static onDefineEventError(Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/define/DefineAnalytics;->onDefineEventError(Ljava/lang/Throwable;)V

    return-void
.end method
