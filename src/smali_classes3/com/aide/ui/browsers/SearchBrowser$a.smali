.class Lcom/aide/ui/browsers/SearchBrowser$a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/browsers/SearchBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/aide/ui/browsers/SearchBrowser$b;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/ui/browsers/SearchBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/SearchBrowser$a;

    const-wide v1, -0x3e40bfb8c780f4ecL  # -5.243062324962628E8

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/SearchBrowser;Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x15055bb2c92a32e7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/aide/ui/browsers/SearchBrowser$b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x170a9545c9498878L  # -4.0023389076835006E197

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/ui/browsers/SearchBrowser$a;->FH:Lcom/aide/ui/browsers/SearchBrowser;

    const v0, 0x7f0a003f

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser$a;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x170a9545c9498878L  # -4.0023389076835006E197

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x15b2e5b222817dc0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/SearchBrowser$a;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x8ec6ca942fbc7b4L  # -3.945027132559168E265

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const v0, 0x7f08014c

    const/4 v1, 0x0

    if-nez p2, :cond_33

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a003f

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/browsers/FindResultTextView;

    invoke-static {v3}, Lcom/aide/common/g;->j6(Landroid/widget/TextView;)V

    goto :goto_34

    :cond_33
    move-object v2, p2

    :goto_34
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/browsers/SearchBrowser$b;

    iget-boolean v4, v3, Lcom/aide/ui/browsers/SearchBrowser$b;->FH:Z

    const v5, 0x7f08014b

    const/16 v6, 0x8

    const v7, 0x7f08014f

    if-eqz v4, :cond_75

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08014d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, v3, Lcom/aide/ui/browsers/SearchBrowser$b;->Hw:Ljava/lang/String;

    invoke-static {v1}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f08014e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v3, Lcom/aide/ui/browsers/SearchBrowser$b;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8e

    :cond_75
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/FindResultTextView;

    iget-object v1, v3, Lcom/aide/ui/browsers/SearchBrowser$b;->v5:Lcom/aide/engine/FindResult;

    invoke-virtual {v0, v1}, Lcom/aide/ui/browsers/FindResultTextView;->setContent(Lcom/aide/engine/FindResult;)V
    :try_end_8e
    .catchall {:try_start_0 .. :try_end_8e} :catchall_8f

    :goto_8e
    return-object v2

    :catchall_8f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/SearchBrowser$a;->DW:Z

    if-eqz v1, :cond_a5

    const-wide v2, -0x8ec6ca942fbc7b4L  # -3.945027132559168E265

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a5
    throw v0
.end method
