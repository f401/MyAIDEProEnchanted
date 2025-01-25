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
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/build/g$b;

    const-wide v1, -0x38b72a05241cca2cL  # -2.579103058858795E35

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/g;Lcom/aide/ui/build/g$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x19adfaa52801484L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x33ab4d8d2eae1919L  # 8.495329244070848E-60

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/aide/ui/build/g$b;->FH:Lcom/aide/ui/build/g$a;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g$b;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x33ab4d8d2eae1919L  # 8.495329244070848E-60

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method protected done()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x6b19f8bd43e6160L
    .end annotation

    const-wide v0, 0x10406fba6f74fd11L  # 2.117390916039144E-230

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/g$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_59

    if-nez v2, :cond_58

    :try_start_12
    iget-object v2, p0, Lcom/aide/ui/build/g$b;->FH:Lcom/aide/ui/build/g$a;

    iget-object v2, v2, Lcom/aide/ui/build/g$a;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v5

    invoke-virtual {v5, v4}, Labcd/Zk;->j3(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_1b

    :cond_33
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_41

    iget-object v2, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-static {v2, v3}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Z)V

    goto :goto_58

    :cond_41
    iget-object v3, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-static {v3, v2}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Ljava/util/Map;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_46} :catch_52
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_46} :catch_47
    .catchall {:try_start_12 .. :try_end_46} :catchall_59

    goto :goto_58

    :catch_47
    move-exception v2

    :try_start_48
    iget-object v3, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;Ljava/lang/Throwable;)V

    goto :goto_58

    :catch_52
    move-exception v2

    iget-object v2, p0, Lcom/aide/ui/build/g$b;->Hw:Lcom/aide/ui/build/g;

    invoke-static {v2}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/g;)V
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_59

    :cond_58
    :goto_58
    return-void

    :catchall_59
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/g$b;->DW:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    goto :goto_63

    :goto_62
    throw v2

    :goto_63
    goto :goto_62
.end method
