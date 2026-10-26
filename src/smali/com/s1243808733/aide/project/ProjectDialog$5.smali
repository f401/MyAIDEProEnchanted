.class Lcom/s1243808733/aide/project/ProjectDialog$5;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog;->showCreateDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$expandableListView:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/ExpandableListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$5;->val$expandableListView:Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$5;->val$expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    const/4 v0, 0x0

    .line 231
    :goto_0
    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-eq v0, p1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$5;->val$expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$5;->val$expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
