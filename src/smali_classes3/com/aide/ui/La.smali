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
    .registers 3

    const-class v0, Lcom/aide/ui/La;

    const-wide v1, -0x1bb23df1ef9f4583L  # -1.4720129579006365E175

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x13815f54c696cc37L  # -4.124298368253449E214

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/La;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    iput-object v3, p0, Lcom/aide/ui/La;->v5:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    const v3, 0x7f080120

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0a003b

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    invoke-static {p1}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x43b40000  # 360.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3e

    invoke-static {p1}, Lcom/aide/common/g;->J0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    invoke-direct {p0, v3}, Lcom/aide/ui/La;->DW(Z)V

    iget-object v3, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v4, 0x7f080144

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/Ia;

    invoke-direct {v4, p0}, Lcom/aide/ui/Ia;-><init>(Lcom/aide/ui/La;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v4, 0x7f080141

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/Ja;

    invoke-direct {v4, p0}, Lcom/aide/ui/Ja;-><init>(Lcom/aide/ui/La;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_65

    return-void

    :catchall_65
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/La;->DW:Z

    if-eqz v4, :cond_6d

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/La;)Lcom/aide/ui/MainActivity;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    return-object p0
.end method

.method private DW(Z)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x11719b87d9acb230L
    .end annotation

    const-wide v0, 0x4f8fe91e6428260L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/La;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/La;->Zo:Z

    const v2, 0x7f080142

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x7f080145

    if-eqz p1, :cond_2c

    iget-object v6, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3e

    :cond_2c
    iget-object v6, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    :goto_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/La;->DW:Z

    if-eqz v3, :cond_4c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/La;)Landroid/view/KeyCharacterMap;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/La;->VH:Landroid/view/KeyCharacterMap;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/La;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/La;->VH:Landroid/view/KeyCharacterMap;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/ui/La;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/La;->DW(Z)V

    return-void
.end method

.method private v5()F
    .registers 4

    iget-object v0, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    invoke-static {v0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41400000  # 12.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42700000  # 60.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_11

    const/high16 v0, 0x42700000  # 60.0f

    :cond_11
    const/high16 v1, 0x41f00000  # 30.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_19

    const/high16 v0, 0x41f00000  # 30.0f

    :cond_19
    return v0
.end method


# virtual methods
.method public j6()I
    .registers 5

    const-wide v0, 0x82f852ec2aeb20L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/La;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/La;->Zo:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_24

    const/high16 v1, 0x42200000  # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/La;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getEditorQuickKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    if-eqz v0, :cond_79

    if-eqz p1, :cond_79

    iget-object v0, p0, Lcom/aide/ui/La;->v5:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iput-object p1, p0, Lcom/aide/ui/La;->v5:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/La;->FH:Lcom/aide/ui/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    const v2, 0x7f080143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v2, 0x28

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    :goto_36
    array-length v4, p1

    if-lt v3, v4, :cond_3a

    goto :goto_79

    :cond_3a
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_76

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    const v6, 0x7f0a003c

    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "#sp"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    const-string v4, "→"

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/aide/ui/Ka;

    const-string v6, "\t"

    invoke-direct {v4, p0, v6}, Lcom/aide/ui/Ka;-><init>(Lcom/aide/ui/La;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_72

    :cond_67
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/aide/ui/Ka;

    invoke-direct {v6, p0, v4}, Lcom/aide/ui/Ka;-><init>(Lcom/aide/ui/La;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_72
    const/4 v4, -0x2

    invoke-virtual {v1, v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_79
    :goto_79
    return-void
.end method

.method public j6(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/QuickKey;->setQuickBarVisibility(Ljava/lang/Object;Z)V

    return-void
.end method

.method public j6_(Z)V
    .registers 6

    const-wide v0, 0xf931ef5fd4801c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/La;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/La;->Hw:Landroid/view/View;

    if-eqz v2, :cond_20

    const v3, 0x7f08013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1b

    const/4 v3, 0x0

    goto :goto_1d

    :cond_1b
    const/16 v3, 0x8

    :goto_1d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/La;->DW:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method
