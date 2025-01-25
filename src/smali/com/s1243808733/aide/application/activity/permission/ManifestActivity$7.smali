.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;
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
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    .line 250
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 251
    :goto_c
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 252
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 254
    :cond_31
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$7;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    return v0
.end method
