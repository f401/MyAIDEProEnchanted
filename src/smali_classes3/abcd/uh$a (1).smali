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
            "Ljava/util/List<",
            "Ljava/util/List<",
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
    .registers 3

    const-class v0, Labcd/uh$a;

    const-wide v1, 0x1c1f442a832a22f0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Labcd/Sk$a;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x338db623cc72173L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Labcd/uh$a;->Hw:Landroid/content/Context;

    iput-object p2, p0, Labcd/uh$a;->FH:Ljava/util/List;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x338db623cc72173L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private DW(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x177c2f41f971cc0L
    .end annotation

    const-wide v0, -0x18ef733cde79faf0L  # -2.880390895400799E188

    :try_start_5
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/uh$a;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Cl;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->EQ()I

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-lez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/uh$a;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xb07ac1a98d681e8L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x51d27d10e5f5e20L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-object p1

    :catchall_23
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x51d27d10e5f5e20L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public getChildId(II)J
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9bd66d65dbe2dbbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x138b9402ca820bbdL  # -2.749993314452264E214

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_19

    :cond_16
    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_19
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x138b9402ca820bbdL  # -2.749993314452264E214

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .annotation runtime Labcd/su;
        method = 0x5852b7fa27d6c668L
    .end annotation

    move-object/from16 v10, p0

    move/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    :try_start_8
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_29

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v12}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x6c5d360b061edf0L

    move-object/from16 v3, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    const/4 v0, 0x0

    if-nez p4, :cond_3c

    iget-object v1, v10, Labcd/uh$a;->Hw:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_cd

    const v2, 0x7f0a000b

    move-object/from16 v13, p5

    :try_start_37
    invoke-virtual {v1, v2, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_40

    :cond_3c
    move-object/from16 v13, p5

    move-object/from16 v1, p4

    :goto_40
    const v2, 0x7f080139

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080137

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080138

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p2}, Labcd/uh$a;->j6(II)Z

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v5, :cond_8e

    invoke-virtual {v10, v9, v0}, Labcd/uh$a;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sk$a;

    const v5, 0x7f0d05d0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v5, v0, Labcd/Sk$a;->Zo:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v0, v0, Labcd/Sk$b;->tp:Z

    if-eqz v0, :cond_82

    goto :goto_84

    :cond_82
    const/high16 v6, 0x3f000000  # 0.5f

    :goto_84
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_8a
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_ca

    :cond_8e
    invoke-virtual/range {p0 .. p2}, Labcd/uh$a;->getChild(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sk$a;

    iget-object v8, v10, Labcd/uh$a;->Hw:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    iget-object v15, v5, Labcd/Sk$a;->DW:Ljava/lang/String;

    aput-object v15, v14, v0

    const v15, 0x7f0d05ce

    invoke-virtual {v8, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v0, v0, Labcd/Sk$b;->FH:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v5, Labcd/Sk$a;->Zo:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v5, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-boolean v0, v0, Labcd/Sk$b;->tp:Z

    if-eqz v0, :cond_c1

    goto :goto_c3

    :cond_c1
    const/high16 v6, 0x3f000000  # 0.5f

    :goto_c3
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V
    :try_end_c9
    .catchall {:try_start_37 .. :try_end_c9} :catchall_cb

    goto :goto_8a

    :goto_ca
    return-object v1

    :catchall_cb
    move-exception v0

    goto :goto_d0

    :catchall_cd
    move-exception v0

    move-object/from16 v13, p5

    :goto_d0
    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_f2

    const-wide v2, -0x6c5d360b061edf0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v12}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f2
    goto :goto_f4

    :goto_f3
    throw v0

    :goto_f4
    goto :goto_f3
.end method

.method public getChildrenCount(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xde3c2cf7218479bL
    .end annotation

    const-wide v0, -0x37c9cfb57d268595L  # -7.5504018999695E39

    :try_start_5
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1}, Labcd/uh$a;->DW(I)Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1e

    add-int/2addr v2, p1

    return v2

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/uh$a;->DW:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x174738f3c5d34c08L
    .end annotation

    const-wide v0, 0x38638a1a5ffc630L

    :try_start_5
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/uh$a;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public getGroupCount()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2a96f477c21bf20L
    .end annotation

    const-wide v0, -0x348428bc0599a680L  # -4.266602600751595E55

    :try_start_5
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/uh$a;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getGroupId(I)J
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x191b9b572989d5c3L
    .end annotation

    const-wide v0, 0xb7e97c807d1a915L

    :try_start_5
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    int-to-long v0, p1

    return-wide v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uh$a;->DW:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2efb94432fc97580L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0xe94b0c8bb7fe40L

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v0, 0x0

    if-nez p3, :cond_2a

    iget-object v1, p0, Labcd/uh$a;->Hw:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    move-object v1, p3

    :goto_2b
    invoke-virtual {p0, p1, v0}, Labcd/uh$a;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sk$a;

    const v2, 0x7f0801aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v0, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v0, v0, Labcd/Sk$b;->v5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    return-object v1

    :catchall_42
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0xe94b0c8bb7fe40L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method

.method public hasStableIds()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xc6a558e024ef34dL
    .end annotation

    const-wide v0, 0x2222a6ce0bca9c3dL

    :try_start_5
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uh$a;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public isChildSelectable(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xdff2a5ba15e2468L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x546f1fd48a32d40L  # -1.455343968018717E283

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x1

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x546f1fd48a32d40L  # -1.455343968018717E283

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public j6(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x48a32fd0c00dcf3L
    .end annotation

    const-wide v0, -0x2d6d2e6759dfef15L  # -5.98975644026862E89

    :try_start_5
    sget-boolean v2, Labcd/uh$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sk$a;

    iget-object v2, v2, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object p1, v2, Labcd/Sk$b;->we:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object p1

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/uh$a;->DW:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public j6(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x417a8667ca3e376bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uh$a;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x12386621babcb6c3L  # 6.749853811585501E-221

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0, p1}, Labcd/uh$a;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Labcd/uh$a;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2e

    if-ne p2, p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    return p1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/uh$a;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x12386621babcb6c3L  # 6.749853811585501E-221

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method
