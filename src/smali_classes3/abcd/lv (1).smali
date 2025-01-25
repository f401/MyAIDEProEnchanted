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
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iput-object p1, p0, Labcd/lv;->v5:Ljava/lang/Object;

    invoke-interface {p2}, Labcd/lv$a;->getValue()Lcom/appfour/backbone/api/objects/EventData;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    iput-object v0, p0, Labcd/lv;->v5:Ljava/lang/Object;

    return-object p1

    :catchall_a
    move-exception p1

    iput-object v0, p0, Labcd/lv;->v5:Ljava/lang/Object;

    throw p1
.end method

.method public j6(J)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p1, p2}, Labcd/Ev;->j6(J)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/lv;->v5:Ljava/lang/Object;

    invoke-static {v0, p1}, Labcd/Ev;->j6(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-static {p2, p3, p4, p5}, Labcd/Ev;->j6(JJ)Ljava/lang/reflect/Field;

    move-result-object p2

    if-eqz p2, :cond_f

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Field not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    move-exception p1

    new-instance p2, Ljava/lang/IllegalAccessError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public j6(Ljava/lang/Object;[Ljava/lang/Object;JJ)Ljava/lang/Object;
    .registers 7

    :try_start_0
    invoke-static {p3, p4, p5, p6}, Labcd/Ev;->DW(JJ)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_10

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Invocation failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/Object;J)Z
    .registers 4

    invoke-static {p1, p2, p3}, Labcd/Ev;->DW(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method
