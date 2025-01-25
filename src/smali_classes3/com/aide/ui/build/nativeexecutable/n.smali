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
    .registers 5

    const-wide v0, 0xeeb9e1c03007e4L

    const-wide v2, 0x13d3c7068483f9b3L

    const-class v4, Lcom/aide/ui/build/nativeexecutable/n;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x2cc218beeb2518dfL  # -9.746267664524304E92

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/n;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_50

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v2}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->j6(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Labcd/ProcessExecutorWrapper;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ProcessExecutorWrapper;->Hw()V

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v2}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->j6(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Labcd/ProcessExecutorWrapper;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ProcessExecutorWrapper;->j6()I

    move-result v2

    if-eqz v2, :cond_41

    iget-object v3, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v3}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->DW(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Lcom/aide/ui/build/OutputConsole;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/build/OutputConsole;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process exited with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_3f} :catch_40
    .catchall {:try_start_c .. :try_end_3f} :catchall_50

    goto :goto_41

    :catch_40
    move-exception v2

    :cond_41
    :goto_41
    :try_start_41
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/n;->FH:Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v2}, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->Hw(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/build/nativeexecutable/m;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/nativeexecutable/m;-><init>(Lcom/aide/ui/build/nativeexecutable/n;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_50

    return-void

    :catchall_50
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/n;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_58
    throw v2
.end method
