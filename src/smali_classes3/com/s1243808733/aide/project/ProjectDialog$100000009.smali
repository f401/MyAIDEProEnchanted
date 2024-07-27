.class Lcom/s1243808733/aide/project/ProjectDialog$100000009;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field private final val$expandableListView:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/ExpandableListView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000009;->val$expandableListView:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000009;->val$expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 231
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    .line 232
    :cond_0
    if-eq v0, p1, :cond_1

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000009;->val$expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000009;->val$expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
