.class public abstract Labcd/pc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Labcd/pc;
    .annotation runtime Labcd/ru;
        field = -0x35bca49e28f10dd0L
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
        field = -0xb6bc086b57b6d70L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2bf14224f6d0ea33L
    .end annotation

    const-wide v8, -0x11c1a7772ab44ff3L    # -1.0969224939895587E223

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/pc;

    const-wide v2, 0x609bf359d214eab1L    # 2.3984392506733164E157

    const-wide v4, 0x609bf359d214eab1L    # 2.3984392506733164E157

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/pc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11c1a7772ab44ff3L    # -1.0969224939895587E223

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/pc;->j6:Ljava/lang/Object;

    new-instance v0, Labcd/oc;

    invoke-direct {v0}, Labcd/oc;-><init>()V

    sput-object v0, Labcd/pc;->DW:Labcd/pc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/pc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x2d21d7511742c723L    # -1.535870070249421E91

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/pc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d21d7511742c723L    # -1.535870070249421E91

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/pc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6()Labcd/pc;
    .registers 6

    const-wide v4, 0x353da6edac0efc90L    # 3.0958199405126696E-52

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/pc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x353da6edac0efc90L    # 3.0958199405126696E-52

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v1, Labcd/pc;->j6:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Labcd/pc;->DW:Labcd/pc;

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

    sget-boolean v1, Labcd/pc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public abstract j6(Ljava/lang/String;Ljava/lang/String;)Z
.end method
