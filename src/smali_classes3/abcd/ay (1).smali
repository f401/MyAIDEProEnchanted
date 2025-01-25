.class public final Labcd/ay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ay$a;,
        Labcd/ay$b;
    }
.end annotation


# direct methods
.method private static DW(Labcd/Yx;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "LYx<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/Yx;->v5()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Labcd/Yx;->DW()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Labcd/Yx;->FH()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Labcd/Yx;->j6()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/Yx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "LYx<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Labcd/qy;

    invoke-direct {v0}, Labcd/qy;-><init>()V

    invoke-virtual {v0, p0}, Labcd/qy;->j6(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j6(Labcd/Yx;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "LYx<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/r;->j6()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Labcd/Yx;->Hw()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Labcd/ay;->DW(Labcd/Yx;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance v0, Labcd/ay$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/ay$a;-><init>(Labcd/ry;)V

    invoke-static {p0, v0}, Labcd/ay;->j6(Labcd/Yx;Labcd/ay$b;)V

    invoke-virtual {v0}, Labcd/ay$a;->DW()V

    invoke-static {p0}, Labcd/ay;->DW(Labcd/Yx;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Labcd/Yx;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "LYx<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/internal/r;->j6()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Labcd/Yx;->Hw()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Labcd/ay;->DW(Labcd/Yx;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance v0, Labcd/ay$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/ay$a;-><init>(Labcd/ry;)V

    invoke-static {p0, v0}, Labcd/ay;->j6(Labcd/Yx;Labcd/ay$b;)V

    invoke-virtual {v0, p1, p2, p3}, Labcd/ay$a;->j6(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-static {p0}, Labcd/ay;->DW(Labcd/Yx;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2c
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j6(Labcd/Yx;Labcd/ay$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYx<",
            "*>;",
            "Labcd/ay$b;",
            ")V"
        }
    .end annotation

    sget-object v0, Labcd/_x;->DW:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Wx;)Labcd/Yx;

    sget-object v0, Labcd/_x;->DW:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Vx;)Labcd/Yx;

    sget-object v0, Labcd/_x;->DW:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Tx;)Labcd/Yx;

    return-void
.end method
