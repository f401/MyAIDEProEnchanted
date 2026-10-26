.class Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 155
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    .line 161
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 162
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method
