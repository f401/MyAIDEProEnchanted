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
    .locals 0
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
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    iget v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v1

    .line 230
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->val$view:Landroid/view/View;

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 231
    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 232
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->invertSelection()Z

    move-result v0

    .line 233
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object v2, v2, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    goto :goto_0
.end method
