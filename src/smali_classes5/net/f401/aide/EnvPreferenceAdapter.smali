.class public Lnet/f401/aide/EnvPreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "EnvPreferenceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/f401/aide/EnvItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    invoke-static {}, Lnet/f401/aide/FUtils;->initEnvSpIfAbsent()V

    .line 23
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    .line 24
    invoke-static {}, Lnet/f401/aide/FUtils;->getEnvVarPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 25
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    return-void

    .line 24
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    iget-object v2, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lnet/f401/aide/EnvItem;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lnet/f401/aide/EnvItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method


# virtual methods
.method public getCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 31
    iget-object v0, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lnet/f401/aide/EnvPreferenceAdapter;->getItem(I)Lnet/f401/aide/EnvItem;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lnet/f401/aide/EnvItem;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 36
    iget-object v0, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/f401/aide/EnvItem;

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 68
    const/4 v0, 0x0

    check-cast v0, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;

    .line 69
    if-nez p2, :cond_85

    .line 70
    new-instance p2, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;

    invoke-direct {p2}, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;-><init>()V

    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 78
    const/4 v6, 0x5

    int-to-float v6, v6

    invoke-static {v6}, Lcom/blankj/utilcode/util/ConvertUtils;->dp2px(F)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 79
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x1010040

    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 82
    const/16 v4, 0x18

    int-to-float v4, v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/ConvertUtils;->dp2px(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iput-object v2, p2, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;->tx1:Landroid/widget/TextView;

    .line 86
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v6, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 89
    invoke-static {v4}, Lcom/blankj/utilcode/util/ConvertUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x1010041

    invoke-virtual {v2, p3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    iput-object v2, p2, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;->tx2:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 95
    goto :goto_8d

    .line 96
    :cond_85
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;

    move-object v0, p2

    move-object p2, p3

    .line 97
    :goto_8d
    iget-object p3, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/f401/aide/EnvItem;

    .line 98
    iget-object p3, p2, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;->tx1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p2, p2, Lnet/f401/aide/EnvPreferenceAdapter$ViewHolder;->tx2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnet/f401/aide/EnvItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-object v0
.end method

.method public remove(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lnet/f401/aide/EnvPreferenceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public set(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/f401/aide/EnvItem;

    invoke-virtual {p1, p2}, Lnet/f401/aide/EnvItem;->setValue(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lnet/f401/aide/EnvPreferenceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 62
    iget-object v0, p0, Lnet/f401/aide/EnvPreferenceAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lnet/f401/aide/EnvItem;

    invoke-direct {v1, p1, p2}, Lnet/f401/aide/EnvItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lnet/f401/aide/EnvPreferenceAdapter;->notifyDataSetChanged()V

    return-void

    .line 55
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/f401/aide/EnvItem;

    .line 56
    invoke-virtual {v1}, Lnet/f401/aide/EnvItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 57
    invoke-virtual {v1, p2}, Lnet/f401/aide/EnvItem;->setValue(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lnet/f401/aide/EnvPreferenceAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method
