.class public Lcom/aide/ui/build/nativeexecutable/l;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/nativeexecutable/l$b;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Labcd/ru;
        field = 0x2c6c22c9063e1798L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/build/nativeexecutable/l$a;
    .annotation runtime Labcd/ru;
        field = -0x3c4b87df57b616e0L
    .end annotation
.end field

.field private v5:Lcom/aide/ui/build/nativeexecutable/a;
    .annotation runtime Labcd/ru;
        field = 0x2937987e033d81ffL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/nativeexecutable/l;

    const-wide v1, -0x2921cbc5f25f46c8L  # -2.8374162234455972E110

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3d399a6e92f381c5L  # -4.925097470182046E13

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/nativeexecutable/l;->FH:Ljava/util/concurrent/ExecutorService;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4253f4a49be1c8d0L
    .end annotation

    const-wide v0, 0x581ba0f15ed09e74L  # 2.7215638488386406E116

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/aide/ui/build/nativeexecutable/a;->DW()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic DW(Lcom/aide/ui/build/nativeexecutable/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/l;->DW()V

    return-void
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3f195c501350b940L
    .end annotation

    const-wide v0, 0x3f55522066d928L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/aide/ui/build/nativeexecutable/a;->j6()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/nativeexecutable/l;->j6()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/l;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/nativeexecutable/l;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method private j6(Ljava/lang/Throwable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x24f409b395f88ce0L
    .end annotation

    const-wide v0, -0x3ac70b5cb0b9320L  # -7.624626895996481E290

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    if-eqz v2, :cond_16

    invoke-interface {v2, p1}, Lcom/aide/ui/build/nativeexecutable/a;->j6(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method


# virtual methods
.method public j6(Lcom/aide/ui/build/nativeexecutable/a;)V
    .registers 6

    const-wide v0, 0x25cfa7c6dd980b29L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x13d3f73e7cc83a00L  # 3.70671960284148E-213

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->FH:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aide/ui/build/nativeexecutable/l$a;

    new-instance v2, Lcom/aide/ui/build/nativeexecutable/l$b;

    invoke-direct {v2, p0, p1, p2}, Lcom/aide/ui/build/nativeexecutable/l$b;-><init>(Lcom/aide/ui/build/nativeexecutable/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/build/nativeexecutable/l$a;-><init>(Lcom/aide/ui/build/nativeexecutable/l;Lcom/aide/ui/build/nativeexecutable/l$b;)V

    iput-object v1, p0, Lcom/aide/ui/build/nativeexecutable/l;->Hw:Lcom/aide/ui/build/nativeexecutable/l$a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x13d3f73e7cc83a00L  # 3.70671960284148E-213

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method
