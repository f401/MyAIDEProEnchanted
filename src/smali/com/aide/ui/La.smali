.class public Lcom/aide/ui/La;
.super Ljava/lang/Object;


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
.field private FH:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/ru;
        field = -0x17f88e479852bc10L
    .end annotation
.end field

.field private Hw:Landroid/view/View;
    .annotation runtime Labcd/ru;
        field = 0x99942a2880ef770L
    .end annotation
.end field

.field private VH:Landroid/view/KeyCharacterMap;
    .annotation runtime Labcd/ru;
        field = -0x50c89faf985dde29L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = -0x298196a8cef88a40L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2a0ee30e1107ca9cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v2, -0x1bb23df1ef9f4583L    # -1.4720129579006365E175

    const-class v0, Lcom/aide/ui/La;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/MainActivity;)V
    .locals 6

    const-wide v4, -0x13815f54c696cc37L    # -4.124298368253449E214

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/La;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13815f54c696cc37L    # -4.124298368253449E214

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/ui/La;->v5:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    const v0, 0x7f080120

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a003b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    invoke-static {p1}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {p1}, Lcom/aide/common/g;->J0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/aide/ui/La;->DW(Z)V

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/Ia;

    invoke-direct {v1, p0}, Lcom/aide/ui/Ia;-><init>(Lcom/aide/ui/La;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/Ja;

    invoke-direct {v1, p0}, Lcom/aide/ui/Ja;-><init>(Lcom/aide/ui/La;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/La;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/La;)Lcom/aide/ui/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    return-object v0
.end method

.method private DW(Z)V
    .locals 4
    .annotation runtime Labcd/su;
        method = -0x11719b87d9acb230L
    .end annotation

    const-wide v2, 0x4f8fe91e6428260L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/La;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f8fe91e6428260L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/La;->Zo:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/La;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/La;)Landroid/view/KeyCharacterMap;
    .locals 1

    iget-object v0, p0, Lcom/aide/ui/La;->VH:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/La;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;
    .locals 0

    iput-object p1, p0, Lcom/aide/ui/La;->VH:Landroid/view/KeyCharacterMap;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/ui/La;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aide/ui/La;->DW(Z)V

    return-void
.end method

.method private v5()F
    .locals 4

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v0, 0x41f00000    # 30.0f

    iget-object v2, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    invoke-static {v2}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_1

    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public j6()I
    .locals 4

    const-wide v2, 0x82f852ec2aeb20L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/La;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x82f852ec2aeb20L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/La;->Zo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/La;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getEditorQuickKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/aide/ui/La;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/aide/ui/La;->v5:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v3, 0x7f080143

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v3, 0x28

    int-to-float v3, v3

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    array-length v1, v6

    if-lt v3, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    const v1, 0x7f0a003c

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v8, "#sp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v7, "\u2192"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/aide/ui/Ka;

    const-string v8, "\t"

    invoke-direct {v7, p0, v8}, Lcom/aide/ui/Ka;-><init>(Lcom/aide/ui/La;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const/4 v7, -0x2

    invoke-virtual {v0, v1, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/aide/ui/Ka;

    invoke-direct {v8, p0, v7}, Lcom/aide/ui/Ka;-><init>(Lcom/aide/ui/La;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public j6(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/QuickKey;->setQuickBarVisibility(Ljava/lang/Object;Z)V

    return-void
.end method

.method public j6_(Z)V
    .locals 4

    const-wide v2, 0xf931ef5fd4801c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/La;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf931ef5fd4801c0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/La;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
