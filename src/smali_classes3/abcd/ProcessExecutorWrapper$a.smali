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
    .registers 3

    const-class v0, Labcd/ProcessExecutorWrapper$a;

    const-wide v1, -0x19cab389400a9b81L  # -2.2625083703032056E184

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/ProcessExecutorWrapper;Ljava/io/OutputStream;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6896b118875bf8e8L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x23d024906b697ad0L

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/ProcessExecutorWrapper$a;->EQ:Labcd/ProcessExecutorWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process In ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/ProcessExecutorWrapper;->DW(Labcd/ProcessExecutorWrapper;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Labcd/ProcessExecutorWrapper$a$a;

    invoke-direct {v0, p0, v1}, Labcd/ProcessExecutorWrapper$a$a;-><init>(Labcd/ProcessExecutorWrapper$a;Labcd/ProcessExitMonitor;)V

    iput-object v0, p0, Labcd/ProcessExecutorWrapper$a;->FH:Labcd/ProcessExecutorWrapper$a$a;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    iput-object p2, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0x23d024906b697ad0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method

.method static synthetic DW(Labcd/ProcessExecutorWrapper$a;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/ProcessExecutorWrapper$a;->u7:Z

    return p0
.end method

.method static synthetic FH(Labcd/ProcessExecutorWrapper$a;)[B
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B

    return-object p0
.end method

.method static synthetic Hw(Labcd/ProcessExecutorWrapper$a;)I
    .registers 1

    iget p0, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    return p0
.end method

.method static synthetic Zo(Labcd/ProcessExecutorWrapper$a;)Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;I)I
    .registers 2

    iput p1, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    return p1
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/ProcessExecutorWrapper$a;->tp:Z

    return p1
.end method

.method static synthetic j6(Labcd/ProcessExecutorWrapper$a;[B)[B
    .registers 2

    iput-object p1, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B

    return-object p1
.end method

.method static synthetic v5(Labcd/ProcessExecutorWrapper$a;)I
    .registers 1

    iget p0, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    return p0
.end method


# virtual methods
.method public j6()Labcd/ProcessExecutorWrapper$a$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x12d8e6f660e81b90L
    .end annotation

    const-wide v0, 0x1dbdf41191a21e27L

    :try_start_5
    sget-boolean v2, Labcd/ProcessExecutorWrapper$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a;->FH:Labcd/ProcessExecutorWrapper$a$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/ProcessExecutorWrapper$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public run()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x210ea6684c3189d3L
    .end annotation

    const-wide v0, -0x5207c138a76e210L  # -7.322472480038409E283

    :try_start_5
    sget-boolean v2, Labcd/ProcessExecutorWrapper$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6d

    :cond_c
    :goto_c
    const/4 v2, 0x1

    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_63

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_62
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_16} :catch_60
    .catchall {:try_start_d .. :try_end_16} :catchall_5e

    :try_start_16
    iget v4, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    iget v5, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    if-ne v4, v5, :cond_25

    iget-boolean v4, p0, Labcd/ProcessExecutorWrapper$a;->tp:Z

    if-nez v4, :cond_25

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    :cond_25
    iget v4, p0, Labcd/ProcessExecutorWrapper$a;->v5:I

    iget v5, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3c

    iget-object v7, p0, Labcd/ProcessExecutorWrapper$a;->Hw:[B

    aget-byte v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    array-length v7, v7

    rem-int/2addr v5, v7

    iput v5, p0, Labcd/ProcessExecutorWrapper$a;->Zo:I

    if-ne v4, v5, :cond_3a

    const/4 v4, 0x1

    goto :goto_43

    :cond_3a
    const/4 v4, 0x0

    goto :goto_43

    :cond_3c
    iget-boolean v4, p0, Labcd/ProcessExecutorWrapper$a;->tp:Z

    if-eqz v4, :cond_59

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_16 .. :try_end_44} :catchall_5b

    :try_start_44
    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;

    if-eqz v3, :cond_c

    if-eqz v6, :cond_4e

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_63

    :cond_4e
    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write(I)V

    if-eqz v4, :cond_c

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a;->gn:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_58} :catch_62
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_58} :catch_60
    .catchall {:try_start_44 .. :try_end_58} :catchall_5e

    goto :goto_c

    :cond_59
    :try_start_59
    monitor-exit v3

    goto :goto_c

    :catchall_5b
    move-exception v4

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v4
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5e} :catch_62
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_5e} :catch_60
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v3

    goto :goto_63

    :catch_60
    move-exception v3

    goto :goto_63

    :catch_62
    move-exception v3

    :cond_63
    :goto_63
    :try_start_63
    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a;->VH:Ljava/lang/Object;

    monitor-enter v3
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_6d

    :try_start_66
    iput-boolean v2, p0, Labcd/ProcessExecutorWrapper$a;->u7:Z

    monitor-exit v3

    return-void

    :catchall_6a
    move-exception v2

    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v2

    sget-boolean v3, Labcd/ProcessExecutorWrapper$a;->DW:Z

    if-eqz v3, :cond_75

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v2

    :goto_77
    goto :goto_76
.end method
