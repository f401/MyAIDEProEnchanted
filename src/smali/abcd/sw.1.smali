.class public Labcd/sw;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/lang/Object;

.field private static j6:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/sw;->DW:Ljava/lang/Object;

    return-void
.end method

.method public static DW()V
    .registers 2

    sget-object v1, Labcd/sw;->DW:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-static {}, Labcd/sw;->j6()Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static FH()Z
    .registers 2

    const-string v0, "true"

    const-string v1, "debug.backbone"

    invoke-static {v1}, Labcd/sw;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static j6()Z
    .registers 4

    sget-object v1, Labcd/sw;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labcd/sw;->j6:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Labcd/sw;->FH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-static {}, Labcd/rw;->v5()Z

    move-result v0

    sget-object v2, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Labcd/rw;->j6(Z)V

    sget-object v2, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v0, v2, :cond_1

    sget-object v0, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x295eecc8

    const v2, 0x108007d

    const-string v3, "backbone developer mode enabled"

    invoke-static {v0, v2, v3}, Labcd/xw;->j6(IILjava/lang/String;)V

    :cond_1
    :goto_1
    sget-object v0, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const v0, 0x295eecc8

    const v2, 0x108008a

    :try_start_1
    const-string v3, "backbone developer mode disabled"

    invoke-static {v0, v2, v3}, Labcd/xw;->j6(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
