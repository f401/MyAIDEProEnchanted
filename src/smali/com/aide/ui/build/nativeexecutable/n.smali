.class Lcom/aide/ui/build/nativeexecutable/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->v5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/nativeexecutable/n;

    const-wide v2, 0xeeb9e1c03007e4L

    const-wide v4, 0x13d3c7068483f9b3L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xf5a1792bac8767dL
    .end annotation

    const-wide v4, -0x2cc218beeb2518dfL    # -9.746267664524304E92

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/n;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2cc218beeb2518dfL    # -9.746267664524304E92

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v0}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->j6(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Labcd/ProcessExecutorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ProcessExecutorWrapper;->Hw()V

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v0}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->j6(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Labcd/ProcessExecutorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ProcessExecutorWrapper;->j6()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v1}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->DW(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Lcom/aide/ui/build/OutputConsole;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/build/OutputConsole;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process exited with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v0}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->Hw(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/build/nativeexecutable/m;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/nativeexecutable/m;-><init>(Lcom/aide/ui/build/nativeexecutable/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/n;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
