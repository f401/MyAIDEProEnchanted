.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;
.super Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
.source "FragmentColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterColor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;,
        Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation
.end field

.field private list_backup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation
.end field

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list_backup:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list_backup:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->ctx:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;)Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListBackup()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list_backup:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 67
    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;

    .line 69
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object v2

    .line 71
    iget-object v3, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->ctx:Landroid/content/Context;

    iget-object v6, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    invoke-virtual {p0, v5, v6, v7}, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 74
    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor$ViewHolder;->subtitle:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v0, v2}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V

    .line 75
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentColor$AdapterColor;->list:Ljava/util/List;

    return-void
.end method
