.class Labcd/uh$a;
.super Landroid/widget/BaseExpandableListAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/uh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x125d73dc65737fc4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Labcd/Sk$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private Hw:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0x563e23b75021820L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1c1f442a832a22f0L

    const-class v0, Labcd/uh$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x47ce8bdf3200fbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Labcd/Sk$a;",
            ">;>;)V"
        }
    .end annotation

    const-wide v2, -0x338db623cc72173L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x338db623cc72173L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Labcd/uh$a;->Hw:Landroid/content/Context;

    iput-object p2, p0, Labcd/uh$a;->FH:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/uh$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x177c2f41f971cc0L
    .end annotation

    const-wide v2, -0x18ef733cde79faf0L    # -2.880390895400799E188

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18ef733cde79faf0L    # -2.880390895400799E188

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/uh$a;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Cl;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->EQ()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xb07ac1a98d681e8L
    .end annotation

    const-wide v2, 0x51d27d10e5f5e20L

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x51d27d10e5f5e20L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/uh$a;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public getChildId(II)J
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9bd66d65dbe2dbbL
    .end annotation

    const-wide v2, -0x138b9402ca820bbdL    # -2.749993314452264E214

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x138b9402ca820bbdL    # -2.749993314452264E214

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/uh$a;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x5852b7fa27d6c668L
    .end annotation

    :try_start_0
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x6c5d360b061edf0L

    move-object v4, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p4, :cond_1

    iget-object v2, p0, Labcd/uh$a;->Hw:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const v3, 0x7f0a000b

    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    :goto_0
    const v2, 0x7f080139

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080137

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080138

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Labcd/uh$a;->j6(II)Z

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Labcd/uh$a;->getChild(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sk$a;

    const v6, 0x7f0d05d0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget v6, v5, Labcd/Sk$a;->Zo:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v5, v5, Labcd/Sk$b;->tp:Z

    if-eqz v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_2
    return-object v7

    :cond_1
    move-object/from16 v7, p4

    goto :goto_0

    :cond_2
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Labcd/uh$a;->getChild(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sk$a;

    iget-object v8, p0, Labcd/uh$a;->Hw:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d05ce

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v5, Labcd/Sk$a;->DW:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v8, v8, Labcd/Sk$b;->FH:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v8, v5, Labcd/Sk$a;->Zo:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v5, v5, Labcd/Sk$b;->tp:Z

    if-eqz v5, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    sget-boolean v2, Labcd/uh$a;->DW:Z

    if-eqz v2, :cond_4

    const-wide v4, -0x6c5d360b061edf0L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v3 .. v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v3

    :catch_1
    move-exception v3

    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_3
.end method

.method public getChildrenCount(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xde3c2cf7218479bL
    .end annotation

    const-wide v2, -0x37c9cfb57d268595L    # -7.5504018999695E39

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37c9cfb57d268595L    # -7.5504018999695E39

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1}, Labcd/uh$a;->DW(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x174738f3c5d34c08L
    .end annotation

    const-wide v2, 0x38638a1a5ffc630L

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38638a1a5ffc630L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getGroupCount()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2a96f477c21bf20L
    .end annotation

    const-wide v2, -0x348428bc0599a680L    # -4.266602600751595E55

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x348428bc0599a680L    # -4.266602600751595E55

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getGroupId(I)J
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x191b9b572989d5c3L
    .end annotation

    const-wide v2, 0xb7e97c807d1a915L

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb7e97c807d1a915L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    int-to-long v0, p1

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x2efb94432fc97580L
    .end annotation

    const-wide v8, -0xe94b0c8bb7fe40L

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0xe94b0c8bb7fe40L

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Labcd/uh$a;->Hw:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/uh$a;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sk$a;

    const v1, 0x7f0801aa

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v0, v0, Labcd/Sk$b;->v5:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    move-object v2, p3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/uh$a;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public hasStableIds()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xc6a558e024ef34dL
    .end annotation

    const-wide v2, 0x2222a6ce0bca9c3dL

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2222a6ce0bca9c3dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isChildSelectable(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xdff2a5ba15e2468L
    .end annotation

    const-wide v2, -0x546f1fd48a32d40L    # -1.455343968018717E283

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x546f1fd48a32d40L    # -1.455343968018717E283

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/uh$a;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x48a32fd0c00dcf3L
    .end annotation

    const-wide v2, -0x2d6d2e6759dfef15L    # -5.98975644026862E89

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d6d2e6759dfef15L    # -5.98975644026862E89

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sk$a;

    iget-object v0, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v0, v0, Labcd/Sk$b;->we:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x417a8667ca3e376bL
    .end annotation

    const-wide v2, 0x12386621babcb6c3L    # 6.749853811585501E-221

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x12386621babcb6c3L    # 6.749853811585501E-221

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/uh$a;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/uh$a;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
