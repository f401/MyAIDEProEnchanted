.class public Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManifestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private currentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;

.field private selectMode:Z

.field private selected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->currentList:Ljava/util/List;

    return-void
.end method

.method public static dp2px(F)I
    .registers 2

    .line 231
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static hasAdded(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 112
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public static remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_22

    .line 96
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 97
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method public static remove(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 105
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 153
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->currentList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;
    .registers 3

    .line 158
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/application/activity/permission/Permission;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSubTitle(I)Ljava/lang/CharSequence;
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemTitle(I)Ljava/lang/CharSequence;
    .registers 2

    .line 136
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelected()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    if-nez p2, :cond_9

    .line 122
    new-instance p2, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;-><init>(Landroid/content/Context;)V

    .line 124
    :cond_9
    move-object p3, p2

    check-cast p3, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    iget-object p3, p3, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 126
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v0

    .line 127
    iget-object v1, p3, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d. "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItemTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p3, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItemSubTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelected(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->setSelection(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->setSelectionMode(Z)V

    return-object p2
.end method

.method public isSelectMode()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selectMode:Z

    return v0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->listener:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;

    if-eqz v0, :cond_7

    .line 73
    invoke-interface {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;->onDataSetChanged()V

    .line 76
    :cond_7
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetInvalidated()V

    goto :goto_18

    .line 79
    :cond_15
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_18
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 1

    .line 85
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public setCurrentList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->currentList:Ljava/util/List;

    return-void
.end method

.method public setListener(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->listener:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;

    return-void
.end method

.method public setSelectMode(Z)V
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 43
    :cond_7
    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selectMode:Z

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V
    .registers 6

    if-eqz p2, :cond_12

    .line 53
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 55
    :cond_12
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_1d
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->listener:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;

    if-eqz v0, :cond_24

    .line 58
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;->onSelection(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    :cond_24
    return-void
.end method

.method public setSelected(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    return-void
.end method
