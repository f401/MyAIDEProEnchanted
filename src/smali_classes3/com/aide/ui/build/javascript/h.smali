.class Lcom/aide/ui/build/javascript/h;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->v5()V
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
.field final FH:Ljava/io/PrintStream;

.field final Hw:Lcom/aide/ui/build/javascript/RunJavaScriptActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x5d52d0ed077f657cL  # 3.585155351576895E141

    const-wide v2, 0x8e01150a9b18de7L

    const-class v4, Lcom/aide/ui/build/javascript/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/javascript/RunJavaScriptActivity;Ljava/io/PrintStream;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/javascript/h;->Hw:Lcom/aide/ui/build/javascript/RunJavaScriptActivity;

    iput-object p2, p0, Lcom/aide/ui/build/javascript/h;->FH:Ljava/io/PrintStream;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x581999b5b06348b8L
    .end annotation

    const-wide v0, 0x4746dff3e59fb931L  # 2.37545663476065E35

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/javascript/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "js"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/aide/ui/build/javascript/h;->FH:Ljava/io/PrintStream;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/aide/ui/build/javascript/h;->FH:Ljava/io/PrintStream;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_27

    const/4 p1, 0x1

    return p1

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/javascript/h;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1fd4625a46b501e0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/javascript/h;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x998a820be4ef25bL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "$$$FINISHED$$$"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/aide/ui/build/javascript/h;->Hw:Lcom/aide/ui/build/javascript/RunJavaScriptActivity;

    invoke-static {v0}, Lcom/aide/ui/build/javascript/RunJavaScriptActivity;->j6(Lcom/aide/ui/build/javascript/RunJavaScriptActivity;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_2d

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/build/javascript/h;->Hw:Lcom/aide/ui/build/javascript/RunJavaScriptActivity;

    new-instance v1, Lcom/aide/ui/build/javascript/b;

    invoke-direct {v1, p0, p4}, Lcom/aide/ui/build/javascript/b;-><init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsResult;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p3, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2f

    :goto_2d
    const/4 p1, 0x1

    return p1

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/javascript/h;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x998a820be4ef25bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1a79826e2333a868L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/javascript/h;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x239b634d9f7965c7L  # -1.1985336124908274E137

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v1, p0, Lcom/aide/ui/build/javascript/h;->Hw:Lcom/aide/ui/build/javascript/RunJavaScriptActivity;

    new-instance v5, Lcom/aide/ui/build/javascript/c;

    invoke-direct {v5, p0, p4}, Lcom/aide/ui/build/javascript/c;-><init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsResult;)V

    new-instance v7, Lcom/aide/ui/build/javascript/d;

    invoke-direct {v7, p0, p4}, Lcom/aide/ui/build/javascript/d;-><init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsResult;)V

    new-instance v8, Lcom/aide/ui/build/javascript/e;

    invoke-direct {v8, p0, p4}, Lcom/aide/ui/build/javascript/e;-><init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsResult;)V

    const/4 v2, 0x0

    const-string v4, "Ok"

    const-string v6, "Cancel"

    move-object v3, p3

    invoke-static/range {v1 .. v8}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2d

    const/4 p1, 0x1

    return p1

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/javascript/h;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x239b634d9f7965c7L  # -1.1985336124908274E137

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x16d19e9bfc198e38L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/javascript/h;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, 0xa4576e2046dd345L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    iget-object v1, p0, Lcom/aide/ui/build/javascript/h;->Hw:Lcom/aide/ui/build/javascript/RunJavaScriptActivity;

    new-instance v5, Lcom/aide/ui/build/javascript/f;

    invoke-direct {v5, p0, p5}, Lcom/aide/ui/build/javascript/f;-><init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsPromptResult;)V

    new-instance v6, Lcom/aide/ui/build/javascript/g;

    invoke-direct {v6, p0, p5}, Lcom/aide/ui/build/javascript/g;-><init>(Lcom/aide/ui/build/javascript/h;Landroid/webkit/JsPromptResult;)V

    const/4 v2, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_26

    const/4 p1, 0x1

    return p1

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/javascript/h;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0xa4576e2046dd345L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method
