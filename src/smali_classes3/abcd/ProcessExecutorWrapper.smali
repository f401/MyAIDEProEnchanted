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
            "Ljava/util/Map<",
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
    .registers 3

    const-class v0, Labcd/ProcessExecutorWrapper;

    const-wide v1, -0x523c70abaea6c150L  # -3.072680983825631E-88

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 7

    const-wide v0, 0x17f857528a9b20f0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/ProcessExecutorWrapper;->gn:Z

    monitor-enter p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_31

    :try_start_14
    iput-object p1, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, p0, Labcd/ProcessExecutorWrapper;->EQ:I

    iput-boolean v3, p0, Labcd/ProcessExecutorWrapper;->started:Z

    iput v3, p0, Labcd/ProcessExecutorWrapper;->u7:I

    iput-object v2, p0, Labcd/ProcessExecutorWrapper;->v5:Ljava/io/OutputStream;

    iput-object v2, p0, Labcd/ProcessExecutorWrapper;->Zo:Ljava/io/OutputStream;

    iput-object v2, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    iput-object v2, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/ProcessExecutorWrapper;->VH:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v3

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v3

    sget-boolean v4, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v4, :cond_39

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v3
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x5a2d54eb94863b0L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0, p1}, Labcd/ProcessExecutorWrapper;-><init>([Ljava/lang/String;)V

    monitor-enter p0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_3c

    :try_start_19
    iput-object p2, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    iput-boolean p4, p0, Labcd/ProcessExecutorWrapper;->shouldRedirectErrorStream:Z

    if-eqz p3, :cond_37

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v1, :cond_53

    const-wide v2, -0x5a2d54eb94863b0L

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v0
.end method

.method static synthetic DW(Labcd/ProcessExecutorWrapper;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic EQ(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->Zo:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic FH(Labcd/ProcessExecutorWrapper;)I
    .registers 1

    iget p0, p0, Labcd/ProcessExecutorWrapper;->u7:I

    return p0
.end method

.method static synthetic Hw(Labcd/ProcessExecutorWrapper;)I
    .registers 3

    iget v0, p0, Labcd/ProcessExecutorWrapper;->u7:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Labcd/ProcessExecutorWrapper;->u7:I

    return v0
.end method

.method static synthetic VH(Labcd/ProcessExecutorWrapper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->VH:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic Zo(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic gn(Labcd/ProcessExecutorWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/ProcessExecutorWrapper;->gn:Z

    return p0
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper;I)I
    .registers 2

    iput p1, p0, Labcd/ProcessExecutorWrapper;->EQ:I

    return p1
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper;)Ljava/lang/Process;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    return-object p0
.end method

.method static synthetic tp(Labcd/ProcessExecutorWrapper;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->errorStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic u7(Labcd/ProcessExecutorWrapper;)Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->v5:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic v5(Labcd/ProcessExecutorWrapper;)Labcd/ProcessExecutorWrapper$a$a;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;

    return-object p0
.end method


# virtual methods
.method public DW()V
    .registers 5

    monitor-enter p0

    const-wide v0, -0x187820ad3ceab590L  # -5.318174286311462E190

    :try_start_6
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    iget-boolean v2, p0, Labcd/ProcessExecutorWrapper;->started:Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_39

    if-nez v2, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget v2, p0, Labcd/ProcessExecutorWrapper;->u7:I
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_39

    if-gtz v2, :cond_19

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_20
    const/4 v2, 0x0

    iput v2, p0, Labcd/ProcessExecutorWrapper;->u7:I
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_39

    :try_start_23
    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;

    invoke-virtual {v2}, Labcd/ProcessExecutorWrapper$a$a;->j6()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_29
    .catchall {:try_start_23 .. :try_end_28} :catchall_39

    goto :goto_2a

    :catch_29
    move-exception v2

    :goto_2a
    :try_start_2a
    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->VH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_39

    const/4 v3, 0x1

    :try_start_2e
    iput-boolean v3, p0, Labcd/ProcessExecutorWrapper;->gn:Z

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_36

    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_39

    monitor-exit p0

    return-void

    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v2

    :try_start_3a
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public DW(Ljava/io/OutputStream;)V
    .registers 6

    monitor-enter p0

    const-wide v0, -0x47139499b8405f60L

    :try_start_6
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/ProcessExecutorWrapper;->v5:Ljava/io/OutputStream;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v2

    :try_start_12
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Hw()V
    .registers 5

    monitor-enter p0

    const-wide v0, -0x462ac4a9b6009f0L

    :try_start_6
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    iget-boolean v2, p0, Labcd/ProcessExecutorWrapper;->started:Z

    if-eqz v2, :cond_15

    iget v2, p0, Labcd/ProcessExecutorWrapper;->u7:I

    if-eqz v2, :cond_18

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v2

    :try_start_1b
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xd85126b7aa05dfdL
    .end annotation

    const-wide v0, -0xbf872585b515a48L

    :try_start_5
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/ProcessExecutorWrapper;->started:Z

    if-nez v2, :cond_11

    return-void

    :cond_11
    iget v2, p0, Labcd/ProcessExecutorWrapper;->u7:I

    if-gtz v2, :cond_16

    return-void

    :cond_16
    iget-object v2, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6()I
    .registers 5

    monitor-enter p0

    const-wide v0, -0x369635cae17e482dL  # -4.60106709789842E45

    :try_start_6
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    iget v0, p0, Labcd/ProcessExecutorWrapper;->EQ:I
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v2

    :try_start_12
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 6

    monitor-enter p0

    const-wide v0, -0x37dde5c1b4b05c5dL  # -3.079982991181459E39

    :try_start_6
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/ProcessExecutorWrapper;->Zo:Ljava/io/OutputStream;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v2

    :try_start_12
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()Ljava/io/OutputStream;
    .registers 11

    monitor-enter p0

    const-wide v0, -0xf8f9ce3b21ec0dcL  # -4.070615655504114E233

    :try_start_6
    sget-boolean v2, Labcd/ProcessExecutorWrapper;->j6:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    iget-boolean v2, p0, Labcd/ProcessExecutorWrapper;->started:Z

    if-nez v2, :cond_148

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/ProcessExecutorWrapper;->started:Z
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_150

    :try_start_14
    new-instance v3, Ljava/lang/ProcessBuilder;

    iget-object v4, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    iget-boolean v4, p0, Labcd/ProcessExecutorWrapper;->shouldRedirectErrorStream:Z

    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    iget-object v4, p0, Labcd/ProcessExecutorWrapper;->workingDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    iget-object v4, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    if-eqz v4, :cond_90

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_50
    iget-object v6, p0, Labcd/ProcessExecutorWrapper;->envMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_66} :catch_13f
    .catchall {:try_start_14 .. :try_end_66} :catchall_150

    :try_start_66
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    :goto_80
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    :cond_84
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7
    :try_end_8c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_66 .. :try_end_8c} :catch_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_8c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_8c} :catch_13f
    .catchall {:try_start_66 .. :try_end_8c} :catchall_150

    goto :goto_80

    :catch_8d
    move-exception v4

    goto :goto_90

    :catch_8f
    move-exception v4

    :cond_90
    :goto_90
    :try_start_90
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    iput-object v3, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Labcd/ProcessExecutorWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Labcd/ProcessExecutorWrapper;->errorStream:Ljava/io/InputStream;

    const/4 v3, 0x3

    iput v3, p0, Labcd/ProcessExecutorWrapper;->u7:I
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a7} :catch_13f
    .catchall {:try_start_90 .. :try_end_a7} :catchall_150

    :try_start_a7
    new-instance v3, Labcd/ProcessExitMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process Exit Value ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Labcd/ProcessExitMonitor;-><init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V

    new-instance v4, Labcd/Ml;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process Out ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Labcd/Ml;-><init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V

    new-instance v5, Labcd/Nl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process Err ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Labcd/ProcessExecutorWrapper;->cmds:[Ljava/lang/String;

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Labcd/Nl;-><init>(Labcd/ProcessExecutorWrapper;Ljava/lang/String;)V

    new-instance v6, Labcd/ProcessExecutorWrapper$a;

    iget-object v7, p0, Labcd/ProcessExecutorWrapper;->processInstance:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Labcd/ProcessExecutorWrapper$a;-><init>(Labcd/ProcessExecutorWrapper;Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Labcd/ProcessExecutorWrapper$a;->j6()Labcd/ProcessExecutorWrapper$a$a;

    move-result-object v7

    iput-object v7, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v4, v7}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v5, v7}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    invoke-virtual {v6, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Labcd/ProcessExecutorWrapper;->Ws:Labcd/ProcessExecutorWrapper$a$a;
    :try_end_13d
    .catchall {:try_start_a7 .. :try_end_13d} :catchall_150

    monitor-exit p0

    return-object v0

    :catch_13f
    move-exception v2

    :try_start_140
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Process could not be started."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_148
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Process has already been started."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_150
    .catchall {:try_start_140 .. :try_end_150} :catchall_150

    :catchall_150
    move-exception v2

    :try_start_151
    sget-boolean v3, Labcd/ProcessExecutorWrapper;->DW:Z

    if-eqz v3, :cond_158

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_158
    throw v2
    :try_end_159
    .catchall {:try_start_151 .. :try_end_159} :catchall_159

    :catchall_159
    move-exception v0

    monitor-exit p0

    goto :goto_15d

    :goto_15c
    throw v0

    :goto_15d
    goto :goto_15c
.end method
