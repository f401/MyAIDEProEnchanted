.class public abstract Labcd/lv;
.super Labcd/jw;

# interfaces
.implements Lcom/appfour/backbone/api/runtime/a;


# instance fields
.field private v5:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/jw;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Object;Labcd/lv$a;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 5

    const/4 v1, 0x0

    :try_start_0
    iput-object p1, p0, Labcd/lv;->v5:Ljava/lang/Object;

    invoke-interface {p2}, Labcd/lv$a;->getValue()Lcom/appfour/backbone/api/objects/EventData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-object v1, p0, Labcd/lv;->v5:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/lv;->v5:Ljava/lang/Object;

    throw v0
.end method

.method public j6(J)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {p1, p2}, Labcd/Ev;->j6(J)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/lv;->v5:Ljava/lang/Object;

    invoke-static {v0, p1}, Labcd/Ev;->j6(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 8

    :try_start_0
    invoke-static {p2, p3, p4, p5}, Labcd/Ev;->j6(JJ)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Field not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6(Ljava/lang/Object;[Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 10

    :try_start_0
    invoke-static {p3, p4, p5, p6}, Labcd/Ev;->DW(JJ)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Invocation failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/lang/Object;J)Z
    .registers 6

    invoke-static {p1, p2, p3}, Labcd/Ev;->DW(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method
