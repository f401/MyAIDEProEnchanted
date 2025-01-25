.class Lcom/aide/common/Wa$a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/common/Wa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/aide/common/Wa$b;",
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
.field final FH:Lcom/aide/common/Wa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/Wa$a;

    const-wide v1, -0x1aa7463045105a0cL  # -1.6031281215795303E180

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/common/Wa;Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xa96a4401f6aeb5bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/aide/common/Wa$b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2ce04a88743203d0L  # -2.5836831670085653E92

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/common/Wa$a;->FH:Lcom/aide/common/Wa;

    sget v0, Lcom/aide/ui/Oa;->share_dialog_entry:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa$a;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x2ce04a88743203d0L  # -2.5836831670085653E92

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xd919919a80c564L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$a;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2233a47119a1a885L  # -6.916050810254098E143

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    if-nez p2, :cond_26

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/aide/ui/Oa;->share_dialog_entry:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_27

    :cond_26
    move-object v1, p2

    :goto_27
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/common/Wa$b;

    sget v3, Lcom/aide/ui/Na;->shareDialogEntryText:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/aide/common/Wa$b;->FH(Lcom/aide/common/Wa$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/aide/ui/Na;->shareDialogEntryImage:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/aide/common/Wa$b;->Hw(Lcom/aide/common/Wa$b;)I

    move-result v4

    if-eqz v4, :cond_51

    invoke-static {v2}, Lcom/aide/common/Wa$b;->Hw(Lcom/aide/common/Wa$b;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_51
    invoke-static {v2}, Lcom/aide/common/Wa$b;->Hw(Lcom/aide/common/Wa$b;)I

    move-result v2

    if-nez v2, :cond_58

    const/4 v0, 0x4

    :cond_58
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_5b
    .catchall {:try_start_0 .. :try_end_5b} :catchall_5c

    return-object v1

    :catchall_5c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa$a;->DW:Z

    if-eqz v1, :cond_72

    const-wide v2, -0x2233a47119a1a885L  # -6.916050810254098E143

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v0
.end method
