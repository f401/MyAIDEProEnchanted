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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

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

    move-result p1

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->isLightTheme:Z

    return-void
.end method

.method private getItemView()Landroid/view/View;
    .registers 7

    .line 158
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    const/high16 v1, 0x41800000  # 16.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 161
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    new-instance v3, Lcom/caverock/androidsvg/SVGImageView;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVGImageView;-><init>(Landroid/content/Context;)V

    .line 165
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGImageView;->setId(I)V

    .line 167
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 169
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    const/high16 v1, 0x41200000  # 10.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {v4, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 171
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 172
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    const/high16 v1, 0x41500000  # 13.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 175
    const/high16 v1, 0x42000000  # 32.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 176
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    const/high16 v2, 0x42dc0000  # 110.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;)Landroid/text/SpannableStringBuilder;
    .registers 9

    .line 131
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 132
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    iget-boolean p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    if-eqz p2, :cond_31

    iget p2, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    if-ltz p2, :cond_31

    .line 134
    new-instance p2, Landroid/text/style/BackgroundColorSpan;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 135
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 136
    iget v2, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    iget v3, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    const/16 v4, 0x21

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 137
    iget p2, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    iget p3, p3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    invoke-virtual {v1, p1, p2, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    :cond_31
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/application/activity/icons/Icon;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_f

    .line 107
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItemView()Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance p3, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconAdapter;Landroid/view/View;)V

    .line 109
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_15

    .line 111
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;

    .line 113
    :goto_15
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;

    move-result-object p1

    .line 114
    iget-object v0, p3, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v3, v3, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    invoke-virtual {p0, v1, v2, v3}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/high16 v0, 0x42c00000  # 96.0f

    :try_start_2e
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->isLightTheme:Z

    if-eqz v0, :cond_3d

    const/high16 v0, -0x1000000

    goto :goto_3e

    :cond_3d
    const/4 v0, -0x1

    :goto_3e
    invoke-static {p1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 119
    iget-object v0, p3, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->icon:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVGImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_47} :catch_48

    goto :goto_4f

    .line 123
    :catch_48
    move-exception p1

    iget-object p1, p3, Lcom/s1243808733/aide/application/activity/icons/IconAdapter$ViewHolder;->icon:Lcom/caverock/androidsvg/SVGImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/caverock/androidsvg/SVGImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_4f
    return-object p2
.end method

.method public reset()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .registers 9

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 59
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->backup_list:Ljava/util/List;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    .line 60
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    .line 61
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetChanged()V

    goto/16 :goto_9f

    .line 63
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->backup_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/application/activity/icons/Icon;

    .line 66
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/icons/Icon;->meta:Lcom/s1243808733/aide/application/activity/icons/Meta;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_59

    .line 69
    iget-object v5, v2, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    iput v4, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    .line 70
    iget-object v5, v2, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v5, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    .line 71
    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setName(Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 74
    :cond_59
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/icons/Icon;->meta:Lcom/s1243808733/aide/application/activity/icons/Meta;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getAliases()Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_63

    .line 80
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v3, v3, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    iput v5, v3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->start:I

    .line 81
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    iget-object v3, v3, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;->end:I

    .line 83
    invoke-virtual {v2, v4}, Lcom/s1243808733/aide/application/activity/icons/Icon;->setName(Ljava/lang/String;)V

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 91
    :cond_8d
    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->list:Ljava/util/List;

    .line 92
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->searching:Z

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9c

    .line 94
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetInvalidated()V

    goto :goto_9f

    .line 96
    :cond_9c
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetChanged()V

    :goto_9f
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
