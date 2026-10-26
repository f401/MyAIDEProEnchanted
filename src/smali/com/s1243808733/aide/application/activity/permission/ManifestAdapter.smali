.class public Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManifestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;,
        Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;,
        Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private currentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
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
    .locals 2

    .line 231
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static hasAdded(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    .line 111
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 112
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 96
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static remove(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 104
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->currentList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSubTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 140
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 136
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
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
    .locals 9

    if-nez p2, :cond_0

    .line 122
    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 124
    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ItemView;->holder:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;

    .line 126
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v2

    .line 127
    iget-object v3, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v5, "%d. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItemTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getItemSubTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->setSelection(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$ViewHolder;->setSelectionMode(Z)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public isSelectMode()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selectMode:Z

    return v0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->listener:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;->onDataSetChanged()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetInvalidated()V

    .line 79
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .line 85
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public setCurrentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->currentList:Ljava/util/List;

    return-void
.end method

.method public setListener(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->listener:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;

    return-void
.end method

.method public setSelectMode(Z)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->isSelectMode()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selectMode:Z

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V
    .locals 3

    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->listener:Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;->onSelection(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getSelected()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSelected(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->selected:Ljava/util/Map;

    return-void
.end method
