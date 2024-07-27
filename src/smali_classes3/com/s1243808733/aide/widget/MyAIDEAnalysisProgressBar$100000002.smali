.class Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;
.super Ljava/lang/Object;
.source "MyAIDEAnalysisProgressBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

.field private final val$visibility:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    iput p2, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;->val$visibility:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;)Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

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

    .line 86
    iget-object v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    iget v1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;->val$visibility:I

    invoke-static {v0, v1}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->access$Sandroid$view$View$815(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;I)V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$100000002;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setProgress(I)V

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
