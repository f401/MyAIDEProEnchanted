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

    const/4 v0, 0x0

    const-class v1, Labcd/tE;

    monitor-enter v1

    :try_start_0
    sget v1, Labcd/tE;->DW:I

    if-lez v1, :cond_0

    sget-object v0, Labcd/tE;->j6:[Ljava/util/zip/Inflater;

    sget v1, Labcd/tE;->DW:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Labcd/tE;->DW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget-object v0, v0, v1

    :try_start_1
    sget-object v1, Labcd/tE;->j6:[Ljava/util/zip/Inflater;

    sget v2, Labcd/tE;->DW:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v1, Labcd/tE;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Labcd/tE;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Labcd/tE;

    monitor-exit v1

    throw v0
.end method

.method private static DW(Ljava/util/zip/Inflater;)Z
    .registers 4

    const-class v0, Labcd/tE;

    monitor-enter v0

    :try_start_0
    sget v0, Labcd/tE;->DW:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v0, Labcd/tE;->j6:[Ljava/util/zip/Inflater;

    sget v1, Labcd/tE;->DW:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Labcd/tE;->DW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object p0, v0, v1

    const-class v0, Labcd/tE;

    monitor-exit v0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-class v0, Labcd/tE;

    monitor-exit v0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Labcd/tE;

    monitor-exit v1

    throw v0
.end method

.method public static j6()Ljava/util/zip/Inflater;
    .registers 1

    invoke-static {}, Labcd/tE;->DW()Ljava/util/zip/Inflater;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/XD;

    invoke-direct {v0}, Labcd/XD;-><init>()V

    goto :goto_0
.end method

.method public static j6(Ljava/util/zip/Inflater;)V
    .registers 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    invoke-static {p0}, Labcd/tE;->DW(Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Labcd/XD;

    invoke-virtual {p0}, Labcd/XD;->j6()V

    :cond_0
    return-void
.end method
