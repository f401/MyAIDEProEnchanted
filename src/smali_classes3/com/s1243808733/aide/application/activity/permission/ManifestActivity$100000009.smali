.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;
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

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v2

    move v0, v1

    .line 274
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 282
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 283
    return v1

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    .line 276
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000009;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v4}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$L1000002(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
