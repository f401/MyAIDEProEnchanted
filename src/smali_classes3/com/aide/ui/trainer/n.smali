.class public Lcom/aide/ui/trainer/n;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/n;

    const-wide v1, 0x7eb286a3e451453L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x39ec3a9416a977d3L  # -3.916085229190373E29

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static j6(Landroid/widget/LinearLayout;I)Landroid/view/View;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xb3ad2e92180a918L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/n;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x3f25e6ac86bc7a34L  # 1.6709190401172221E-4

    invoke-static {v2, v3, v1, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a004a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x3f25e6ac86bc7a34L  # 1.6709190401172221E-4

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method

.method private static j6(Landroid/widget/LinearLayout;II)Landroid/view/View;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x32847c891fdcabb8L
    .end annotation

    const-string v0, " "

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v1, :cond_1a

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x413032cb087ef070L  # 1061579.0331869386

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, p1, v2, v0}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x413032cb087ef070L  # 1061579.0331869386

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method private static j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x4e321d9b171d9effL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v0, :cond_15

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x34cc5fff384c366fL  # 2.314442957594454E-54

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/aide/common/Za;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-direct {v2, v3, p1, v4}, Lcom/aide/common/Za;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    return-object p0

    :catchall_4e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v1, :cond_65

    const-wide v2, 0x34cc5fff384c366fL  # 2.314442957594454E-54

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    throw v0
.end method

.method public static j6(Landroid/widget/LinearLayout;Ljava/util/List;ZZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;ZZ",
            "Lcom/aide/common/ab<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    sget-boolean v7, Lcom/aide/ui/trainer/n;->j6:Z

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_45

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v10

    aput-object p1, v7, v9

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v7, v8

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v12, 0x3

    aput-object v11, v7, v12

    const/4 v11, 0x4

    aput-object v3, v7, v11

    const/4 v11, 0x5

    aput-object v4, v7, v11

    const/4 v11, 0x6

    aput-object v5, v7, v11

    const/4 v11, 0x7

    aput-object v6, v7, v11

    const/16 v11, 0x8

    aput-object p8, v7, v11

    const-wide v11, 0x6a67eba8b17d0fL

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_56
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_70

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v13}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v14

    if-eqz v14, :cond_6c

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_6c
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_70
    const v12, 0x7f0d0639

    invoke-static {v0, v12}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;I)Landroid/view/View;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_7b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ae

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v14}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v15

    invoke-virtual {v14}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v16

    aget-object v8, v16, v10

    invoke-virtual {v14}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v16

    aget-object v10, v16, v9

    invoke-static {v0, v15, v8, v10}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    new-instance v10, Lcom/aide/ui/trainer/h;

    invoke-direct {v10, v3, v14}, Lcom/aide/ui/trainer/h;-><init>(Lcom/aide/common/ab;Lcom/aide/ui/trainer/g$c;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_ab

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x2

    if-lt v13, v8, :cond_ac

    goto :goto_ae

    :cond_ab
    const/4 v8, 0x2

    :cond_ac
    const/4 v10, 0x0

    goto :goto_7b

    :cond_ae
    :goto_ae
    const v10, 0x7f0700b3

    if-eqz v1, :cond_c9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_c9

    const v1, 0x7f0d063a

    invoke-static {v0, v10, v1}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;II)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/trainer/i;

    invoke-direct {v2, v4}, Lcom/aide/ui/trainer/i;-><init>(Ljava/lang/Runnable;)V

    :goto_c5
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10e

    :cond_c9
    if-eqz v5, :cond_10e

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10e

    if-eqz v2, :cond_e0

    const v1, 0x7f0d063b

    invoke-static {v0, v10, v1}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;II)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/trainer/j;

    invoke-direct {v2, v5}, Lcom/aide/ui/trainer/j;-><init>(Ljava/lang/Runnable;)V

    goto :goto_c5

    :cond_e0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v4

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-static {v0, v4, v5, v8}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/aide/ui/trainer/k;

    invoke-direct {v5, v3, v2}, Lcom/aide/ui/trainer/k;-><init>(Lcom/aide/common/ab;Lcom/aide/ui/trainer/g$c;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e4

    :cond_10e
    :goto_10e
    if-eqz p8, :cond_117

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    :cond_117
    invoke-static {}, Lcom/aide/ui/U;->cb()Z

    move-result v1

    if-nez v1, :cond_135

    const v1, 0x7f0d0635

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;I)Landroid/view/View;

    const v1, 0x7f070076

    const v2, 0x7f0d0636

    invoke-static {v0, v1, v2}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;II)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/trainer/m;

    invoke-direct {v1, v6}, Lcom/aide/ui/trainer/m;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_135
    return-void
.end method
