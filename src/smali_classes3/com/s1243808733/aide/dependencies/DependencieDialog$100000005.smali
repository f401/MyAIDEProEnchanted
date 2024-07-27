.class Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;)Lcom/s1243808733/aide/dependencies/DependencieDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    return-object v0
.end method

.method static synthetic access$1000008(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->toggleList(ILjava/util/List;)V

    return-void
.end method

.method private toggleList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iput p1, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    .line 240
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->access$L1000001(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setBackuplist(Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->access$L1000001(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setList(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->access$L1000001(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->access$L1000000(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->access$L1000015(Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->access$L1000001(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->search(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 251
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v1, v1, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 252
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 254
    const-string v2, "AppCompat"

    invoke-interface {v1, v4, v5, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 262
    const-string v2, "AndroidX"

    invoke-interface {v1, v4, v5, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000004;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000004;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 270
    invoke-interface {v1, v4, v4, v4}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 271
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 273
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    if-ne v0, v4, :cond_1

    .line 274
    invoke-interface {v1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 276
    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
