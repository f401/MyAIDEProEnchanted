.class public Lcom/aide/ui/build/javascript/RunJavaScriptActivity;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;

    const-wide v1, 0x5d52d0ed077f657cL  # 3.585155351576895E141

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3a85aa2146af05b0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->tp:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Landroid/app/Activity;ZLjava/lang/String;I)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->u7:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1afd07c5c1e7894fL  # -3.84349663902014E178

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_DEX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1, p3, v0}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Landroid/app/Activity;ZILandroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->tp:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x1afd07c5c1e7894fL  # -3.84349663902014E178

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/javascript/RunJavaScriptActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Hw()V

    return-void
.end method


# virtual methods
.method protected FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x26bc8fa9034629acL
    .end annotation

    const-wide v0, -0x29928f3d548e85f0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f07007a

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x9e0967c43e483acL
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, 0x27f8610dffc7d00L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->u7:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Lcom/aide/ui/build/OutputConsoleActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->tp:Z

    if-eqz v1, :cond_29

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method protected v5()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x37aa7cdfde6a42d8L
    .end annotation

    const-wide v0, -0x79308414c877e00L  # -1.224280465220645E272

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v2}, Lcom/aide/ui/build/OutputConsole;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/widget/CustomWebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v4, Lcom/aide/ui/build/javascript/h;

    invoke-direct {v4, p0, v2}, Lcom/aide/ui/build/javascript/h;-><init>(Lcom/aide/ui/build/javascript/RunJavaScriptActivity;Ljava/io/PrintStream;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "EXTRA_DEX"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<body> <script>\n (function () {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n})();alert(\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$$$FINISHED$$$"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\');\n</script> </body>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v6, "bin"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    const-string v6, "script.html"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/aide/ui/build/javascript/i;

    invoke-direct {v5, p0, v3, v2}, Lcom/aide/ui/build/javascript/i;-><init>(Lcom/aide/ui/build/javascript/RunJavaScriptActivity;Landroid/webkit/WebView;Ljava/io/File;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_92
    .catchall {:try_start_5 .. :try_end_92} :catchall_93

    return-void

    :catchall_93
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->tp:Z

    if-eqz v3, :cond_9b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9b
    throw v2
.end method
