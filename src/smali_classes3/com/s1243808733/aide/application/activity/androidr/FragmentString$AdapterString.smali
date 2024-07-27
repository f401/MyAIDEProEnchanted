.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;
.super Landroid/widget/BaseAdapter;
.source "FragmentString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterString"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private list_backup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/androidr/FragmentString;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list_backup:Ljava/util/List;

    .line 87
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    .line 88
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list_backup:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->ctx:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    return-object v0
.end method

.method private getHighlightText(Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;
    .registers 10

    const/16 v6, 0x21

    .line 139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 140
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 141
    iget-boolean v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->searching:Z

    if-eqz v2, :cond_0

    iget v2, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    if-ltz v2, :cond_0

    .line 142
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 143
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 144
    iget v4, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget v5, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    iget v2, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget v4, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    invoke-virtual {v1, v3, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    return-object v0
.end method

.method public bridge getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v4, 0x10

    const/16 v3, 0xa

    .line 119
    if-nez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    int-to-float v0, v4

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    int-to-float v1, v3

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    int-to-float v2, v4

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v2

    int-to-float v3, v3

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;Landroid/view/View;)V

    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    move-result-object v1

    .line 130
    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-direct {p0, v4, v5}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getHighlightText(Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->subname:Ljava/lang/String;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-direct {p0, v2, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getHighlightText(Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-object p2

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, -0x1

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->searching:Z

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list_backup:Ljava/util/List;

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->searching:Z

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->notifyDataSetChanged()V

    return-void

    .line 98
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list_backup:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 108
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    iput-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    goto :goto_0

    .line 100
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    .line 101
    iget-object v4, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 102
    iget-object v5, v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->subname:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 103
    if-ne v4, v8, :cond_4

    if-eq v5, v8, :cond_2

    .line 104
    :cond_4
    iget-object v6, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    iput v4, v6, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    .line 105
    iget-object v6, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    iput v4, v6, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    .line 106
    iget-object v4, v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    iput v5, v4, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    .line 107
    iget-object v4, v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    .line 108
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
