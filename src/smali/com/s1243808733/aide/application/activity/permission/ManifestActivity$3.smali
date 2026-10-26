.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 183
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-direct {v0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V

    const/4 v0, 0x0

    return v0
.end method
