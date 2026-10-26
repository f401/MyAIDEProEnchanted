.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;
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

    .line 269
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v2

    move v0, v1

    .line 274
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    .line 276
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v4}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$9;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    return v1
.end method
