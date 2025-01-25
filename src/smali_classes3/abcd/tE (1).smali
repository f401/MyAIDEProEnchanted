.class public Labcd/tE;
.super Ljava/lang/Object;


# static fields
.field private static DW:I

.field private static final j6:[Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/zip/Inflater;

    sput-object v0, Labcd/tE;->j6:[Ljava/util/zip/Inflater;

    return-void
.end method

.method private static DW()Ljava/util/zip/Inflater;
    .registers 4

    const-class v0, Labcd/tE;

    monitor-enter v0

    :try_start_3
    sget v0, Labcd/tE;->DW:I

    const/4 v1, 0x0

    if-lez v0, :cond_16

    sget-object v2, Labcd/tE;->j6:[Ljava/util/zip/Inflater;

    add-int/lit8 v0, v0, -0x1

    sput v0, Labcd/tE;->DW:I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a

    aget-object v3, v2, v0

    :try_start_10
    aput-object v1, v2, v0
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1a

    const-class v0, Labcd/tE;

    monitor-exit v0

    return-object v3

    :cond_16
    const-class v0, Labcd/tE;

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v0

    const-class v1, Labcd/tE;

    monitor-exit v1

    throw v0
.end method

.method private static DW(Ljava/util/zip/Inflater;)Z
    .registers 4

    const-class v0, Labcd/tE;

    monitor-enter v0

    :try_start_3
    sget v0, Labcd/tE;->DW:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_15

    sget-object v1, Labcd/tE;->j6:[Ljava/util/zip/Inflater;

    add-int/lit8 v2, v0, 0x1

    sput v2, Labcd/tE;->DW:I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a

    aput-object p0, v1, v0

    const-class p0, Labcd/tE;

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_15
    const-class p0, Labcd/tE;

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_1a
    move-exception p0

    const-class v0, Labcd/tE;

    monitor-exit v0

    throw p0
.end method

.method public static j6()Ljava/util/zip/Inflater;
    .registers 1

    invoke-static {}, Labcd/tE;->DW()Ljava/util/zip/Inflater;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_c

    :cond_7
    new-instance v0, Labcd/XD;

    invoke-direct {v0}, Labcd/XD;-><init>()V

    :goto_c
    return-object v0
.end method

.method public static j6(Ljava/util/zip/Inflater;)V
    .registers 2

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    invoke-static {p0}, Labcd/tE;->DW(Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_10

    check-cast p0, Labcd/XD;

    invoke-virtual {p0}, Labcd/XD;->j6()V

    :cond_10
    return-void
.end method
