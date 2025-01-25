.class Lcom/aide/ui/build/nativeexecutable/l$a;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/nativeexecutable/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field private FH:Lcom/aide/ui/build/nativeexecutable/l$b;
    .annotation runtime Labcd/ru;
        field = 0x58022c244718360L
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/build/nativeexecutable/l;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/nativeexecutable/l$a;

    const-wide v1, -0x4ea2d5ec690dcbfL  # -8.112707957196663E284

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/nativeexecutable/l;Lcom/aide/ui/build/nativeexecutable/l$b;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x18c5a51a6e1a73fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x6e876bb2ff53f4afL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/l$a;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/aide/ui/build/nativeexecutable/l$a;->FH:Lcom/aide/ui/build/nativeexecutable/l$b;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l$a;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x6e876bb2ff53f4afL

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
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x165e4b6f1e592655L
    .end annotation

    const-wide v0, 0x1c30ee2d8e4cd2f8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/l$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2d

    if-nez v2, :cond_2c

    :try_start_12
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l$a;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    invoke-static {v2}, Lcom/aide/ui/build/nativeexecutable/l;->j6(Lcom/aide/ui/build/nativeexecutable/l;)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1a} :catch_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catchall {:try_start_12 .. :try_end_1a} :catchall_2d

    goto :goto_2c

    :catch_1b
    move-exception v2

    :try_start_1c
    iget-object v3, p0, Lcom/aide/ui/build/nativeexecutable/l$a;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/aide/ui/build/nativeexecutable/l;->j6(Lcom/aide/ui/build/nativeexecutable/l;Ljava/lang/Throwable;)V

    goto :goto_2c

    :catch_26
    move-exception v2

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l$a;->Hw:Lcom/aide/ui/build/nativeexecutable/l;

    invoke-static {v2}, Lcom/aide/ui/build/nativeexecutable/l;->DW(Lcom/aide/ui/build/nativeexecutable/l;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2d

    :cond_2c
    :goto_2c
    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l$a;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method
