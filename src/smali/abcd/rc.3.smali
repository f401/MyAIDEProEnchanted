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
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x30a53d0a2ca18d00L
    .end annotation

    const-wide v8, 0x186aa284805bebd0L    # 4.670278308162898E-191

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/rc;

    const-wide v2, 0x30b22609335604cfL    # 4.012394948719941E-74

    const-wide v4, 0x30b22609335604cfL    # 4.012394948719941E-74

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/rc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x186aa284805bebd0L    # 4.670278308162898E-191

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/rc;->j6:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/rc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x41d78e3db70d4300L    # 1.5807915162072144E9

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/rc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x41d78e3db70d4300L    # 1.5807915162072144E9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/rc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6()Labcd/rc;
    .registers 6

    const-wide v4, -0x32669eb916a2cb7bL    # -6.682061819355388E65

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/rc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32669eb916a2cb7bL    # -6.682061819355388E65

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v1, Labcd/rc;->j6:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Labcd/rc;->DW:Labcd/rc;

    monitor-exit v1

    return-object v0

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

    sget-boolean v1, Labcd/rc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public abstract j6(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;
.end method
