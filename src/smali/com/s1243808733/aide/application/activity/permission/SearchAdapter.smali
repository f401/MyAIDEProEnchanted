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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field highlight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetbackuplist(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->backuplist:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    .line 28
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->backuplist:Ljava/util/List;

    return-void
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .registers 4

    .line 156
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010435

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 158
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method private makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .registers 8

    .line 140
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 141
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_25

    .line 144
    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 145
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 146
    const/16 v3, 0x21

    invoke-virtual {v1, p1, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 149
    :cond_25
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/widget/EditText;)V
    .registers 3

    .line 33
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getItemSubTitle(I)Ljava/lang/CharSequence;
    .registers 4

    .line 128
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;

    if-nez v0, :cond_13

    return-object p1

    .line 134
    :cond_13
    iget-object v1, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v1, v1, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->subtitle:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    invoke-direct {p0, p1, v1, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getItemTitle(I)Ljava/lang/CharSequence;
    .registers 4

    .line 117
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/permission/Permission;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;

    if-nez v0, :cond_17

    .line 121
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_17
    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v1, v1, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->start:I

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$TextHighlight;->title:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;

    iget v0, v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$Highlight;->end:I

    invoke-direct {p0, p1, v1, v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->makeHighlightText(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;)V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->highlight:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    if-eqz v0, :cond_c

    .line 57
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->cancel()V

    .line 59
    :cond_c
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;-><init>(Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->mSearchTask:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;

    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter$SearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
