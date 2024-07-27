.class Lcom/aide/ui/htmluidesigner/q;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw()Landroid/webkit/WebView;
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
.field final FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/htmluidesigner/q;

    const-wide v2, -0x308f47b38f2dc5f5L    # -4.726645632267079E74

    const-wide v4, -0x33ffc8f4c40e65ccL    # -1.2722912482557024E58

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/q;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1bf5acad7c629fafL
    .end annotation

    const-wide v2, -0xe48b092e74eb60L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe48b092e74eb60L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/htmluidesigner/b;->j6:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const-string v0, "console.log"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "console.log"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    const-string v0, "console.log"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "console.log"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x2899ee3699517045L
    .end annotation

    const-wide v8, 0x53a98d362190e5fcL    # 1.0659746441441924E95

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x53a98d362190e5fcL    # 1.0659746441441924E95

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/q;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    new-instance v1, Lcom/aide/ui/htmluidesigner/k;

    invoke-direct {v1, p0, p4}, Lcom/aide/ui/htmluidesigner/k;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p3, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x4a0ba0acc2906a13L
    .end annotation

    const-wide v8, 0x19a19e20e9f10248L    # 3.239228854834785E-185

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19a19e20e9f10248L    # 3.239228854834785E-185

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/q;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    new-instance v4, Lcom/aide/ui/htmluidesigner/l;

    invoke-direct {v4, p0, p4}, Lcom/aide/ui/htmluidesigner/l;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

    new-instance v6, Lcom/aide/ui/htmluidesigner/m;

    invoke-direct {v6, p0, p4}, Lcom/aide/ui/htmluidesigner/m;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

    new-instance v7, Lcom/aide/ui/htmluidesigner/n;

    invoke-direct {v7, p0, p4}, Lcom/aide/ui/htmluidesigner/n;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

    const/4 v1, 0x0

    const-string v3, "Ok"

    const-string v5, "Cancel"

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x54ae8f4fa8902545L
    .end annotation

    const-wide v8, -0x58ee9f1e1d8945d0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x58ee9f1e1d8945d0L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/q;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    new-instance v4, Lcom/aide/ui/htmluidesigner/o;

    invoke-direct {v4, p0, p5}, Lcom/aide/ui/htmluidesigner/o;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsPromptResult;)V

    new-instance v5, Lcom/aide/ui/htmluidesigner/p;

    invoke-direct {v5, p0, p5}, Lcom/aide/ui/htmluidesigner/p;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsPromptResult;)V

    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
