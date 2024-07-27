.class final Labcd/ey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Labcd/dy;

.field private final j6:Labcd/Yx;


# direct methods
.method constructor <init>(Labcd/dy;Labcd/Yx;)V
    .registers 3

    iput-object p1, p0, Labcd/ey;->DW:Labcd/dy;

    iput-object p2, p0, Labcd/ey;->j6:Labcd/Yx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/ey;->DW:Labcd/dy;

    invoke-static {v0}, Labcd/dy;->j6(Labcd/dy;)Labcd/Sx;

    move-result-object v0

    iget-object v1, p0, Labcd/ey;->j6:Labcd/Yx;

    invoke-interface {v0, v1}, Labcd/Sx;->j6(Labcd/Yx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Yx;
    :try_end_0
    .catch Labcd/Xx; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/ey;->DW:Labcd/dy;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/dy;->j6(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Labcd/_x;->DW:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Labcd/ey;->DW:Labcd/dy;

    invoke-virtual {v0, v1, v2}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Wx;)Labcd/Yx;

    sget-object v1, Labcd/_x;->DW:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Labcd/ey;->DW:Labcd/dy;

    invoke-virtual {v0, v1, v2}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Vx;)Labcd/Yx;

    sget-object v1, Labcd/_x;->DW:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Labcd/ey;->DW:Labcd/dy;

    invoke-virtual {v0, v1, v2}, Labcd/Yx;->j6(Ljava/util/concurrent/Executor;Labcd/Tx;)Labcd/Yx;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Labcd/ey;->DW:Labcd/dy;

    invoke-static {v1}, Labcd/dy;->DW(Labcd/dy;)Labcd/qy;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/ey;->DW:Labcd/dy;

    invoke-static {v1}, Labcd/dy;->DW(Labcd/dy;)Labcd/qy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Labcd/ey;->DW:Labcd/dy;

    invoke-static {v1}, Labcd/dy;->DW(Labcd/dy;)Labcd/qy;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    goto :goto_0
.end method
