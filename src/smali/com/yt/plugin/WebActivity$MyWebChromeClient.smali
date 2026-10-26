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
.field final this$0:Lcom/yt/plugin/WebActivity;


# direct methods
.method constructor <init>(Lcom/yt/plugin/WebActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 325
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 327
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmSmallWindowMode(Lcom/yt/plugin/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ProgressBar;IZ)V

    .line 331
    :goto_0
    if-ne v4, p2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmActionBar(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 339
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 340
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 341
    new-instance v1, Lcom/yt/plugin/WebActivity$MyWebChromeClient$1;

    invoke-direct {v1, p0}, Lcom/yt/plugin/WebActivity$MyWebChromeClient$1;-><init>(Lcom/yt/plugin/WebActivity$MyWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 357
    iget-object v1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v1}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    :cond_0
    :goto_1
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 357
    :cond_2
    if-ne v4, p2, :cond_0

    .line 361
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressView(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 370
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmSmallWindowMode(Lcom/yt/plugin/WebActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmActionBar(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
