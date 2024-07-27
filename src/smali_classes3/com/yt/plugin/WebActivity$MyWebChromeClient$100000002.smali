.class Lcom/yt/plugin/WebActivity$MyWebChromeClient$100000002;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final this$0:Lcom/yt/plugin/WebActivity$MyWebChromeClient;


# direct methods
.method constructor <init>(Lcom/yt/plugin/WebActivity$MyWebChromeClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient$100000002;->this$0:Lcom/yt/plugin/WebActivity$MyWebChromeClient;

    return-void
.end method

.method static access$0(Lcom/yt/plugin/WebActivity$MyWebChromeClient$100000002;)Lcom/yt/plugin/WebActivity$MyWebChromeClient;
    .registers 2

    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient$100000002;->this$0:Lcom/yt/plugin/WebActivity$MyWebChromeClient;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/yt/plugin/WebActivity$MyWebChromeClient$100000002;->this$0:Lcom/yt/plugin/WebActivity$MyWebChromeClient;

    invoke-static {v0}, Lcom/yt/plugin/WebActivity$MyWebChromeClient;->access$0(Lcom/yt/plugin/WebActivity$MyWebChromeClient;)Lcom/yt/plugin/WebActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yt/plugin/WebActivity;->access$L1000000(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
