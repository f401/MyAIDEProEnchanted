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
    .registers 4

    const-wide v2, 0xeeb9e1c03007e4L

    const-class v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0xc70443a10739dbL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc70443a10739dbL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Lcom/aide/ui/build/OutputConsole;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Hw()V

    return-void
.end method

.method static synthetic Hw(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Hw:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)Labcd/ProcessExecutorWrapper;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->EQ:Labcd/ProcessExecutorWrapper;

    return-object v0
.end method

.method public static j6(Landroid/app/Activity;ZLjava/lang/String;I)V
    .registers 16

    const-wide v10, -0x15d7377be82d22dcL

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x15d7377be82d22dcL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_EXECUTABLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_THEME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, p1, p3, v0}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Landroid/app/Activity;ZILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, v7

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method protected FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2e82d87f25dcd263L
    .end annotation

    const-wide v2, -0x41fc753d008e639L    # -4.940075505456062E288

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x41fc753d008e639L    # -4.940075505456062E288

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f070076

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2641aa22d6d37a7L
    .end annotation

    const-wide v8, -0x11733c22961cbedL

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11733c22961cbedL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/aide/ui/build/OutputConsoleActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected v5()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3a67c775c9e3907dL
    .end annotation

    const-wide v4, 0x29b061e58a87ca9bL    # 6.975563862420432E-108

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29b061e58a87ca9bL    # 6.975563862420432E-108

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_EXECUTABLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/ProcessExecutorWrapper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Labcd/ProcessExecutorWrapper;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->EQ:Labcd/ProcessExecutorWrapper;

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->EQ:Labcd/ProcessExecutorWrapper;

    iget-object v1, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v1}, Lcom/aide/ui/build/OutputConsole;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/ProcessExecutorWrapper;->DW(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    iget-object v1, p0, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->EQ:Labcd/ProcessExecutorWrapper;

    invoke-virtual {v1}, Labcd/ProcessExecutorWrapper;->start()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/OutputConsole;->setProcessOutputStream(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aide/ui/build/nativeexecutable/n;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/nativeexecutable/n;-><init>(Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/RunNativeExecutableActivity;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
