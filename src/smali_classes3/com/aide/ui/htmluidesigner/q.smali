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
    .registers 5

    const-wide v0, -0x308f47b38f2dc5f5L  # -4.726645632267079E74

    const-wide v2, -0x33ffc8f4c40e65ccL  # -1.2722912482557024E58

    const-class v4, Lcom/aide/ui/htmluidesigner/q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1bf5acad7c629fafL
    .end annotation

    const-wide v0, -0xe48b092e74eb60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/htmluidesigner/b;->j6:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_44

    const/4 v3, 0x3

    const-string v4, "console.log"

    if-eq v2, v3, :cond_3b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_33

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2b

    :try_start_23
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_2b
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_33
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_3b
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_44

    :goto_42
    const/4 p1, 0x1

    return p1

    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v2
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x2899ee3699517045L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x53a98d362190e5fcL  # 1.0659746441441924E95

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/q;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    new-instance v1, Lcom/aide/ui/htmluidesigner/k;

    invoke-direct {v1, p0, p4}, Lcom/aide/ui/htmluidesigner/k;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p3, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1e

    const/4 p1, 0x1

    return p1

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x53a98d362190e5fcL  # 1.0659746441441924E95

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4a0ba0acc2906a13L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x19a19e20e9f10248L  # 3.239228854834785E-185

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v1, p0, Lcom/aide/ui/htmluidesigner/q;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    new-instance v5, Lcom/aide/ui/htmluidesigner/l;

    invoke-direct {v5, p0, p4}, Lcom/aide/ui/htmluidesigner/l;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

    new-instance v7, Lcom/aide/ui/htmluidesigner/m;

    invoke-direct {v7, p0, p4}, Lcom/aide/ui/htmluidesigner/m;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

    new-instance v8, Lcom/aide/ui/htmluidesigner/n;

    invoke-direct {v8, p0, p4}, Lcom/aide/ui/htmluidesigner/n;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsResult;)V

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

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x19a19e20e9f10248L  # 3.239228854834785E-185

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
        method = -0x54ae8f4fa8902545L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/q;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x58ee9f1e1d8945d0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    iget-object v1, p0, Lcom/aide/ui/htmluidesigner/q;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    new-instance v5, Lcom/aide/ui/htmluidesigner/o;

    invoke-direct {v5, p0, p5}, Lcom/aide/ui/htmluidesigner/o;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsPromptResult;)V

    new-instance v6, Lcom/aide/ui/htmluidesigner/p;

    invoke-direct {v6, p0, p5}, Lcom/aide/ui/htmluidesigner/p;-><init>(Lcom/aide/ui/htmluidesigner/q;Landroid/webkit/JsPromptResult;)V

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

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/q;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x58ee9f1e1d8945d0L

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
