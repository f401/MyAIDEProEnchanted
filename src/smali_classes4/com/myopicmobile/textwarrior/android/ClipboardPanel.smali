.class public Lcom/myopicmobile/textwarrior/android/ClipboardPanel;
.super Ljava/lang/Object;


# instance fields
.field private _clipboardActionMode:Landroid/view/ActionMode;

.field private _context:Landroid/content/Context;

.field protected _textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$L1000000(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)Landroid/view/ActionMode;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_clipboardActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_clipboardActionMode:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public hide()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->stopClipboardAction()V

    return-void
.end method

.method public show()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->startClipboardAction()V

    return-void
.end method

.method public startClipboardAction()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_clipboardActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    new-instance v1, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;

    invoke-direct {v1, p0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;-><init>(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)V

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_e
    return-void
.end method

.method public stopClipboardAction()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_clipboardActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_clipboardActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ActionMode;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_clipboardActionMode:Landroid/view/ActionMode;

    :cond_e
    return-void
.end method
