.class public Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;
.super Lcom/aide/ui/build/OutputConsoleActivity;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:Labcd/ProcessExecutorWrapper;
    .annotation runtime Labcd/ru;
        field = -0x279897df3bd8a5a0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    const-wide v1, 0xeeb9e1c03007e4L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xc70443a10739dbL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Lcom/aide/ui/build/OutputConsole;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Hw()V

    return-void
.end method

.method static synthetic Hw(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Hw:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Labcd/ProcessExecutorWrapper;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->EQ:Labcd/ProcessExecutorWrapper;

    return-object p0
.end method

.method public static j6(Landroid/app/Activity;ZLjava/lang/String;I)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x15d7377be82d22dcL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_EXECUTABLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_THEME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, p1, p3, v0}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Landroid/app/Activity;ZILandroid/content/Intent;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v1, :cond_49

    const-wide v2, -0x15d7377be82d22dcL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v0
.end method


# virtual methods
.method protected FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2e82d87f25dcd263L
    .end annotation

    const-wide v0, -0x41fc753d008e639L  # -4.940075505456062E288

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f070076

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x2641aa22d6d37a7L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x11733c22961cbedL

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Lcom/aide/ui/build/OutputConsoleActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v1, :cond_29

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method protected v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3a67c775c9e3907dL
    .end annotation

    const-wide v0, 0x29b061e58a87ca9bL  # 6.975563862420432E-108

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_EXECUTABLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/ProcessExecutorWrapper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Labcd/ProcessExecutorWrapper;-><init>([Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->EQ:Labcd/ProcessExecutorWrapper;

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v2}, Lcom/aide/ui/build/OutputConsole;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/ProcessExecutorWrapper;->DW(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    iget-object v3, p0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->EQ:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v3}, Labcd/ProcessExecutorWrapper;->start()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/OutputConsole;->setProcessOutputStream(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/aide/ui/build/nativeexecutable/n;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/nativeexecutable/n;-><init>(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v3, :cond_51

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_51
    throw v2
.end method
