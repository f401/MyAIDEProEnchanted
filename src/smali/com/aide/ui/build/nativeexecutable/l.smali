.class public Lcom/aide/ui/build/nativeexecutable/l;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/nativeexecutable/l$a;,
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
    .registers 4

    const-wide v2, -0x2921cbc5f25f46c8L    # -2.8374162234455972E110

    const-class v0, Lcom/aide/ui/build/nativeexecutable/l;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x3d399a6e92f381c5L    # -4.925097470182046E13

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3d399a6e92f381c5L    # -4.925097470182046E13

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->FH:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4253f4a49be1c8d0L
    .end annotation

    const-wide v2, 0x581ba0f15ed09e74L    # 2.7215638488386406E116

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x581ba0f15ed09e74L    # 2.7215638488386406E116

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    invoke-interface {v0}, Lcom/aide/ui/build/nativeexecutable/a;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
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

    const-wide v2, 0x3f55522066d928L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3f55522066d928L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    invoke-interface {v0}, Lcom/aide/ui/build/nativeexecutable/a;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
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

    const-wide v2, -0x3ac70b5cb0b9320L    # -7.624626895996481E290

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ac70b5cb0b9320L    # -7.624626895996481E290

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/nativeexecutable/a;->j6(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public j6(Lcom/aide/ui/build/nativeexecutable/a;)V
    .registers 6

    const-wide v2, 0x25cfa7c6dd980b29L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25cfa7c6dd980b29L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/l;->v5:Lcom/aide/ui/build/nativeexecutable/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x13d3f73e7cc83a00L    # 3.70671960284148E-213

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13d3f73e7cc83a00L    # 3.70671960284148E-213

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/l;->FH:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aide/ui/build/nativeexecutable/l$a;

    new-instance v4, Lcom/aide/ui/build/nativeexecutable/l$b;

    invoke-direct {v4, p0, p1, p2}, Lcom/aide/ui/build/nativeexecutable/l$b;-><init>(Lcom/aide/ui/build/nativeexecutable/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v4}, Lcom/aide/ui/build/nativeexecutable/l$a;-><init>(Lcom/aide/ui/build/nativeexecutable/l;Lcom/aide/ui/build/nativeexecutable/l$b;)V

    iput-object v1, p0, Lcom/aide/ui/build/nativeexecutable/l;->Hw:Lcom/aide/ui/build/nativeexecutable/l$a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/l;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
