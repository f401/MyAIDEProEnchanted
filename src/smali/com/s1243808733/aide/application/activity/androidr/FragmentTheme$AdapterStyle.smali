.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;
.super Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
.source "FragmentTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;
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

.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list_backup:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getListBackup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list_backup:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v3, 0x41200000    # 10.0f

    if-nez p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    invoke-static {v4}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v0

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v1

    invoke-static {v4}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->dp2px(F)I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;Landroid/view/View;)V

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object v1

    .line 75
    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->ctx:Landroid/content/Context;

    iget-object v5, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    iget-object v6, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    .line 76
    invoke-virtual {p0, v3, v5, v6}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->ctx:Landroid/content/Context;

    iget v1, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->title:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;

    goto :goto_0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    return-void
.end method
