.class public Lcom/aide/ui/AIDEErrorsView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation runtime Labcd/xu;
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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = -0x6c36122f87624f5L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x341d8075acc2fb4dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/AIDEErrorsView;

    const-wide v1, -0x2fd5999c863dc565L  # -1.5284529944664184E78

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x2493f604bcb37729L  # 1.757617726443213E-132

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEErrorsView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/AIDEErrorsView;->FH:I

    iput v3, p0, Lcom/aide/ui/AIDEErrorsView;->Hw:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEErrorsView;->DW()V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/AIDEErrorsView;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEErrorsView;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x34c97cc7b155dbd0L  # -2.156276580787376E54

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEErrorsView;->FH:I

    iput v0, p0, Lcom/aide/ui/AIDEErrorsView;->Hw:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEErrorsView;->DW()V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEErrorsView;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x34c97cc7b155dbd0L  # -2.156276580787376E54

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEErrorsView;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x96ae98c95cb4b25L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEErrorsView;->FH:I

    iput v0, p0, Lcom/aide/ui/AIDEErrorsView;->Hw:I

    invoke-direct {p0}, Lcom/aide/ui/AIDEErrorsView;->DW()V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEErrorsView;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x96ae98c95cb4b25L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method private DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x229b588b967c0ed0L
    .end annotation

    const-wide v0, -0x8f6bf02611929e3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEErrorsView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/aide/ui/aa;->ro()Z

    move-result v3

    if-nez v3, :cond_3f

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3f
    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/L;

    invoke-direct {v3, p0}, Lcom/aide/ui/L;-><init>(Lcom/aide/ui/AIDEErrorsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEErrorsView;->j6()V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_52

    return-void

    :catchall_52
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEErrorsView;->DW:Z

    if-eqz v3, :cond_5a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5a
    throw v2
.end method


# virtual methods
.method public j6()V
    .registers 7

    const-wide v0, -0x251e941f3280ab00L  # -6.037973118244521E129

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEErrorsView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->FH()I

    move-result v2

    iget v3, p0, Lcom/aide/ui/AIDEErrorsView;->FH:I

    if-nez v3, :cond_1c

    iget v3, p0, Lcom/aide/ui/AIDEErrorsView;->Hw:I

    if-eq v3, v2, :cond_50

    :cond_1c
    iput v2, p0, Lcom/aide/ui/AIDEErrorsView;->Hw:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/aide/ui/AIDEErrorsView;->FH:I

    const v4, 0x7f0800a3

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0800a1

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v2, :cond_39

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    :cond_39
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_51

    :cond_50
    :goto_50
    return-void

    :catchall_51
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEErrorsView;->DW:Z

    if-eqz v3, :cond_59

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_59
    throw v2
.end method
