.class Lcom/aide/ui/build/android/AaptService$d;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/AaptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/aide/ui/build/android/AaptService$b;",
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
.field private FH:Lcom/aide/ui/build/android/AaptService$a;
    .annotation runtime Labcd/ru;
        field = -0x20b3a4590388a2dbL
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/build/android/AaptService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/AaptService$d;

    const-wide v1, -0x240e85c8af3057c1L  # -7.939534925552603E134

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/AaptService;Lcom/aide/ui/build/android/AaptService$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x71be53bcded7bbacL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$d;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x39af377e49955cbL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService$d;->Hw:Lcom/aide/ui/build/android/AaptService;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/aide/ui/build/android/AaptService$d;->FH:Lcom/aide/ui/build/android/AaptService$a;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService$d;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x39af377e49955cbL

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
        method = -0x28b86e190f17c80L
    .end annotation

    const-wide v0, 0xc9873f90fff4300L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3e

    if-nez v2, :cond_3d

    :try_start_12
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/build/android/AaptService$b;

    iget-object v3, v2, Lcom/aide/ui/build/android/AaptService$b;->v5:Ljava/util/Map;

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$d;->Hw:Lcom/aide/ui/build/android/AaptService;

    iget-boolean v2, v2, Lcom/aide/ui/build/android/AaptService$b;->FH:Z

    invoke-static {v3, v2}, Lcom/aide/ui/build/android/AaptService;->j6(Lcom/aide/ui/build/android/AaptService;Z)V

    goto :goto_3d

    :cond_24
    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$d;->Hw:Lcom/aide/ui/build/android/AaptService;

    iget-object v2, v2, Lcom/aide/ui/build/android/AaptService$b;->v5:Ljava/util/Map;

    invoke-static {v3, v2}, Lcom/aide/ui/build/android/AaptService;->j6(Lcom/aide/ui/build/android/AaptService;Ljava/util/Map;)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_2b} :catch_37
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_2b} :catch_2c
    .catchall {:try_start_12 .. :try_end_2b} :catchall_3e

    goto :goto_3d

    :catch_2c
    move-exception v2

    :try_start_2d
    iget-object v3, p0, Lcom/aide/ui/build/android/AaptService$d;->Hw:Lcom/aide/ui/build/android/AaptService;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/aide/ui/build/android/AaptService;->j6(Lcom/aide/ui/build/android/AaptService;Ljava/lang/Throwable;)V

    goto :goto_3d

    :catch_37
    move-exception v2

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$d;->Hw:Lcom/aide/ui/build/android/AaptService;

    invoke-static {v2}, Lcom/aide/ui/build/android/AaptService;->j6(Lcom/aide/ui/build/android/AaptService;)V
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3e

    :cond_3d
    :goto_3d
    return-void

    :catchall_3e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$d;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    throw v2
.end method
