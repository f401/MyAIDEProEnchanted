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
    .registers 2

    .line 819
    iput-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 7

    .line 838
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_49

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    goto :goto_6c

    .line 852
    :cond_e
    iget-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_6c

    .line 844
    :cond_14
    iget-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 845
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 847
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 848
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_6c

    .line 840
    :cond_49
    iget-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v0, v0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget-object v1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v1, v1, Lcom/termux/view/TerminalView;->mSelY1:I

    iget-object v2, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mSelX2:I

    iget-object v3, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget v3, v3, Lcom/termux/view/TerminalView;->mSelY2:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 841
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->clipboardText(Ljava/lang/String;)V

    .line 855
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->toggleSelectingText(Landroid/view/MotionEvent;)V

    return p2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 8

    .line 824
    iget-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 825
    const-string v0, "copy_text"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 826
    const-string v0, "paste_text"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    invoke-interface {p2, v1, v4, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 827
    const-string p1, "text_selection_more"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    invoke-interface {p2, v1, v0, v1, p1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
