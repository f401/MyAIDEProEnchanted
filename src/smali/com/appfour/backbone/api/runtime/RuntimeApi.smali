.class public Lcom/appfour/backbone/api/runtime/RuntimeApi;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessField(Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(J)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/appfour/backbone/api/runtime/a;->j6(J)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/Object;[Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;[Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public static onDefineEventError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appfour/backbone/api/define/DefineAnalytics;->onDefineEventError(Ljava/lang/Throwable;)V

    return-void
.end method
