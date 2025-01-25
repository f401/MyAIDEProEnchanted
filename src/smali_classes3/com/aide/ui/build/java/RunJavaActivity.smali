.class public Lcom/aide/ui/build/java/RunJavaActivity;
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
.field private EQ:Ljava/lang/Class;
    .annotation runtime Labcd/ru;
        field = -0x28a88380a9b8a613L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/java/RunJavaActivity;

    const-wide v1, 0x7d90a06c8983440L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2095c8de72117f84L  # -4.290654964706586E151

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/java/RunJavaActivity;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/java/RunJavaActivity;->tp:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/java/RunJavaActivity;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Hw:Landroid/os/Handler;

    return-object p0
.end method

.method protected static j6(Landroid/app/Activity;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;ZI)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x540254e19e2a0728L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/build/java/RunJavaActivity;->u7:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-wide v1, -0x1301ec651aa7ae45L  # -1.0368248067714935E217

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "EXTRA_DEX"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_CLASS"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_DEBUG"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, p2, p6, v0}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Landroid/app/Activity;ZILandroid/content/Intent;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/RunJavaActivity;->u7:Z

    if-eqz v0, :cond_1a

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x450a897393778c8L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    const-class v2, Lcom/aide/ui/build/java/RunJavaActivity;

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v7}, Lcom/aide/ui/build/java/RunJavaActivity;->j6(Landroid/app/Activity;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;ZI)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/RunJavaActivity;->tp:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x450a897393778c8L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/java/RunJavaActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Hw()V

    return-void
.end method


# virtual methods
.method protected FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x30b4dbe468eab440L
    .end annotation

    const-wide v0, -0x244d6aa1c244d223L  # -5.276244174513001E133

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/RunJavaActivity;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f070079

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/RunJavaActivity;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x120a37e54bab98d0L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x4dbd5e0c61aa7c7L  # -1.499250520249612E285

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/build/java/RunJavaActivity;->u7:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Lcom/aide/ui/build/OutputConsoleActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/RunJavaActivity;->tp:Z

    if-eqz v1, :cond_29

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method protected onDestroy()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x29a09dc026738824L
    .end annotation

    const-wide v0, 0x27a81d1347650e63L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/RunJavaActivity;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/java/RunJavaActivity;->EQ:Ljava/lang/Class;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_2f

    if-eqz v2, :cond_24

    :try_start_10
    const-string v3, "disconnectDebugger"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    :goto_24
    invoke-super {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->onDestroy()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/RunJavaActivity;->tp:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method protected v5()V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x261cc0fd64609180L
    .end annotation

    const-wide v0, 0x2e1d4c67893646cdL  # 1.4728074564369212E-86

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/RunJavaActivity;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_DEX"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_DEBUG"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "outdex"

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3f
    if-ge v9, v8, :cond_49

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    :cond_49
    new-instance v7, Ldalvik/system/DexClassLoader;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v2, v5, v9, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const/4 v2, 0x1

    if-eqz v4, :cond_9a

    const-string v4, "adrt/ADRT"

    invoke-virtual {v7, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/aide/ui/build/java/RunJavaActivity;->EQ:Ljava/lang/Class;

    const-string v5, "connectDebugger"

    const/4 v8, 0x4

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v6

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x3

    aput-object v11, v10, v13

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v12

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v13

    invoke-virtual {v4, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    invoke-virtual {v7, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "main"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    aput-object v5, v2, v6

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v3}, Lcom/aide/ui/build/OutputConsole;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v3}, Lcom/aide/ui/build/OutputConsole;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v3}, Lcom/aide/ui/build/OutputConsole;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/aide/ui/build/java/j;

    new-array v5, v6, [Ljava/lang/String;

    invoke-direct {v4, p0, v2, v5}, Lcom/aide/ui/build/java/j;-><init>(Lcom/aide/ui/build/java/RunJavaActivity;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_d4
    .catchall {:try_start_5 .. :try_end_d4} :catchall_d5

    return-void

    :catchall_d5
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/RunJavaActivity;->tp:Z

    if-eqz v3, :cond_dd

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_dd
    goto :goto_df

    :goto_de
    throw v2

    :goto_df
    goto :goto_de
.end method
