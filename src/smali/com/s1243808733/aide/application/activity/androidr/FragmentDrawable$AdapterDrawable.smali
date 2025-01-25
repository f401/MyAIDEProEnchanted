.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;
.super Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
.source "FragmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;,
        Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;
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

.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;Landroid/content/Context;Ljava/util/List;)V
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

    .line 45
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable;

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;-><init>()V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->list:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->list:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->list_backup:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

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

    .line 58
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->list_backup:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_9

    .line 64
    new-instance p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;

    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->ctx:Landroid/content/Context;

    invoke-direct {p2, p0, p3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;Landroid/content/Context;)V

    .line 66
    :cond_9
    move-object p3, p2

    check-cast p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;

    iget-object p3, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ItemView;->holder:Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;

    .line 68
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->getItem(I)Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;

    move-result-object v0

    .line 70
    iget-object v1, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->title:Landroid/widget/TextView;

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

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->ctx:Landroid/content/Context;

    iget-object v3, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->hig_name:Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;

    .line 71
    invoke-virtual {p0, v2, v3, v4}, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->getHighlightText(Landroid/content/Context;Ljava/lang/String;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem$Highlight;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p3, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable$ViewHolder;->icon:Landroid/widget/ImageView;

    iget p3, v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

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

    .line 53
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentDrawable$AdapterDrawable;->list:Ljava/util/List;

    return-void
.end method
