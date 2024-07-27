.class public abstract Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseRBaseAdapter.java"


# instance fields
.field public searching:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;
    .registers 11

    const/16 v6, 0x21

    .line 40
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 41
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    iget-boolean v2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->searching:Z

    if-eqz v2, :cond_0

    iget v2, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    if-ltz v2, :cond_0

    .line 43
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 44
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 45
    iget v4, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget v5, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 46
    iget v2, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    iget v4, p3, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    invoke-virtual {v1, v3, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 48
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50
    return-object v0
.end method

.method public abstract getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
.end method

.method public bridge getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object v0

    return-object v0
.end method

.method public abstract getListBackup()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation
.end method

.method public search(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->searching:Z

    .line 19
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->getListBackup()Ljava/util/List;

    move-result-object v0

    .line 20
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->setList(Ljava/util/List;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->searching:Z

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 24
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 26
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 31
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    .line 27
    iget-object v4, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 28
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 29
    iget-object v5, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    iput v4, v5, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->start:I

    .line 30
    iget-object v5, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v5, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;->end:I

    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public abstract setList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation
.end method
