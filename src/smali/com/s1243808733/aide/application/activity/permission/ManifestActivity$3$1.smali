.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setCurrentList(Ljava/util/List;)V

    .line 188
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 189
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;->this$1:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    return-void
.end method
