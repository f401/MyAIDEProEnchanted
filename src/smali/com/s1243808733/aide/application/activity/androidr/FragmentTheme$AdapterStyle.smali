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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation
.end field

.field private list_backup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme;

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;-><init>()V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

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
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getListBackup()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list_backup:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_30

    .line 66
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090003

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
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

    .line 68
    new-instance p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;Landroid/view/View;)V

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_36

    .line 71
    :cond_30
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;

    .line 73
    :goto_36
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object v0

    .line 75
    iget-object v1, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->title:Landroid/widget/TextView;

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

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->ctx:Landroid/content/Context;

    iget-object v3, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    .line 76
    invoke-virtual {p0, v2, v3, v4}, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->ctx:Landroid/content/Context;

    iget v0, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object p1, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle$ViewHolder;->title:Landroid/widget/TextView;

    const/high16 p3, 0x41700000  # 15.0f

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentTheme$AdapterStyle;->list:Ljava/util/List;

    return-void
.end method
