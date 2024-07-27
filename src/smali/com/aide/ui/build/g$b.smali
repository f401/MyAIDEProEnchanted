.class Lcom/aide/ui/build/g$b;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/aide/engine/SyntaxError;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Lcom/aide/ui/build/g$a;
    .annotation runtime Labcd/ru;
        field = 0x139ab9c13c071f68L
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/build/g;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x38b72a05241cca2cL    # -2.579103058858795E35

    const-class v0, Lcom/aide/ui/build/g$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/g;Lcom/aide/ui/build/g$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x19adfaa52801484L
    .end annotation

    const-wide v2, 0x33ab4d8d2eae1919L    # 8.495329244070848E-60

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x33ab4d8d2eae1919L    # 8.495329244070848E-60

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/aide/ui/build/g$b;->FH:Lcom/aide/ui/build/g$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/g$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method protected done()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x6b19f8bd43e6160L
    .end annotation

    const-wide v4, 0x10406fba6f74fd11L    # 2.117390916039144E-230

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10406fba6f74fd11L    # 2.117390916039144E-230

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/build/g$b;->FH:Lcom/aide/ui/build/g$a;

    iget-object v1, v1, Lcom/aide/ui/build/g$a;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v0}, Labcd/Zk;->j3(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-static {v0, v1}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-static {v1, v0}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-static {v0}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g$b;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
