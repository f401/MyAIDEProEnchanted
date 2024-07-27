.class public Lnet/f401/aide/adapter/EnvListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EnvListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/f401/aide/EnvItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .registers 7

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    invoke-static {}, Lnet/f401/aide/FUtils;->initEnvSpIfAbsent()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lnet/f401/aide/adapter/EnvListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    invoke-static {}, Lnet/f401/aide/FUtils;->getEnvVarPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    iget-object v3, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    new-instance v4, Lnet/f401/aide/EnvItem;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lnet/f401/aide/EnvItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lnet/f401/aide/EnvItem;

    invoke-direct {v2, p1, p2}, Lnet/f401/aide/EnvItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    invoke-static {p1, p2}, Lnet/f401/aide/FUtils;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/f401/aide/adapter/EnvListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public get(I)Lnet/f401/aide/EnvItem;
    .registers 3

    .line 100
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/f401/aide/EnvItem;

    return-object v0
.end method

.method public getCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 41
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 46
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/f401/aide/EnvItem;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 56
    move-object v0, v1

    check-cast v0, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0a0060

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 65
    :goto_0
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/f401/aide/EnvItem;

    .line 66
    iget-object v2, v1, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, v1, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/f401/aide/EnvItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object p2

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public remove(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/f401/aide/EnvItem;

    invoke-virtual {v0}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/f401/aide/FUtils;->remove(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lnet/f401/aide/adapter/EnvListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/f401/aide/EnvItem;

    invoke-virtual {v0}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :goto_0
    invoke-virtual {v0, p2}, Lnet/f401/aide/EnvItem;->setName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p3}, Lnet/f401/aide/EnvItem;->setValue(Ljava/lang/String;)V

    .line 96
    invoke-static {p2, p3}, Lnet/f401/aide/FUtils;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/f401/aide/adapter/EnvListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {v1}, Lnet/f401/aide/FUtils;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method
