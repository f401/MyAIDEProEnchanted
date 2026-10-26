.class Labcd/ProcessExecutorWrapper$a;
.super Ljava/lang/Thread;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ProcessExecutorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.field final EQ:Labcd/ProcessExecutorWrapper;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private FH:Labcd/ProcessExecutorWrapper$a$a;
    .annotation runtime Labcd/ru;
        field = -0x19ce431018181260L
    .end annotation
.end field

.field private Hw:[B
    .annotation runtime Labcd/ru;
        field = 0x86ac53573fc8f65L
    .end annotation
.end field

.field private VH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x7f7ebd6ae6aef88L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x12bc422265a048ebL
    .end annotation
.end field

.field private gn:Ljava/io/OutputStream;
    .annotation runtime Labcd/ru;
        field = 0x1a6b107a26fa6110L
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = 0xb7b4f504bf0645dL
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = 0x4798e96ea50474a9L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x703ef9e8bb885a0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v2, -0x19cab389400a9b81L    # -2.2625083703032056E184

    const-class v0, Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/ProcessExecutorWrapper;Ljava/io/OutputStream;)V
    .locals 7
    .annotation runtime Labcd/su;
        method = 0x6896b118875bf8e8L
    .end annotation

    const-wide v2, 0x23d024906b697ad0L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23d024906b697ad0L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/ProcessExecutorWrapper$a;->EQ:Labcd/ProcessExecutorWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process In ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/ProcessExecutorWrapper;->DW(Labcd/ProcessExecutorWrapper;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Labcd/ProcessExecutorWrapper$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/ProcessExecutorWrapper$a$a;-><init>(Labcd/ProcessExecutorWrapper$a;Labcd/ProcessExitMonitor;)V

    iput-object v0, p0, Labcd/ProcessExecutorWrapper$a;->FH:Labcd/ProcessExecutorWrapper$a$a;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    iput-object p2, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    sget-boolean v0, Labcd/ProcessExecutorWrapper$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Labcd/ProcessExecutorWrapper$a;)Z
    .locals 1

    iget-boolean v0, p0, Labcd/ProcessExecutorWrapper$a;->u7:Z

    return v0
.end method

.method static synthetic FH(Labcd/ProcessExecutorWrapper$a;)[B
    .locals 1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B

    return-object v0
.end method

.method static synthetic Hw(Labcd/ProcessExecutorWrapper$a;)I
    .locals 1

    iget v0, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    return v0
.end method

.method static synthetic Zo(Labcd/ProcessExecutorWrapper$a;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;I)I
    .locals 0

    iput p1, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    return p1
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Labcd/ProcessExecutorWrapper$a;->tp:Z

    return p1
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;[B)[B
    .locals 0

    iput-object p1, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B

    return-object p1
.end method

.method static synthetic v5(Labcd/ProcessExecutorWrapper$a;)I
    .locals 1

    iget v0, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    return v0
.end method


# virtual methods
.method public j6()Labcd/ProcessExecutorWrapper$a$a;
    .locals 4
    .annotation runtime Labcd/su;
        method = -0x12d8e6f660e81b90L
    .end annotation

    const-wide v2, 0x1dbdf41191a21e27L

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1dbdf41191a21e27L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a;->FH:Labcd/ProcessExecutorWrapper$a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()V
    .locals 10
    .annotation runtime Labcd/su;
        method = -0x210ea6684c3189d3L
    .end annotation

    const-wide v8, -0x5207c138a76e210L    # -7.322472480038409E283

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x5207c138a76e210L    # -7.322472480038409E283

    invoke-static {v4, v5, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v5, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget v0, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    iget v2, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Labcd/ProcessExecutorWrapper$a;->tp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    iget v2, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    iget v4, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    if-eq v2, v4, :cond_4

    iget-object v6, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    aget-byte v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    :try_start_3
    array-length v6, v6

    rem-int/2addr v4, v6

    iput v4, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    if-ne v2, v4, :cond_3

    move v2, v1

    move v4, v3

    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_2
    :goto_2
    :try_start_5
    iget-object v1, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Labcd/ProcessExecutorWrapper$a;->u7:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :cond_3
    move v2, v1

    move v4, v1

    goto :goto_1

    :cond_4
    :try_start_7
    iget-boolean v0, p0, Labcd/ProcessExecutorWrapper$a;->tp:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_6

    move v0, v1

    move v2, v3

    move v4, v1

    goto :goto_1

    :cond_5
    :try_start_8
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write(I)V

    if-eqz v4, :cond_0

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    :try_start_9
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a;->DW:Z

    if-eqz v1, :cond_7

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method
