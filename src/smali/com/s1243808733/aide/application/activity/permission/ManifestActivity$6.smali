.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

.field final val$p1:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Landroid/view/ActionMode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->val$p1:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 235
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 236
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 237
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->remove(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_12

    .line 239
    :cond_31
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    .line 240
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 241
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$6;->val$p1:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    return p1
.end method
