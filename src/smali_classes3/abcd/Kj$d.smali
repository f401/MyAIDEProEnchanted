.class Labcd/Kj$d;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Kj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;"
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
.field private FH:Landroid/app/Activity;
    .annotation runtime Labcd/ru;
        field = 0x27f8d0a5eaff3107L
    .end annotation
.end field

.field final Hw:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Kj$d;

    const-wide v1, 0x51a88981548e24d0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/concurrent/Callable;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x40e15d68cd07364L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kj$d;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x162746a2b8f6e43cL  # -7.570023792867573E201

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-direct {p0, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Labcd/Kj$d;->FH:Landroid/app/Activity;
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/Kj$d;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x162746a2b8f6e43cL  # -7.570023792867573E201

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method static synthetic j6(Labcd/Kj$d;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Labcd/Kj$d;->FH:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method protected done()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1fff23fcd44bb2b7L
    .end annotation

    const-wide v0, -0x1342aff13d9afb2cL  # -6.315578091464706E215

    :try_start_5
    sget-boolean v2, Labcd/Kj$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3e

    if-nez v2, :cond_35

    :try_start_12
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    new-instance v2, Labcd/Oj;

    invoke-direct {v2, p0}, Labcd/Oj;-><init>(Labcd/Kj$d;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1d} :catch_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catchall {:try_start_12 .. :try_end_1d} :catchall_3e

    goto :goto_3d

    :catch_1e
    move-exception v2

    :try_start_1f
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    new-instance v3, Labcd/Qj;

    invoke-direct {v3, p0, v2}, Labcd/Qj;-><init>(Labcd/Kj$d;Ljava/util/concurrent/ExecutionException;)V

    :goto_27
    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    goto :goto_3d

    :catch_2b
    move-exception v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    new-instance v3, Labcd/Pj;

    invoke-direct {v3, p0, v2}, Labcd/Pj;-><init>(Labcd/Kj$d;Ljava/lang/InterruptedException;)V

    goto :goto_27

    :cond_35
    new-instance v2, Labcd/Rj;

    invoke-direct {v2, p0}, Labcd/Rj;-><init>(Labcd/Kj$d;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_3e

    :goto_3d
    return-void

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/Kj$d;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    goto :goto_48

    :goto_47
    throw v2

    :goto_48
    goto :goto_47
.end method
