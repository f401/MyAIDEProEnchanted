.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

.field private final val$item:Lcom/s1243808733/aide/application/activity/permission/Permission;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Lcom/s1243808733/aide/application/activity/permission/Permission;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;->val$item:Lcom/s1243808733/aide/application/activity/permission/Permission;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;->val$item:Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    .line 142
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 143
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000000;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    return-void
.end method
