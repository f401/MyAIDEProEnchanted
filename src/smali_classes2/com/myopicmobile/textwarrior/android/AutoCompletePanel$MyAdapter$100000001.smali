.class Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;
.super Landroid/widget/Filter;


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    return-object v0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    aget-object v4, v2, v0

    aget-object v1, v2, v6

    invoke-static {}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/myopicmobile/textwarrior/common/Language;->isBasePackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/myopicmobile/textwarrior/common/Language;->getBasePackage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$S1000009(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    array-length v2, v2

    if-ne v2, v6, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/common/Language;->isBasePackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/myopicmobile/textwarrior/common/Language;->getBasePackage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    array-length v2, v1

    if-lt v0, v2, :cond_5

    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    aget-object v2, v1, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Language;->getUserWord()[Ljava/lang/String;

    move-result-object v4

    move v2, v0

    :goto_3
    array-length v5, v4

    if-lt v2, v5, :cond_8

    invoke-static {}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Language;->getKeywords()[Ljava/lang/String;

    move-result-object v4

    move v2, v0

    :goto_4
    array-length v5, v4

    if-lt v2, v5, :cond_a

    invoke-static {}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000002()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/common/Language;->getNames()[Ljava/lang/String;

    move-result-object v2

    :goto_5
    array-length v4, v2

    if-lt v0, v4, :cond_c

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    aget-object v5, v4, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/Filter$FilterResults;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$L1000019(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/common/Flag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->clear()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v0

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretY()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v1

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->rowHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v2

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->getItemHeight()I

    move-result v4

    const/4 v5, 0x2

    iget v6, p2, Landroid/widget/Filter$FilterResults;->count:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$1000015(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;I)V

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v4

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getCaretX()I

    move-result v4

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v5}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v5

    invoke-static {v5}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$1000016(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;I)V

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v3

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v1

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000000(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/FreeScrollingTextField;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$1000017(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
