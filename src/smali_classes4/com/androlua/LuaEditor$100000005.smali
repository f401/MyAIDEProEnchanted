.class Lcom/androlua/LuaEditor$100000005;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private edit:Landroid/widget/EditText;

.field private finder:Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

.field private idx:I

.field private final this$0:Lcom/androlua/LuaEditor;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    return-void
.end method

.method static access$0(Lcom/androlua/LuaEditor$100000005;)Lcom/androlua/LuaEditor;
    .registers 2

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    return-object v0
.end method

.method static synthetic access$1000022(Lcom/androlua/LuaEditor$100000005;)V
    .registers 1

    invoke-direct {p0}, Lcom/androlua/LuaEditor$100000005;->findNext()V

    return-void
.end method

.method static synthetic access$L1000015(Lcom/androlua/LuaEditor$100000005;)I
    .registers 2

    iget v0, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    return v0
.end method

.method static synthetic access$S1000015(Lcom/androlua/LuaEditor$100000005;I)V
    .registers 2

    iput p1, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    return-void
.end method

.method private findNext()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor$100000005;->finder:Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v5}, Lcom/androlua/LuaEditor;->selectText(Z)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->finder:Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v1}, Lcom/androlua/LuaEditor;->getText()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v1

    iget v3, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    iget-object v4, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v4}, Lcom/androlua/LuaEditor;->getText()Lcom/myopicmobile/textwarrior/common/DocumentProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->length()I

    move-result v4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->find(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    iget v0, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v5}, Lcom/androlua/LuaEditor;->selectText(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->access$L1000002(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "未找到"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v5, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    goto :goto_1d

    :cond_57
    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    iget v1, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    iget-object v2, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaEditor;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    iget v1, p0, Lcom/androlua/LuaEditor$100000005;->idx:I

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    goto :goto_1d
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    :goto_7
    const/4 v0, 0x0

    return v0

    :pswitch_9  #0x2
    invoke-direct {p0}, Lcom/androlua/LuaEditor$100000005;->findNext()V

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_9  #00000002
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "搜索"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/androlua/LuaEditor$100000005$100000003;

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->access$L1000002(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaEditor$100000005$100000003;-><init>(Lcom/androlua/LuaEditor$100000005;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    new-instance v1, Lcom/androlua/LuaEditor$100000005$100000004;

    invoke-direct {v1, p0}, Lcom/androlua/LuaEditor$100000005$100000004;-><init>(Lcom/androlua/LuaEditor$100000005;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v2, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-virtual {v2}, Lcom/androlua/LuaEditor;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    invoke-interface {p2, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/androlua/LuaEditor$100000005;->this$0:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->access$L1000002(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/androlua/LuaEditor$100000005;->edit:Landroid/widget/EditText;

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
