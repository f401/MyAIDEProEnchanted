.class public abstract Lcom/aide/ui/views/editor/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
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
.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x3116b76d86fb0f0cL
    .end annotation
.end field

.field private Hw:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = -0x1862c287d3fc9629L
    .end annotation
.end field

.field private v5:J
    .annotation runtime Labcd/ru;
        field = 0x173a155c71035b00L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/i;

    const-wide v1, -0x15cef2be534a59c8L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x42a229615afc9e8bL  # -4.240285736646199E-13

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/i;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/aide/ui/views/editor/i;-><init>(J)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/i;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(J)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x52658b3f5c4fb3b0L  # 8.571439804529382E88

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/i;->j6:Z

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v1, v2, v0, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/i;->Hw:Landroid/os/Handler;

    iput-wide p1, p0, Lcom/aide/ui/views/editor/i;->v5:J
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/i;->DW:Z

    if-eqz v4, :cond_2c

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v3
.end method


# virtual methods
.method public DW()V
    .registers 8

    monitor-enter p0

    const-wide v0, -0x335b782ae805122fL  # -1.6495697330553146E61

    :try_start_6
    sget-boolean v2, Lcom/aide/ui/views/editor/i;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    iget-boolean v2, p0, Lcom/aide/ui/views/editor/i;->FH:Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2b

    if-eqz v2, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    const/4 v2, 0x1

    :try_start_14
    iput-boolean v2, p0, Lcom/aide/ui/views/editor/i;->FH:Z

    iget-wide v2, p0, Lcom/aide/ui/views/editor/i;->v5:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_24

    iget-object v2, p0, Lcom/aide/ui/views/editor/i;->Hw:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_29

    :cond_24
    iget-object v4, p0, Lcom/aide/ui/views/editor/i;->Hw:Landroid/os/Handler;

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2b

    :goto_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v2

    :try_start_2c
    sget-boolean v3, Lcom/aide/ui/views/editor/i;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract FH()V
.end method

.method public j6()Z
    .registers 5

    monitor-enter p0

    const-wide v0, 0x2cc1b4e1d45e4d5L

    :try_start_6
    sget-boolean v2, Lcom/aide/ui/views/editor/i;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/i;->FH:Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v2

    :try_start_12
    sget-boolean v3, Lcom/aide/ui/views/editor/i;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 5

    const-wide v0, -0x18a934c1b37b9029L  # -6.347406219683663E189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_18

    const/4 v2, 0x0

    :try_start_e
    iput-boolean v2, p0, Lcom/aide/ui/views/editor/i;->FH:Z

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    :try_start_11
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/i;->FH()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    return-void

    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/i;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
