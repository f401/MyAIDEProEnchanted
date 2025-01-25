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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/highlight/Item;
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/highlight/Item;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItem(I)Lcom/s1243808733/aide/highlight/Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemView()Landroid/view/View;
    .registers 8

    .line 86
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    const/high16 v1, 0x41800000  # 16.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x41600000  # 14.0f

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 91
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    .line 93
    iget-object v4, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    const v5, 0x1030042

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 94
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    const/high16 v1, 0x40a00000  # 5.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    new-instance v1, Lcom/s1243808733/view/ColorBackgroundTextView;

    iget-object v4, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/s1243808733/view/ColorBackgroundTextView;-><init>(Landroid/content/Context;)V

    .line 98
    const v4, 0x1020015

    invoke-virtual {v1, v4}, Lcom/s1243808733/view/ColorBackgroundTextView;->setId(I)V

    .line 99
    invoke-virtual {v1, v3}, Lcom/s1243808733/view/ColorBackgroundTextView;->setTextSize(F)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_f

    .line 49
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItemView()Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance p3, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;-><init>(Lcom/s1243808733/aide/highlight/HighlightAdapter;Landroid/view/View;)V

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_15

    .line 53
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;

    .line 55
    :goto_15
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItem(I)Lcom/s1243808733/aide/highlight/Item;

    move-result-object p1

    .line 57
    iget-object v0, p3, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/s1243808733/aide/highlight/Item;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :try_start_22
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight:Z

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/highlight/Item;->getColor(Z)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 62
    iget-object p3, p3, Lcom/s1243808733/aide/highlight/HighlightAdapter$ViewHolder;->subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {p3, p1}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_32

    goto :goto_33

    :catchall_32
    move-exception p1

    :goto_33
    return-object p2
.end method

.method public isLight()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight:Z

    return v0
.end method

.method public setIsLight(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightAdapter;->list:Ljava/util/List;

    return-void
.end method
