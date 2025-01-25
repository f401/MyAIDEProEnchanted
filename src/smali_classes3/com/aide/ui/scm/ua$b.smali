.class Lcom/aide/ui/scm/ua$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/ua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
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
.field private FH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x6297cc095cd7380L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x9f19ac8aba5ee70L
    .end annotation
.end field

.field private Zo:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x4b66fd0131f4f79L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x606a427f76b442bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/ua$b;

    const-wide v1, -0x3d1d31da20b7ef81L  # -1.6541286362329997E14

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xdcb45af495894e8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x28fc324e0d578141L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/scm/I;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x68cf7d4da8e6484L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/scm/ua$b;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1cfdcb363da4bL
    .end annotation

    const-wide v0, -0x424484bfcfb39dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    :try_start_f
    iget-boolean v3, p0, Lcom/aide/ui/scm/ua$b;->v5:Z

    if-eqz v3, :cond_16

    monitor-exit v2

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/aide/ui/scm/ua$b;->Hw:Z

    iget-object v4, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return v3

    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    :try_start_22
    throw v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2fa31853b0c98f8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide v0, 0x17722752fbc5ba0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1b

    :cond_c
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {p0, v2, v3, v4}, Lcom/aide/ui/scm/ua$b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_13} :catch_14
    .catchall {:try_start_f .. :try_end_13} :catchall_1b

    return-object v0

    :catch_14
    move-exception v2

    :try_start_15
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1e7398c26afe44bcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x239f77f0882635f0L

    invoke-static {v1, v2, p0, v0, p3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p3, v0, :cond_56

    iget-object v0, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    monitor-enter v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_5c

    :try_start_18
    iget-boolean v1, p0, Lcom/aide/ui/scm/ua$b;->v5:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/aide/ui/scm/ua$b;->Zo:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_20
    iget-boolean v1, p0, Lcom/aide/ui/scm/ua$b;->Hw:Z

    if-nez v1, :cond_4d

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_30

    iget-object v1, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_35

    :cond_30
    iget-object v1, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    :goto_35
    iget-boolean v1, p0, Lcom/aide/ui/scm/ua$b;->v5:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/aide/ui/scm/ua$b;->Zo:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_3d
    iget-boolean v1, p0, Lcom/aide/ui/scm/ua$b;->Hw:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :cond_47
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4d
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_18 .. :try_end_55} :catchall_53

    :try_start_55
    throw v1

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v1, :cond_71

    const-wide v2, 0x239f77f0882635f0L

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_71
    throw v0
.end method

.method public isCancelled()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x37ab9f3ee715b1e7L
    .end annotation

    const-wide v0, 0x9f3a34028c3b415L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget-boolean v3, p0, Lcom/aide/ui/scm/ua$b;->Hw:Z

    monitor-exit v2

    return v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public isDone()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2c45bd6c61e0a400L
    .end annotation

    const-wide v0, -0x2418233e25b60590L  # -5.420021139193709E134

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget-boolean v3, p0, Lcom/aide/ui/scm/ua$b;->v5:Z

    monitor-exit v2

    return v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(Ljava/lang/Object;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf430d93caa7a711L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide v0, 0xc7d270bfca72c37L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2e

    :try_start_f
    iget-boolean v3, p0, Lcom/aide/ui/scm/ua$b;->v5:Z

    if-nez v3, :cond_25

    iget-boolean v3, p0, Lcom/aide/ui/scm/ua$b;->Hw:Z

    if-eqz v3, :cond_19

    monitor-exit v2

    return-void

    :cond_19
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/aide/ui/scm/ua$b;->v5:Z

    iput-object p1, p0, Lcom/aide/ui/scm/ua$b;->Zo:Ljava/lang/Object;

    iget-object v3, p0, Lcom/aide/ui/scm/ua$b;->FH:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :cond_25
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :catchall_2b
    move-exception v3

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$b;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method
