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
        "Ljava/util/concurrent/FutureTask",
        "<",
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
    .registers 4

    const-wide v2, 0x51a88981548e24d0L

    const-class v0, Labcd/Kj$d;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/concurrent/Callable;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x40e15d68cd07364L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0x162746a2b8f6e43cL    # -7.570023792867573E201

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kj$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x162746a2b8f6e43cL    # -7.570023792867573E201

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-direct {p0, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Labcd/Kj$d;->FH:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kj$d;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Labcd/Kj$d;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Labcd/Kj$d;->FH:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected done()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1fff23fcd44bb2b7L
    .end annotation

    const-wide v2, -0x1342aff13d9afb2cL    # -6.315578091464706E215

    :try_start_0
    sget-boolean v0, Labcd/Kj$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1342aff13d9afb2cL    # -6.315578091464706E215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    new-instance v0, Labcd/Oj;

    invoke-direct {v0, p0}, Labcd/Oj;-><init>(Labcd/Kj$d;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    new-instance v1, Labcd/Qj;

    invoke-direct {v1, p0, v0}, Labcd/Qj;-><init>(Labcd/Kj$d;Ljava/util/concurrent/ExecutionException;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Kj$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    new-instance v1, Labcd/Pj;

    invoke-direct {v1, p0, v0}, Labcd/Pj;-><init>(Labcd/Kj$d;Ljava/lang/InterruptedException;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/Rj;

    invoke-direct {v0, p0}, Labcd/Rj;-><init>(Labcd/Kj$d;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
