.class Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private _abort:Lcom/myopicmobile/textwarrior/common/Flag;

.field private _h:I

.field private dm:Landroid/util/DisplayMetrics;

.field private final this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/Flag;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->dm:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    return-object v0
.end method

.method static synthetic access$L1000019(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)Lcom/myopicmobile/textwarrior/common/Flag;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    return-object v0
.end method

.method static synthetic access$S1000019(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;Lcom/myopicmobile/textwarrior/common/Flag;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    return-void
.end method

.method private dp(F)I
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->dm:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public abort()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->set()V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;

    invoke-direct {v0, p0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter$100000001;-><init>(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;)V

    return-object v0
.end method

.method public getItemHeight()I
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_h:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_h:I

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x1090003

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_h:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_h:I

    goto :goto_7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->this$0:Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;->access$L1000012(Lcom/myopicmobile/textwarrior/android/AutoCompletePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method public restart()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/AutoCompletePanel$MyAdapter;->_abort:Lcom/myopicmobile/textwarrior/common/Flag;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/Flag;->clear()V

    return-void
.end method
