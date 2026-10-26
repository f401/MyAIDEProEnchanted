.class public Lcom/s1243808733/aide/dependencies/DependencieAdapter;
.super Landroid/widget/BaseAdapter;
.source "DependencieAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;,
        Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;,
        Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;
    }
.end annotation


# instance fields
.field private backuplist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field highlightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            "Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field

.field onSelectionListener:Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;

.field private searchTask:Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;

.field private selected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field

.field selectedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selected:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->ctx:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->backuplist:Ljava/util/List;

    return-void
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 4

    .line 232
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 234
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method public static hasAdded(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    .line 142
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 143
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/dependencies/Dependencie;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/16 v5, 0x21

    .line 216
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 217
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_0

    .line 220
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 221
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 222
    invoke-virtual {v1, v2, p2, p3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 223
    invoke-virtual {v1, v3, p2, p3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 225
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static remove(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 134
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/dependencies/Dependencie;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getBackuplist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->backuplist:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/dependencies/Dependencie;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selected:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_1

    .line 194
    new-instance v1, Lcom/s1243808733/aide/dependencies/ItemView;

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/dependencies/ItemView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 196
    check-cast v0, Lcom/s1243808733/aide/dependencies/ItemView;

    .line 198
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;

    move-result-object v3

    .line 200
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->isSelection(Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/dependencies/ItemView;->setChecked(Z)V

    .line 203
    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;

    .line 205
    invoke-virtual {v3}, Lcom/s1243808733/aide/dependencies/Dependencie;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->start:I

    iget v2, v2, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->end:I

    invoke-direct {p0, v3, v4, v2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 209
    :goto_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v4, "%d. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 209
    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/dependencies/ItemView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    .line 207
    :cond_0
    invoke-virtual {v3}, Lcom/s1243808733/aide/dependencies/Dependencie;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method isSelection(Lcom/s1243808733/aide/dependencies/Dependencie;)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method search(Ljava/lang/String;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->searchTask:Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    new-instance v0, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;-><init>(Lcom/s1243808733/aide/dependencies/DependencieAdapter;)V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->searchTask:Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;

    .line 85
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setBackuplist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->backuplist:Ljava/util/List;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public setOnSelectionListener(Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->onSelectionListener:Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;

    return-void
.end method

.method public setSelected(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V
    .locals 2

    if-nez p2, :cond_3

    .line 152
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->hasAdded(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)V

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->onSelectionListener:Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;

    if-eqz v0, :cond_2

    .line 165
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;->onSelection(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V

    :cond_2
    return-void

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->hasAdded(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
