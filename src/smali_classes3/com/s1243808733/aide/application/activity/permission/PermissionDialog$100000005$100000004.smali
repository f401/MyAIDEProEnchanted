.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;

.field private final val$position:I

.field private final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->val$position:I

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->val$view:Landroid/view/View;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$L1000004(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    iget v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->val$position:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v1

    .line 230
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->val$view:Landroid/view/View;

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 231
    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 232
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->invertSelection()Z

    move-result v0

    .line 233
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$L1000004(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$L1000001(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005$100000004;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;->access$0(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$100000005;)Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->access$L1000001(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    goto :goto_0
.end method
