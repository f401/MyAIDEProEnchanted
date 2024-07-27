.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 183
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-direct {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003$100000002;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000003;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V

    .line 193
    const/4 v0, 0x0

    return v0
.end method
