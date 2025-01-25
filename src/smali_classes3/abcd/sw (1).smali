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

    sget-object v0, Labcd/sw;->DW:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-static {}, Labcd/sw;->j6()Z

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static FH()Z
    .registers 2

    const-string v0, "debug.backbone"

    invoke-static {v0}, Labcd/sw;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    move-exception p0

    return-object v0
.end method

.method public static j6()Z
    .registers 4

    sget-object v0, Labcd/sw;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Labcd/sw;->j6:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_d
    invoke-static {}, Labcd/sw;->FH()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-static {}, Labcd/rw;->v5()Z

    move-result v1

    sget-object v2, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Labcd/rw;->j6(Z)V

    sget-object v2, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_48

    sget-object v1, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x295eecc8

    if-eqz v1, :cond_40

    const-string v1, "backbone developer mode enabled"

    const v3, 0x108007d

    invoke-static {v2, v3, v1}, Labcd/xw;->j6(IILjava/lang/String;)V

    goto :goto_48

    :cond_40
    const-string v1, "backbone developer mode disabled"

    const v3, 0x108008a

    invoke-static {v2, v3, v1}, Labcd/xw;->j6(IILjava/lang/String;)V

    :cond_48
    :goto_48
    sget-object v1, Labcd/sw;->j6:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method
