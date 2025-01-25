.class public Labcd/yc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x19b23874a9eb1d65L
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:J
    .annotation runtime Labcd/ru;
        field = 0x19dcc060929b941dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1771129fd0750e38L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14e57695e850fdbfL  # 5.222855149521068E-208

    :try_start_6
    const-class v3, Labcd/yc;

    const-wide v4, -0x5fcd2a07c2b42c0L  # -5.439162863533342E279

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/yc;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Labcd/yc;->DW:Ljava/lang/Object;

    new-instance v3, Labcd/xc;

    const-string v4, "Time getter"

    invoke-direct {v3, v4}, Labcd/xc;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v3

    sget-boolean v4, Labcd/yc;->Hw:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x30b7b7909ce110c9L  # -8.580851656874552E73

    :try_start_6
    sget-boolean v3, Labcd/yc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/yc;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW()J
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x945fe2be21b7f3dL  # -8.189339257420311E263

    :try_start_6
    sget-boolean v3, Labcd/yc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/yc;->DW:Ljava/lang/Object;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_17

    :try_start_10
    sget-wide v4, Labcd/yc;->j6:J

    monitor-exit v3

    return-wide v4

    :catchall_14
    move-exception v4

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    :try_start_16
    throw v4
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/yc;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method static synthetic j6(J)J
    .registers 2

    sput-wide p0, Labcd/yc;->j6:J

    return-wide p0
.end method

.method static synthetic j6()Ljava/lang/Object;
    .registers 1

    sget-object v0, Labcd/yc;->DW:Ljava/lang/Object;

    return-object v0
.end method
