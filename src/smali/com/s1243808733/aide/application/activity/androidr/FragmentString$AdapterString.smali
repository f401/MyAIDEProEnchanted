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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private list_backup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z

.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentString;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    .line 88
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list_backup:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->ctx:Landroid/content/Context;

    return-void
.end method

.method private getHighlightText(Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;
    .registers 9

    .line 139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 140
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 141
    iget-boolean p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->searching:Z

    if-eqz p1, :cond_33

    iget p1, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    if-ltz p1, :cond_33

    .line 142
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 143
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 144
    iget v3, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget v4, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    const/16 v5, 0x21

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    iget p1, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget p2, p2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    invoke-virtual {v1, v2, p1, p2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    :cond_33
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

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

    if-nez p2, :cond_30

    .line 121
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x109000d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    const/high16 p3, 0x41800000  # 16.0f

    invoke-static {p3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    const/high16 v1, 0x41200000  # 10.0f

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v2

    invoke-static {p3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result p3

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    invoke-virtual {p2, v0, v2, p3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    new-instance p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;Landroid/view/View;)V

    .line 124
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_36

    .line 126
    :cond_30
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;

    .line 128
    :goto_36
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    move-result-object v0

    .line 130
    iget-object v1, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    .line 131
    invoke-direct {p0, v2, v3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getHighlightText(Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 130
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object p3, v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->subname:Ljava/lang/String;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-direct {p0, p3, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->getHighlightText(Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .registers 9

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->searching:Z

    if-eqz p1, :cond_6b

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6b

    .line 98
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list_backup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    .line 101
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->name:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 102
    iget-object v4, v2, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->subname:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4a

    if-eq v4, v5, :cond_21

    .line 104
    :cond_4a
    iget-object v5, v2, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    iput v3, v5, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    .line 105
    iget-object v5, v2, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    iput v3, v5, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    .line 106
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    iput v4, v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    .line 107
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->hig_subName:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 112
    :cond_68
    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    goto :goto_72

    .line 95
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list_backup:Ljava/util/List;

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->list:Ljava/util/List;

    .line 96
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->searching:Z

    .line 114
    :goto_72
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;->notifyDataSetChanged()V

    return-void
.end method
