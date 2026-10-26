.class Lcom/yt/plugin/WebActivity$MyWebChromeClient$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yt/plugin/WebActivity$MyWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/yt/plugin/WebActivity$MyWebChromeClient;


# direct methods
.method constructor <init>(Lcom/yt/plugin/WebActivity$MyWebChromeClient;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient$1;->this$1:Lcom/yt/plugin/WebActivity$MyWebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient$1;->this$1:Lcom/yt/plugin/WebActivity$MyWebChromeClient;

    iget-object v0, v0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->-$$Nest$fgetmProgressView(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
