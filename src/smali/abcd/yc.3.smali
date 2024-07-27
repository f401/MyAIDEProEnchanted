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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1771129fd0750e38L
    .end annotation

    const-wide v8, 0x14e57695e850fdbfL    # 5.222855149521068E-208

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/yc;

    const-wide v2, -0x5fcd2a07c2b42c0L    # -5.439162863533342E279

    const-wide v4, -0x5fcd2a07c2b42c0L    # -5.439162863533342E279

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/yc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14e57695e850fdbfL    # 5.222855149521068E-208

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/yc;->DW:Ljava/lang/Object;

    new-instance v0, Labcd/xc;

    const-string v1, "Time getter"

    invoke-direct {v0, v1}, Labcd/xc;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x30b7b7909ce110c9L    # -8.580851656874552E73

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x30b7b7909ce110c9L    # -8.580851656874552E73

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW()J
    .registers 8

    const-wide v6, -0x945fe2be21b7f3dL    # -8.189339257420311E263

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x945fe2be21b7f3dL    # -8.189339257420311E263

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v1, Labcd/yc;->DW:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-wide v2, Labcd/yc;->j6:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
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
