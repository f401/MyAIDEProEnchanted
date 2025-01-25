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
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 7

    .line 325
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 327
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmSmallWindowMode(Lcom/yt/plugin/WebActivity;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-nez v0, :cond_62

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1f

    .line 329
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, p2, v3}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ProgressBar;IZ)V

    goto :goto_28

    .line 331
    :cond_1f
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_28
    if-ne v2, p2, :cond_72

    .line 334
    iget-object p2, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p2}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmActionBar(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p1}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 339
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 340
    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 341
    new-instance p2, Lcom/yt/plugin/WebActivity$MyWebChromeClient$1;

    invoke-direct {p2, p0}, Lcom/yt/plugin/WebActivity$MyWebChromeClient$1;-><init>(Lcom/yt/plugin/WebActivity$MyWebChromeClient;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 357
    iget-object p2, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p2}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_72

    :cond_62
    if-ne v2, p2, :cond_72

    .line 361
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p1}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressView(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_72
    :goto_72
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 370
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p1}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmSmallWindowMode(Lcom/yt/plugin/WebActivity;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 372
    iget-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {p1}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmActionBar(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method
