.class Lcom/termux/view/TerminalView$4;
.super Landroid/view/ActionMode$Callback2;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/view/TerminalView;

.field final val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 866
    iput-object p1, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iput-object p2, p0, Lcom/termux/view/TerminalView$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 879
    iget-object v0, p0, Lcom/termux/view/TerminalView$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 869
    iget-object v0, p0, Lcom/termux/view/TerminalView$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    .line 889
    iget-object p1, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget p1, p1, Lcom/termux/view/TerminalView;->mSelX1:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget p2, p2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 890
    iget-object p2, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p2, Lcom/termux/view/TerminalView;->mSelX2:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 891
    iget-object v0, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget v0, v0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object v1, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 892
    iget-object v1, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelY2:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView$4;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 893
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, v2, v0, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
