.class public Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
.super Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;,
        Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;,
        Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;
    }
.end annotation


# instance fields
.field private backuplist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field highlight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    .line 28
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->backuplist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->backuplist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->backuplist:Ljava/util/List;

    return-void
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .registers 5

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 156
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 158
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .registers 10

    const/16 v5, 0x21

    .line 140
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 141
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    if-ltz p2, :cond_0

    .line 144
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 145
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 146
    invoke-virtual {v1, v2, p2, p3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    invoke-virtual {v1, v3, p2, p3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 149
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 151
    return-object v0
.end method


# virtual methods
.method public bind(Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$100000000;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getItemSubTitle(I)Ljava/lang/CharSequence;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;

    .line 131
    if-nez v0, :cond_0

    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v2, v2, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    invoke-direct {p0, v1, v2, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemTitle(I)Ljava/lang/CharSequence;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;

    .line 120
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v2, v2, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    invoke-direct {p0, v1, v2, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel()V

    .line 59
    :cond_0
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
