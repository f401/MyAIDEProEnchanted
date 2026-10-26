.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v0

    .line 201
    check-cast p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 202
    iget-object v1, p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 203
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->invertSelection()Z

    move-result v1

    .line 204
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->notifyDataSetChanged()V

    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    goto :goto_0
.end method
