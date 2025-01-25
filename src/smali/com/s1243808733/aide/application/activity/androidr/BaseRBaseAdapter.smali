.class public abstract Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseRBaseAdapter.java"


# instance fields
.field public searching:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;
    .registers 9

    .line 40
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 41
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    iget-boolean p2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->searching:Z

    if-eqz p2, :cond_31

    iget p2, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    if-ltz p2, :cond_31

    .line 43
    new-instance p2, Landroid/text/style/BackgroundColorSpan;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 44
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 45
    iget v2, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget v3, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    const/16 v4, 0x21

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 46
    iget p2, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget p3, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    invoke-virtual {v1, p1, p2, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 48
    :cond_31
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public abstract getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object p1

    return-object p1
.end method

.method public abstract getListBackup()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation
.end method

.method public search(Ljava/lang/String;)V
    .registers 8

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->searching:Z

    .line 19
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->getListBackup()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_53

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_53

    .line 24
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    .line 27
    iget-object v3, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    .line 29
    iget-object v4, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    iput v3, v4, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    .line 30
    iget-object v4, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v4, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 34
    :cond_4f
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->setList(Ljava/util/List;)V

    goto :goto_59

    .line 21
    :cond_53
    :goto_53
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->setList(Ljava/util/List;)V

    .line 22
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->searching:Z

    .line 36
    :goto_59
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract setList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation
.end method
