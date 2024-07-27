.class Lcom/androlua/LuaEditor$100000002;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private edit:Landroid/widget/EditText;

.field private idx:I

.field private final this$0:Lcom/androlua/LuaEditor;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    return-void
.end method

.method private _gotoLine()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->access$Lcom$myopicmobile$textwarrior$android$FreeScrollingTextField$3(Lcom/androlua/LuaEditor;)Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->access$Lcom$myopicmobile$textwarrior$android$FreeScrollingTextField$3(Lcom/androlua/LuaEditor;)Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->getRowCount()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v1, v0}, Lcom/androlua/LuaEditor;->gotoLine(I)V

    goto :goto_0
.end method

.method static access$0(Lcom/androlua/LuaEditor$100000002;)Lcom/androlua/LuaEditor;
    .registers 2

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    return-object v0
.end method

.method static synthetic access$1000010(Lcom/androlua/LuaEditor$100000002;)V
    .registers 1

    invoke-direct {p0}, Lcom/androlua/LuaEditor$100000002;->_gotoLine()V

    return-void
.end method

.method static synthetic access$L1000005(Lcom/androlua/LuaEditor$100000002;)I
    .registers 2

    iget v0, p0, Lcom/androlua/LuaEditor$100000002;->idx:I

    return v0
.end method

.method static synthetic access$S1000005(Lcom/androlua/LuaEditor$100000002;I)V
    .registers 2

    iput p1, p0, Lcom/androlua/LuaEditor$100000002;->idx:I

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/androlua/LuaEditor$100000002;->_gotoLine()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "\u8f6c\u5230"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/androlua/LuaEditor$100000002$100000000;

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->access$L1000002(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaEditor$100000002$100000000;-><init>(Lcom/androlua/LuaEditor$100000002;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    new-instance v1, Lcom/androlua/LuaEditor$100000002$100000001;

    invoke-direct {v1, p0}, Lcom/androlua/LuaEditor$100000002$100000001;-><init>(Lcom/androlua/LuaEditor$100000002;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v2, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v2}, Lcom/androlua/LuaEditor;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    invoke-interface {p2, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->access$L1000002(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000002;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v5
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

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
