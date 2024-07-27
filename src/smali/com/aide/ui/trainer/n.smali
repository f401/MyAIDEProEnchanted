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
    .registers 4

    const-wide v2, 0x7eb286a3e451453L

    const-class v0, Lcom/aide/ui/trainer/n;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x39ec3a9416a977d3L    # -3.916085229190373E29

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x39ec3a9416a977d3L    # -3.916085229190373E29

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static j6(Landroid/widget/LinearLayout;I)Landroid/view/View;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xb3ad2e92180a918L
    .end annotation

    const-wide v2, 0x3f25e6ac86bc7a34L    # 1.6709190401172221E-4

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x3f25e6ac86bc7a34L    # 1.6709190401172221E-4

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004a

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080189

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(Landroid/widget/LinearLayout;II)Landroid/view/View;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x32847c891fdcabb8L
    .end annotation

    const-wide v10, 0x413032cb087ef070L    # 1061579.0331869386

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x413032cb087ef070L    # 1061579.0331869386

    const/4 v2, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p0, p1, v1, v0}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, v8

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4e321d9b171d9effL
    .end annotation

    const-wide v8, 0x34cc5fff384c366fL    # 2.314442957594454E-54

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x34cc5fff384c366fL    # 2.314442957594454E-54

    const/4 v2, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080188

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

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

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f080187

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/trainer/n;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static j6(Landroid/widget/LinearLayout;Ljava/util/List;ZZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;ZZ",
            "Lcom/aide/common/ab",
            "<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    sget-boolean v2, Lcom/aide/ui/trainer/n;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x6a67eba8b17d0fL

    const/4 v4, 0x0

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    const/4 v6, 0x5

    aput-object p5, v5, v6

    const/4 v6, 0x6

    aput-object p6, v5, v6

    const/4 v6, 0x7

    aput-object p7, v5, v6

    const/16 v6, 0x8

    aput-object p8, v5, v6

    invoke-static {v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const v2, 0x7f0d0639

    invoke-static {p0, v2}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;I)Landroid/view/View;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v7

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {p0, v7, v8, v9}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/aide/ui/trainer/h;

    invoke-direct {v8, p4, v2}, Lcom/aide/ui/trainer/h;-><init>(Lcom/aide/common/ab;Lcom/aide/ui/trainer/g$c;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_7

    add-int/lit8 v2, v3, 0x1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8

    :cond_3
    if-eqz p2, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_9

    const v2, 0x7f0700b3

    const v3, 0x7f0d063a

    invoke-static {p0, v2, v3}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;II)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/trainer/i;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lcom/aide/ui/trainer/i;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    if-eqz p8, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_5
    invoke-static {}, Lcom/aide/ui/U;->cb()Z

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f0d0635

    invoke-static {p0, v2}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;I)Landroid/view/View;

    const v2, 0x7f070076

    const v3, 0x7f0d0636

    invoke-static {p0, v2, v3}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;II)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/trainer/m;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Lcom/aide/ui/trainer/m;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void

    :cond_7
    move v2, v3

    :cond_8
    move v3, v2

    goto :goto_1

    :cond_9
    if-eqz p6, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz p3, :cond_a

    const v2, 0x7f0700b3

    const v3, 0x7f0d063b

    invoke-static {p0, v2, v3}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;II)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/trainer/j;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Lcom/aide/ui/trainer/j;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v4

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {p0, v4, v5, v6}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/aide/ui/trainer/k;

    invoke-direct {v5, p4, v2}, Lcom/aide/ui/trainer/k;-><init>(Lcom/aide/common/ab;Lcom/aide/ui/trainer/g$c;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method
