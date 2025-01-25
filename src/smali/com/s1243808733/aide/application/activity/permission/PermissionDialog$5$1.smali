.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

.field final val$position:I

.field final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;ILandroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->val$position:I

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 229
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object p1

    iget p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->val$position:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    .line 230
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->val$view:Landroid/view/View;

    check-cast p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 231
    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 232
    invoke-virtual {p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->invertSelection()Z

    move-result p2

    .line 233
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    if-eqz p2, :cond_31

    .line 236
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 238
    :cond_31
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    :goto_43
    return-void
.end method
