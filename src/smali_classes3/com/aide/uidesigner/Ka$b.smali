.class Lcom/aide/uidesigner/Ka$b;
.super Landroid/widget/BaseExpandableListAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/Ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
        field = -0x26aaed3f569906f9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/Ka$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private Hw:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0x14936c4a6063134fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/Ka$b;

    const-wide v1, -0xfe3dc1350ce96efL  # -1.0922092965528532E232

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x528b23cc682fc00L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/Ka$a;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x72e3d79f743fe11L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    iput-object p2, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x72e3d79f743fe11L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method static synthetic j6(Lcom/aide/uidesigner/Ka$b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb80c09241fa7817L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x66f187580056c0bL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

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

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x66f187580056c0bL

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
        method = 0x42b3ebf0d6d7180L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xa38d30d4392b98L  # -3.12143712337544E305

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_19

    :cond_16
    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0xa38d30d4392b98L  # -3.12143712337544E305

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
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/aide/uidesigner/Ka$b;->getChildView_SOURCE(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/uidesign/TextTranslation;->translationWidget(Landroid/view/View;)V

    return-object p1
.end method

.method public getChildView_SOURCE(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x43b6c8d217d61cf3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x12424269d7e59697L

    move-object v3, p0

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    const/4 v0, 0x0

    if-nez p4, :cond_2e

    iget-object v1, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/aide/ui/Oa;->designer_widgetlist_entry:I

    invoke-virtual {v1, v2, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2f

    :cond_2e
    move-object v1, p4

    :goto_2f
    invoke-virtual {p0, p1, p2}, Lcom/aide/uidesigner/Ka$b;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/uidesigner/Ka$a;

    iget-object v3, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Ka$a;->j6(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/aide/ui/Na;->widgetlistName:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Ka$a;->J8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x8

    if-nez v3, :cond_50

    const/4 v6, 0x0

    goto :goto_52

    :cond_50
    const/16 v6, 0x8

    :goto_52
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    sget v4, Lcom/aide/ui/Na;->widgetlistPreview:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_61

    const/4 v6, 0x0

    goto :goto_63

    :cond_61
    const/16 v6, 0x8

    :goto_63
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v3, :cond_74

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_74
    invoke-virtual {v2}, Lcom/aide/uidesigner/Ka$a;->we()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/aide/ui/Na;->widgetlistHelp:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v2, :cond_82

    const/16 v0, 0x8

    :cond_82
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_8f

    new-instance v0, Lcom/aide/uidesigner/La;

    invoke-direct {v0, p0, v2}, Lcom/aide/uidesigner/La;-><init>(Lcom/aide/uidesigner/Ka$b;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_8f
    .catchall {:try_start_0 .. :try_end_8f} :catchall_90

    :cond_8f
    return-object v1

    :catchall_90
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_b0

    const-wide v2, 0x12424269d7e59697L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    throw v0
.end method

.method public getChildrenCount(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1d190af3ae199040L
    .end annotation

    const-wide v0, -0x2203cb450224067cL  # -5.5032482351248446E144

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2ff57dd09dbd8f1L
    .end annotation

    const-wide v0, -0xda2683f3cfb7e73L  # -7.893004715955699E242

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Ka$b;->DW:Z

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
        method = 0x16af779177ed78e9L
    .end annotation

    const-wide v0, -0x70c4dc09f8d554dL  # -4.262066901516734E274

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getGroupId(I)J
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xec7846762ec2940L
    .end annotation

    const-wide v0, 0x5314fd49943b2b8L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    int-to-long v0, p1

    return-wide v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aide/uidesigner/Ka$b;->getGroupView_SOURCE(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/uidesign/TextTranslation;->translationWidget(Landroid/view/View;)V

    return-object p1
.end method

.method public getGroupView_SOURCE(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x209047406bedba9fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0xe36d76ccf86d765L  # -1.3106032342105825E240

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v0, 0x0

    if-nez p3, :cond_29

    iget-object v1, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/aide/ui/Oa;->designer_widgetlist_group:I

    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2a

    :cond_29
    move-object v1, p3

    :goto_2a
    invoke-virtual {p0, p1, v0}, Lcom/aide/uidesigner/Ka$b;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/Ka$a;

    sget v2, Lcom/aide/ui/Na;->widgetlistGroupName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Ka$a;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    return-object v1

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_5b

    const-wide v2, -0xe36d76ccf86d765L  # -1.3106032342105825E240

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
.end method

.method public hasStableIds()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x241d219da52e92c8L
    .end annotation

    const-wide v0, 0x29004b869ac9ef8cL  # 3.387868752548173E-111

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public isChildSelectable(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7c25382a19168d1dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x78c1c2cb21639ed7L  # -8.73398904719448E-274

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x1

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x78c1c2cb21639ed7L  # -8.73398904719448E-274

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
