.class Lcom/termux/view/TerminalView$100000004;
.super Landroid/view/ActionMode$Callback2;
.source "TerminalView.java"


# instance fields
.field private final this$0:Lcom/termux/view/TerminalView;

.field private final val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;Landroid/view/ActionMode$Callback;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p1, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iput-object p2, p0, Lcom/termux/view/TerminalView$100000004;->val$callback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method static access$0(Lcom/termux/view/TerminalView$100000004;)Lcom/termux/view/TerminalView;
    .registers 2

    iget-object v0, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000004;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000004;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget v0, v0, Lcom/termux/view/TerminalView;->mSelX1:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 890
    iget-object v1, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelX2:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 891
    iget-object v2, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object v3, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v3, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 892
    iget-object v3, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mSelY2:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget v4, v4, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/termux/view/TerminalView$100000004;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v4, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 893
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p3, v4, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 874
    const/4 v0, 0x0

    return v0
.end method
