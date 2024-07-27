.class public Lcom/s1243808733/aide/highlight/HighlightAdapter;
.super Landroid/widget/BaseAdapter;
.source "HighlightAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isLight:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/highlight/Item;",
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
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/highlight/Item;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/Item;

    return-object v0
.end method

.method public bridge getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItem(I)Lcom/s1243808733/aide/highlight/Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemView()Landroid/view/View;
    .registers 9

    const/16 v7, 0xe

    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 86
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    int-to-float v1, v5

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    int-to-float v2, v7

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    int-to-float v3, v5

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    int-to-float v4, v7

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 91
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 93
    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    const v3, 0x1030042

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 94
    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    const/4 v2, 0x5

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    new-instance v2, Lcom/s1243808733/view/ColorBackgroundTextView;

    iget-object v3, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/s1243808733/view/ColorBackgroundTextView;-><init>(Landroid/content/Context;)V

    .line 98
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Lcom/s1243808733/view/ColorBackgroundTextView;->setId(I)V

    .line 99
    int-to-float v3, v7

    invoke-virtual {v2, v3}, Lcom/s1243808733/view/ColorBackgroundTextView;->setTextSize(F)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 104
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 47
    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItemView()Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;-><init>(Lcom/s1243808733/aide/highlight/HighlightAdapter;Landroid/view/View;)V

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItem(I)Lcom/s1243808733/aide/highlight/Item;

    move-result-object v1

    .line 57
    iget-object v2, v0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/s1243808733/aide/highlight/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :try_start_0
    iget-boolean v2, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight:Z

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/highlight/Item;->getColor(Z)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 62
    iget-object v0, v0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v0, v1}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    return-object p2

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isLight()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight:Z

    return v0
.end method

.method public setIsLight(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 38
    iput-boolean p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    return-void
.end method
