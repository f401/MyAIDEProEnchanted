.class Lcom/termux/view/TerminalView$3;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


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


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    .line 838
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eq v0, v5, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 855
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    return v5

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 845
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 848
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object v1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelX1:I

    iget-object v2, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object v3, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mSelX2:I

    iget-object v4, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v4, v4, Lcom/termux/view/TerminalView;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/termux/terminal/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalSession;->clipboardText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 824
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 825
    const-string v1, "copy_text"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 826
    const/4 v1, 0x2

    const-string v2, "paste_text"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 827
    const/4 v0, 0x3

    const-string v1, "text_selection_more"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
