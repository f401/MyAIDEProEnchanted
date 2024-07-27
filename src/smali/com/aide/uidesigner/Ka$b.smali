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
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
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
    .registers 4

    const-wide v2, -0xfe3dc1350ce96efL    # -1.0922092965528532E232

    const-class v0, Lcom/aide/uidesigner/Ka$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/aide/uidesigner/Ka$a;",
            ">;>;)V"
        }
    .end annotation

    const-wide v2, 0x72e3d79f743fe11L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x72e3d79f743fe11L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    iput-object p2, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/uidesigner/Ka$b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb80c09241fa7817L
    .end annotation

    const-wide v2, 0x66f187580056c0bL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x66f187580056c0bL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

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

    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->DW:Z

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
        method = 0x42b3ebf0d6d7180L
    .end annotation

    const-wide v2, -0xa38d30d4392b98L    # -3.12143712337544E305

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xa38d30d4392b98L    # -3.12143712337544E305

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->DW:Z

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
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lcom/aide/uidesigner/Ka$b;->getChildView_SOURCE(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/uidesign/TextTranslation;->translationWidget(Landroid/view/View;)V

    return-object v0
.end method

.method public getChildView_SOURCE(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x43b6c8d217d61cf3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x12424269d7e59697L

    move-object v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/aide/ui/Oa;->designer_widgetlist_entry:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/aide/uidesigner/Ka$b;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/Ka$a;

    iget-object v1, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Ka$a;->j6(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    sget v1, Lcom/aide/ui/Na;->widgetlistName:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Ka$a;->J8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget v1, Lcom/aide/ui/Na;->widgetlistPreview:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v5, :cond_1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v0}, Lcom/aide/uidesigner/Ka$a;->we()Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/aide/ui/Na;->widgetlistHelp:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v1, :cond_7

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_2

    new-instance v0, Lcom/aide/uidesigner/La;

    invoke-direct {v0, p0, v1}, Lcom/aide/uidesigner/La;-><init>(Lcom/aide/uidesigner/Ka$b;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v4

    :cond_3
    move-object v4, p4

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    :cond_5
    const/16 v3, 0x8

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v0, :cond_6

    const-wide v2, 0x12424269d7e59697L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method public getChildrenCount(I)I
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1d190af3ae199040L
    .end annotation

    const-wide v2, -0x2203cb450224067cL    # -5.5032482351248446E144

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2203cb450224067cL    # -5.5032482351248446E144

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

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
        method = -0x2ff57dd09dbd8f1L
    .end annotation

    const-wide v2, -0xda2683f3cfb7e73L    # -7.893004715955699E242

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xda2683f3cfb7e73L    # -7.893004715955699E242

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

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
        method = 0x16af779177ed78e9L
    .end annotation

    const-wide v2, -0x70c4dc09f8d554dL    # -4.262066901516734E274

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x70c4dc09f8d554dL    # -4.262066901516734E274

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getGroupId(I)J
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xec7846762ec2940L
    .end annotation

    const-wide v2, 0x5314fd49943b2b8L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5314fd49943b2b8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    int-to-long v0, p1

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aide/uidesigner/Ka$b;->getGroupView_SOURCE(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/uidesign/TextTranslation;->translationWidget(Landroid/view/View;)V

    return-object v0
.end method

.method public getGroupView_SOURCE(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x209047406bedba9fL
    .end annotation

    const-wide v8, -0xe36d76ccf86d765L    # -1.3106032342105825E240

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0xe36d76ccf86d765L    # -1.3106032342105825E240

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/Ka$b;->Hw:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/aide/ui/Oa;->designer_widgetlist_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aide/uidesigner/Ka$b;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/Ka$a;

    sget v1, Lcom/aide/ui/Na;->widgetlistGroupName:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Ka$a;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    move-object v2, p3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->DW:Z

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
        method = -0x241d219da52e92c8L
    .end annotation

    const-wide v2, 0x29004b869ac9ef8cL    # 3.387868752548173E-111

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29004b869ac9ef8cL    # 3.387868752548173E-111

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isChildSelectable(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7c25382a19168d1dL
    .end annotation

    const-wide v2, -0x78c1c2cb21639ed7L    # -8.73398904719448E-274

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x78c1c2cb21639ed7L    # -8.73398904719448E-274

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka$b;->DW:Z

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
