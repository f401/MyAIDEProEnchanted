.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;
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


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$8;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    return v0
.end method
