.class public abstract Landroid/support/v4/content/AsyncTaskLoader;
.super Landroid/support/v4/content/Loader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/AsyncTaskLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile EQ:Landroid/support/v4/content/AsyncTaskLoader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.a;"
        }
    .end annotation
.end field

.field J0:J

.field J8:J

.field Ws:Landroid/os/Handler;

.field private final tp:Ljava/util/concurrent/Executor;

.field volatile we:Landroid/support/v4/content/AsyncTaskLoader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Landroid/support/v4/content/g;->FH:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->J8:J

    iput-object p2, p0, Landroid/support/v4/content/AsyncTaskLoader;->tp:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method DW(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.a;TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/content/AsyncTaskLoader;->j6(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->FH(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->DW()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->J8:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p0, p2}, Landroid/support/v4/content/Loader;->DW(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected EQ()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/Loader;->EQ()V

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->j6()Z

    new-instance v0, Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-direct {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$a;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->U2()V

    return-void
.end method

.method public FH(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public Mr()V
    .registers 1

    return-void
.end method

.method U2()V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->Ws:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->J0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->J8:J

    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->J0:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->Ws:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->J8:J

    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->J0:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->tp:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/g;->j6(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/g;

    goto :goto_0
.end method

.method public a8()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6(Landroid/support/v4/content/AsyncTaskLoader$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.a;TD;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->FH(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->QX()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->J8:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->FH()V

    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->U2()V

    :cond_0
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/Loader;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->J0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->J0:J

    invoke-static {v0, v1, p3}, Labcd/z;->j6(JLjava/io/PrintWriter;)V

    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->J8:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Labcd/z;->j6(JJLjava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public abstract lg()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected rN()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->lg()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected u7()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->v5:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->gn:Z

    :cond_0
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->Ws:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$a;->we:Z

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->Ws:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/g;->j6(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    iput-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->we:Landroid/support/v4/content/AsyncTaskLoader$a;

    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->Mr()V

    :cond_5
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->EQ:Landroid/support/v4/content/AsyncTaskLoader$a;

    goto :goto_0
.end method
