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
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    .line 183
    new-instance p1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;

    invoke-direct {p1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;-><init>()V

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$3;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->show(Landroid/app/Activity;Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V

    const/4 p1, 0x0

    return p1
.end method
