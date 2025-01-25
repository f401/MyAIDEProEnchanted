.class Lcom/s1243808733/aide/dependencies/DependencieDialog$2;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/dependencies/DependencieDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;


# direct methods
.method static bridge synthetic -$$Nest$mtoggleList(Lcom/s1243808733/aide/dependencies/DependencieDialog$2;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->toggleList(ILjava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toggleList(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iput p1, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    .line 240
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setBackuplist(Ljava/util/List;)V

    .line 241
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setList(Ljava/util/List;)V

    .line 242
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetdialogView(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->-$$Nest$fgetsearchView(Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_44

    .line 245
    iget-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->search(Ljava/lang/String;)V

    :cond_44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 251
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v1, v1, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 252
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 254
    const-string v1, "AppCompat"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v4, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$1;

    invoke-direct {v4, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$1;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$2;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 262
    const-string v1, "AndroidX"

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v4, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$2;

    invoke-direct {v4, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$2;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$2;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 270
    invoke-interface {p1, v2, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 271
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 273
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    if-ne v0, v2, :cond_3f

    .line 274
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_4d

    .line 275
    :cond_3f
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 276
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_4d
    :goto_4d
    return-void
.end method
