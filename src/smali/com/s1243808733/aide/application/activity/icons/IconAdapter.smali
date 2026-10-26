.class public Lcom/s1243808733/aide/application/activity/icons/IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private backup_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isLightTheme:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->backup_list:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->isLightTheme:Z

    return-void
.end method

.method private getItemView()Landroid/view/View;
    .locals 7

    const/16 v6, 0x11

    const/high16 v5, 0x42000000    # 32.0f

    const/4 v4, 0x0

    .line 158
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    .line 160
    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 161
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    new-instance v1, Lcom/caverock/androidsvg/SVGImageView;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGImageView;-><init>(Landroid/content/Context;)V

    .line 165
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVGImageView;->setId(I)V

    .line 167
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 169
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 171
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 172
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 175
    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 176
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    const/4 v2, -0x1

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;)Landroid/text/SpannableStringBuilder;
    .locals 7

    const/16 v6, 0x21

    .line 131
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 132
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    iget-boolean v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    if-eqz v2, :cond_0

    iget v2, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    if-ltz v2, :cond_0

    .line 134
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 135
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 136
    iget v4, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    iget v5, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 137
    iget v2, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    iget v4, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    invoke-virtual {v1, v3, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/icons/Icon;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItemView()Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconAdapter;Landroid/view/View;)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;

    move-result-object v1

    .line 114
    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    invoke-virtual {p0, v3, v4, v5}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/high16 v2, 0x42c00000    # 96.0f

    :try_start_0
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-boolean v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->isLightTheme:Z

    if-eqz v1, :cond_1

    const/high16 v1, -0x1000000

    :goto_1
    invoke-static {v2, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->icon:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/SVGImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_2
    return-object p2

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;

    goto :goto_0

    .line 118
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->icon:Lcom/caverock/androidsvg/SVGImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 8

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->backup_list:Ljava/util/List;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    .line 61
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetChanged()V

    .line 96
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 65
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->backup_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/icons/Icon;

    .line 66
    iget-object v1, v0, Lcom/s1243808733/aide/application/activity/icons/Icon;->meta:Lcom/s1243808733/aide/application/activity/icons/Meta;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 69
    iget-object v6, v0, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v6, v6, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    iput v5, v6, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    .line 70
    iget-object v6, v0, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v6, v6, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v6, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    .line 71
    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setName(Ljava/lang/String;)V

    .line 72
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_2
    iget-object v1, v0, Lcom/s1243808733/aide/application/activity/icons/Icon;->meta:Lcom/s1243808733/aide/application/activity/icons/Meta;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getAliases()Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 80
    iget-object v5, v0, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    iput v6, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    .line 81
    iget-object v5, v0, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    .line 83
    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setName(Ljava/lang/String;)V

    .line 84
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_4
    iput-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetInvalidated()V

    goto/16 :goto_0

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->backup_list:Ljava/util/List;

    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
