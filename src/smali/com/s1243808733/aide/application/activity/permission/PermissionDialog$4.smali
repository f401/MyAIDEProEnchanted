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
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 200
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    .line 201
    check-cast p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    .line 202
    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 203
    invoke-virtual {p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->invertSelection()Z

    move-result p2

    .line 204
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p3}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    if-eqz p2, :cond_27

    .line 207
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 209
    :cond_27
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    .line 212
    :goto_35
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method
