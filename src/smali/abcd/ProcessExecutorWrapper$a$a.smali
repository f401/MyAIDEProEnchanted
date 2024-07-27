.class Labcd/ProcessExecutorWrapper$a$a;
.super Ljava/io/OutputStream;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ProcessExecutorWrapper$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field final FH:Labcd/ProcessExecutorWrapper$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1abb213940b426fL    # -3.399426143565029E300

    const-class v0, Labcd/ProcessExecutorWrapper$a$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/ProcessExecutorWrapper$a;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1eb186683b27fL
    .end annotation

    const-wide v4, -0x1f38deca3573ef1bL    # -1.587808960538365E158

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f38deca3573ef1bL    # -1.587808960538365E158

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/ProcessExecutorWrapper$a;Labcd/ProcessExitMonitor;)V
    .registers 10

    const-wide v2, 0x619c2fea02697c0L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x619c2fea02697c0L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/ProcessExecutorWrapper$a$a;-><init>(Labcd/ProcessExecutorWrapper$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x18c7c24103d7b680L
    .end annotation

    const-wide v4, -0xe1e4e625a307f80L    # -3.686956006502814E240

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe1e4e625a307f80L    # -3.686956006502814E240

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;Z)Z

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1323c3e4b7ba4aecL
    .end annotation

    const-wide v2, 0x132e0438064ef858L

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x132e0438064ef858L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->Zo(Labcd/ProcessExecutorWrapper$a;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->Zo(Labcd/ProcessExecutorWrapper$a;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public write(I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x5b7c5af19e296c4L
    .end annotation

    const-wide v8, 0x15b249a5271f828L

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15b249a5271f828L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->DW(Labcd/ProcessExecutorWrapper$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v0

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->Hw(Labcd/ProcessExecutorWrapper$a;)I

    move-result v2

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->Hw(Labcd/ProcessExecutorWrapper$a;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    invoke-static {v0, v2}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;I)I

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->Hw(Labcd/ProcessExecutorWrapper$a;)I

    move-result v0

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v2

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v3

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v4

    iget-object v5, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v5}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v6}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v5}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;I)I

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2, v0}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;[B)[B

    :cond_1
    iget-object v0, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v0}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
