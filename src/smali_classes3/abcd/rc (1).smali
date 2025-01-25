.class public abstract Labcd/rc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Labcd/rc;
    .annotation runtime Labcd/ru;
        field = 0x33f26b0a0f146cabL
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

.field private static j6:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0xe5d4e34bb7001f9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x30a53d0a2ca18d00L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x186aa284805bebd0L  # 4.670278308162898E-191

    :try_start_6
    const-class v3, Labcd/rc;

    const-wide v4, 0x30b22609335604cfL  # 4.012394948719941E-74

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/rc;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Labcd/rc;->j6:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/rc;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x41d78e3db70d4300L  # 1.5807915162072144E9

    :try_start_6
    sget-boolean v3, Labcd/rc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/rc;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6()Labcd/rc;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x32669eb916a2cb7bL  # -6.682061819355388E65

    :try_start_6
    sget-boolean v3, Labcd/rc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/rc;->j6:Ljava/lang/Object;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_17

    :try_start_10
    sget-object v4, Labcd/rc;->DW:Labcd/rc;

    monitor-exit v3

    return-object v4

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

    sget-boolean v4, Labcd/rc;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method


# virtual methods
.method public abstract j6(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;
.end method
