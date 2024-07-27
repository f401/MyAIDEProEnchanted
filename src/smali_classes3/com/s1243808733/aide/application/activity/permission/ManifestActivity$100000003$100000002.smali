.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;

    return-object v0
.end method


# virtual methods
.method public onAdd(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->setCurrentList(Ljava/util/List;)V

    .line 188
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    return-void
.end method
