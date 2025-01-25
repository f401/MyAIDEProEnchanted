.class Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;)Lcom/myopicmobile/textwarrior/android/ClipboardPanel;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    :goto_7
    const/4 v0, 0x0

    return v0

    :pswitch_9  #0x0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectAll()V

    goto :goto_7

    :pswitch_11  #0x1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->cut()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_7

    :pswitch_1c  #0x2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->copy()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_7

    :pswitch_27  #0x3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->paste()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_7

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_9  #00000000
        :pswitch_11  #00000001
        :pswitch_1c  #00000002
        :pswitch_27  #00000003
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    invoke-static {v0, p1}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->access$S1000001(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;Landroid/view/ActionMode;)V

    const v0, 0x1040016

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x61

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x78

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x63

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v5

    nop

    :array_b0
    .array-data 4
        0x101037e
        0x1010311
        0x1010312
        0x1010313
    .end array-data
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->_textField:Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->selectText(Z)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/ClipboardPanel$100000000;->this$0:Lcom/myopicmobile/textwarrior/android/ClipboardPanel;

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ActionMode;

    invoke-static {v1, v0}, Lcom/myopicmobile/textwarrior/android/ClipboardPanel;->access$S1000001(Lcom/myopicmobile/textwarrior/android/ClipboardPanel;Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
