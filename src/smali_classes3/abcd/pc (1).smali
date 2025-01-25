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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2bf14224f6d0ea33L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x11c1a7772ab44ff3L  # -1.0969224939895587E223

    :try_start_6
    const-class v3, Labcd/pc;

    const-wide v4, 0x609bf359d214eab1L  # 2.3984392506733164E157

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/pc;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Labcd/pc;->j6:Ljava/lang/Object;

    new-instance v3, Labcd/oc;

    invoke-direct {v3}, Labcd/oc;-><init>()V

    sput-object v3, Labcd/pc;->DW:Labcd/pc;
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v3

    sget-boolean v4, Labcd/pc;->Hw:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2d21d7511742c723L  # -1.535870070249421E91

    :try_start_6
    sget-boolean v3, Labcd/pc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/pc;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6()Labcd/pc;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x353da6edac0efc90L  # 3.0958199405126696E-52

    :try_start_6
    sget-boolean v3, Labcd/pc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/pc;->j6:Ljava/lang/Object;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_17

    :try_start_10
    sget-object v4, Labcd/pc;->DW:Labcd/pc;

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

    sget-boolean v4, Labcd/pc;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method


# virtual methods
.method public abstract j6(Ljava/lang/String;Ljava/lang/String;)Z
.end method
