.class public Labcd/ProcessExecutorWrapper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ProcessExecutorWrapper$a;,
        Labcd/ProcessExecutorWrapper$a$a;
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
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x256198fbda3fee2dL
    .end annotation
.end field

.field private VH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x23513ced8aba7dd7L
    .end annotation
.end field

.field private Ws:Labcd/ProcessExecutorWrapper$a$a;
    .annotation runtime Labcd/ru;
        field = 0x2b048cd426b1c73cL
    .end annotation
.end field

.field private Zo:Ljava/io/OutputStream;
    .annotation runtime Labcd/ru;
        field = 0x1d2ebe05f979cd01L
    .end annotation
.end field

.field private cmds:[Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2f2b7797ae373a00L
    .end annotation
.end field

.field private envMap:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x1d2d1b6e552ec899L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorStream:Ljava/io/InputStream;
    .annotation runtime Labcd/ru;
        field = 0x34d86797f5455378L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = 0x55ba87cb5805f54L
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;
    .annotation runtime Labcd/ru;
        field = 0x34eaa59ca517d103L
    .end annotation
.end field

.field private processInstance:Ljava/lang/Process;
    .annotation runtime Labcd/ru;
        field = -0x459182be2c3734fL
    .end annotation
.end field

.field private shouldRedirectErrorStream:Z
    .annotation runtime Labcd/ru;
        field = 0x315eeadc1cf07a0L
    .end annotation
.end field

.field private started:Z
    .annotation runtime Labcd/ru;
        field = 0x2d9570604ed78df5L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x3ccee23fdac9d22bL
    .end annotation
.end field

.field private v5:Ljava/io/OutputStream;
    .annotation runtime Labcd/ru;
        field = 0x1d3f6b72ab8d2290L
    .end annotation
.end field

.field private workingDir:Ljava/io/File;
    .annotation runtime Labcd/ru;
        field = 0x32c95f1acba9ee70L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x523c70abaea6c150L    # -3.072680983825631E-88

    const-class v0, Labcd/ProcessExecutorWrapper;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x17f857528a9b20f0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17f857528a9b20f0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/ProcessExecutorWrapper;->gn:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object p1, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Labcd/ProcessExecutorWrapper;->EQ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/ProcessExecutorWrapper;->started:Z

    const/4 v0, 0x0

    iput v0, p0, Labcd/ProcessExecutorWrapper;->u7:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->v5:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->Zo:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->VH:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x5a2d54eb94863b0L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/ProcessExecutorWrapper;-><init>([Ljava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object p2, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    iput-boolean p4, p0, Labcd/ProcessExecutorWrapper;->shouldRedirectErrorStream:Z

    if-eqz p3, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x5a2d54eb94863b0L

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method static synthetic DW(Labcd/ProcessExecutorWrapper;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->Zo:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic FH(Labcd/ProcessExecutorWrapper;)I
    .registers 2

    iget v0, p0, Labcd/ProcessExecutorWrapper;->u7:I

    return v0
.end method

.method static synthetic Hw(Labcd/ProcessExecutorWrapper;)I
    .registers 3

    iget v0, p0, Labcd/ProcessExecutorWrapper;->u7:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Labcd/ProcessExecutorWrapper;->u7:I

    return v0
.end method

.method static synthetic VH(Labcd/ProcessExecutorWrapper;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->VH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Zo(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic gn(Labcd/ProcessExecutorWrapper;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/ProcessExecutorWrapper;->gn:Z

    return v0
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper;I)I
    .registers 2

    iput p1, p0, Labcd/ProcessExecutorWrapper;->EQ:I

    return p1
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper;)Ljava/lang/Process;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->errorStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->v5:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic v5(Labcd/ProcessExecutorWrapper;)Labcd/ProcessExecutorWrapper$a$a;
    .registers 2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;

    return-object v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x187820ad3ceab590L    # -5.318174286311462E190

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/ProcessExecutorWrapper;->started:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Labcd/ProcessExecutorWrapper;->u7:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v0, :cond_2

    monitor-exit p0

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Labcd/ProcessExecutorWrapper;->u7:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;

    invoke-virtual {v0}, Labcd/ProcessExecutorWrapper$a$a;->j6()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget-object v1, p0, Labcd/ProcessExecutorWrapper;->VH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Labcd/ProcessExecutorWrapper;->gn:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_0
    move-exception v0

    :try_start_9
    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_4

    const-wide v2, -0x187820ad3ceab590L    # -5.318174286311462E190

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public DW(Ljava/io/OutputStream;)V
    .registers 6

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x47139499b8405f60L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/ProcessExecutorWrapper;->v5:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x47139499b8405f60L

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Hw()V
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x462ac4a9b6009f0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/ProcessExecutorWrapper;->started:Z

    if-eqz v0, :cond_1

    iget v0, p0, Labcd/ProcessExecutorWrapper;->u7:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_3

    const-wide v2, -0x462ac4a9b6009f0L

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xd85126b7aa05dfdL
    .end annotation

    const-wide v2, -0xbf872585b515a48L

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xbf872585b515a48L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/ProcessExecutorWrapper;->started:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Labcd/ProcessExecutorWrapper;->u7:I

    if-lez v0, :cond_1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6()I
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x369635cae17e482dL    # -4.60106709789842E45

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/ProcessExecutorWrapper;->EQ:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x369635cae17e482dL    # -4.60106709789842E45

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 6

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37dde5c1b4b05c5dL    # -3.079982991181459E39

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/ProcessExecutorWrapper;->Zo:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x37dde5c1b4b05c5dL    # -3.079982991181459E39

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Ljava/io/OutputStream;
    .registers 10

    monitor-enter p0

    :try_start_0
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0xf8f9ce3b21ec0dcL    # -4.070615655504114E233

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v2, p0, Labcd/ProcessExecutorWrapper;->started:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/ProcessExecutorWrapper;->started:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/ProcessBuilder;

    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    iget-boolean v2, p0, Labcd/ProcessExecutorWrapper;->shouldRedirectErrorStream:Z

    invoke-virtual {v4, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    invoke-virtual {v4, v2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Process could not be started."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v2

    :try_start_3
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_1

    const-wide v4, -0xf8f9ce3b21ec0dcL    # -4.070615655504114E233

    invoke-static {v2, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_4
    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v2

    :cond_3
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Labcd/ProcessExecutorWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Labcd/ProcessExecutorWrapper;->errorStream:Ljava/io/InputStream;

    const/4 v2, 0x3

    iput v2, p0, Labcd/ProcessExecutorWrapper;->u7:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v2, Labcd/ProcessExitMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process Exit Value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Labcd/ProcessExitMonitor;-><init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V

    new-instance v3, Labcd/Ml;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process Out ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Labcd/Ml;-><init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V

    new-instance v4, Labcd/Nl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process Err ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Labcd/Nl;-><init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V

    new-instance v5, Labcd/ProcessExecutorWrapper$a;

    iget-object v6, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Labcd/ProcessExecutorWrapper$a;-><init>(Labcd/ProcessExecutorWrapper;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Labcd/ProcessExecutorWrapper$a;->j6()Labcd/ProcessExecutorWrapper$a$a;

    move-result-object v6

    iput-object v6, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v2, 0x5

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_4
    :try_start_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v2

    goto/16 :goto_2

    :cond_5
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Process has already been started."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method
