.class Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;
.super Ljava/lang/Object;
.source "MyAIDEAnalysisProgressBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

.field final val$visibility:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    iput p2, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 86
    iget-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    iget v0, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;->val$visibility:I

    invoke-static {p1, v0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->access$001(Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;I)V

    .line 87
    iget-object p1, p0, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar$3;->this$0:Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/widget/MyAIDEAnalysisProgressBar;->setProgress(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
