.class Lcom/yt/plugin/WebActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yt/plugin/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field private final this$0:Lcom/yt/plugin/WebActivity;


# direct methods
.method public constructor <init>(Lcom/yt/plugin/WebActivity;)V
    .registers 2

    .line 374
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    return-void
.end method

.method static access$0(Lcom/yt/plugin/WebActivity$MyWebChromeClient;)Lcom/yt/plugin/WebActivity;
    .registers 2

    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    return-object v0
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 327
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000002(Lcom/yt/plugin/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000004(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 333
    :goto_0
    if-ne v4, p2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000003(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000004(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 339
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 340
    const/16 v1, 0x12c

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 341
    new-instance v1, Lcom/yt/plugin/WebActivity$MyWebChromeClient$100000002;

    invoke-direct {v1, p0}, Lcom/yt/plugin/WebActivity$MyWebChromeClient$100000002;-><init>(Lcom/yt/plugin/WebActivity$MyWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 357
    iget-object v1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v1}, Lcom/yt/plugin/WebActivity;->access$L1000004(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    :cond_0
    :goto_1
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000004(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 360
    :cond_2
    if-ne v4, p2, :cond_0

    .line 361
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000000(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 370
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000002(Lcom/yt/plugin/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000003(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
