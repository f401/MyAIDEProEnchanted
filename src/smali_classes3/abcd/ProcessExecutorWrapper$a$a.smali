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
    .registers 3

    const-class v0, Labcd/ProcessExecutorWrapper$a$a;

    const-wide v1, -0x1abb213940b426fL  # -3.399426143565029E300

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/ProcessExecutorWrapper$a;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1eb186683b27fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1f38deca3573ef1bL  # -1.587808960538365E158

    :try_start_6
    sget-boolean v3, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Labcd/ProcessExecutorWrapper$a;Labcd/ProcessExitMonitor;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x619c2fea02697c0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/ProcessExecutorWrapper$a$a;-><init>(Labcd/ProcessExecutorWrapper$a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x619c2fea02697c0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x18c7c24103d7b680L
    .end annotation

    const-wide v0, -0xe1e4e625a307f80L  # -3.686956006502814E240

    :try_start_5
    sget-boolean v2, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_27

    :try_start_13
    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;Z)Z

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    return-void

    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1323c3e4b7ba4aecL
    .end annotation

    const-wide v0, 0x132e0438064ef858L

    :try_start_5
    sget-boolean v2, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->Zo(Labcd/ProcessExecutorWrapper$a;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->Zo(Labcd/ProcessExecutorWrapper$a;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public write(I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x5b7c5af19e296c4L
    .end annotation

    const-wide v0, 0x15b249a5271f828L

    :try_start_5
    sget-boolean v2, Labcd/ProcessExecutorWrapper$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v2}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_ba

    :try_start_13
    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->DW(Labcd/ProcessExecutorWrapper$a;)Z

    move-result v3

    if-nez v3, :cond_b1

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v3

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->Hw(Labcd/ProcessExecutorWrapper$a;)I

    move-result v4

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->Hw(Labcd/ProcessExecutorWrapper$a;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v5}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    invoke-static {v3, v4}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;I)I

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->Hw(Labcd/ProcessExecutorWrapper$a;)I

    move-result v3

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v4

    if-ne v3, v4, :cond_a6

    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v4

    iget-object v5, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v5}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v5

    iget-object v6, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v6}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v6

    iget-object v7, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v7}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v7

    array-length v7, v7

    iget-object v8, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v8}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v4

    iget-object v5, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v5}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v6}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4}, Labcd/ProcessExecutorWrapper$a;->FH(Labcd/ProcessExecutorWrapper$a;)[B

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v6}, Labcd/ProcessExecutorWrapper$a;->v5(Labcd/ProcessExecutorWrapper$a;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;I)I

    iget-object v4, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v4, v3}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;[B)[B

    :cond_a6
    iget-object v3, p0, Labcd/ProcessExecutorWrapper$a$a;->FH:Labcd/ProcessExecutorWrapper$a;

    invoke-static {v3}, Labcd/ProcessExecutorWrapper$a;->j6(Labcd/ProcessExecutorWrapper$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    return-void

    :cond_b1
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    :catchall_b7
    move-exception v3

    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_13 .. :try_end_b9} :catchall_b7

    :try_start_b9
    throw v3
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v2

    sget-boolean v3, Labcd/ProcessExecutorWrapper$a$a;->DW:Z

    if-eqz v3, :cond_c7

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c7
    throw v2
.end method
