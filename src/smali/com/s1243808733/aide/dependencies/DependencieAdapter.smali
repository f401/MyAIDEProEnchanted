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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field highlightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            "Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field

.field selectedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            "Ljava/lang/Boolean;",
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
    .registers 4

    .line 232
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010435

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 234
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static hasAdded(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 143
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/dependencies/Dependencie;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method private makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .registers 8

    .line 216
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 217
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_25

    .line 220
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 221
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 222
    const/16 v3, 0x21

    invoke-virtual {v1, p1, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 223
    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 225
    :cond_25
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static remove(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    :goto_6
    if-ltz v0, :cond_1b

    .line 134
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/dependencies/Dependencie;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 135
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public getBackuplist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->backuplist:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/dependencies/Dependencie;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selected:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_9

    .line 194
    new-instance p2, Lcom/s1243808733/aide/dependencies/ItemView;

    iget-object p3, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/s1243808733/aide/dependencies/ItemView;-><init>(Landroid/content/Context;)V

    .line 196
    :cond_9
    move-object p3, p2

    check-cast p3, Lcom/s1243808733/aide/dependencies/ItemView;

    .line 198
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->isSelection(Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/s1243808733/aide/dependencies/ItemView;->setChecked(Z)V

    .line 203
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 204
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->highlightMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;

    .line 205
    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/Dependencie;->getName()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->start:I

    iget v1, v1, Lcom/s1243808733/aide/dependencies/DependencieAdapter$Highlight;->end:I

    invoke-direct {p0, v0, v2, v1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_38

    .line 207
    :cond_34
    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/Dependencie;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_38
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v3, v2

    const-string p1, "%d. "

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 209
    invoke-virtual {p3, p1}, Lcom/s1243808733/aide/dependencies/ItemView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method isSelection(Lcom/s1243808733/aide/dependencies/Dependencie;)Z
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 188
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method search(Ljava/lang/String;)V
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->searchTask:Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;

    if-eqz v0, :cond_7

    .line 81
    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$SearchTask;->cancel()V

    .line 83
    :cond_7
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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->backuplist:Ljava/util/List;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public setOnSelectionListener(Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->onSelectionListener:Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;

    return-void
.end method

.method public setSelected(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V
    .registers 5

    if-nez p2, :cond_21

    .line 152
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_f
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->hasAdded(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 156
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)V

    goto :goto_3b

    .line 159
    :cond_21
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->hasAdded(Ljava/util/List;Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 161
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->onSelectionListener:Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;

    if-eqz v0, :cond_42

    .line 165
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;->onSelection(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V

    :cond_42
    return-void
.end method
