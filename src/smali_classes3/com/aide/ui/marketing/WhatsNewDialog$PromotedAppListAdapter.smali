.class Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/marketing/WhatsNewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PromotedAppListAdapter"
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
        field = -0x1712e8299f6126acL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/marketing/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0x2af50a28b2079a7bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;

    const-wide v1, -0xdd92151d14e33cbL  # -7.624822931076412E241

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x12c412f0114b0c0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x294d1a43f8feec8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->FH:Ljava/util/List;

    iput-object p1, p0, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->Hw:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->FH:Ljava/util/List;

    sget-object v3, Lcom/aide/ui/marketing/a;->j6:[Lcom/aide/ui/marketing/a$a;

    array-length v4, v3
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_3d

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_3c

    aget-object v6, v3, v5

    :try_start_28
    iget-object v7, v6, Lcom/aide/ui/marketing/a$a;->Hw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v7, p0, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->FH:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_3d

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_3c
    return-void

    :catchall_3d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->DW:Z

    if-eqz v4, :cond_45

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v3

    :goto_47
    goto :goto_46
.end method


# virtual methods
.method public getCount()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xddbb1f262c83bb4L
    .end annotation

    const-wide v0, 0x2d3fb8efbdc9df8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb5d1c98b8d5df3dL
    .end annotation

    const-wide v0, -0x2d45ab3b0769d77L  # -8.828223004929372E294

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public getItemId(I)J
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xe435d9b14231dc4L
    .end annotation

    const-wide v0, -0x3f3d8b6f756d850L  # -3.429553628184975E289

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    int-to-long v0, p1

    return-wide v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->DW:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x260fc98665bf4bc3L
    .end annotation

    move-object/from16 v8, p0

    move/from16 v7, p1

    const-string v0, "<br/>"

    :try_start_6
    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->j6:Z

    if-eqz v1, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1c2f69b994f3e793L  # -6.410113025230378E172

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/4 v1, 0x0

    if-nez p2, :cond_30

    iget-object v2, v8, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->Hw:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_131

    const v3, 0x7f0a0013

    move-object/from16 v9, p3

    :try_start_2b
    invoke-virtual {v2, v3, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_34

    :cond_30
    move-object/from16 v9, p3

    move-object/from16 v2, p2

    :goto_34
    iget-object v3, v8, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->FH:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/marketing/a$a;

    const v4, 0x7f0801a4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_12f

    if-nez v7, :cond_4a

    const-string v5, "What\'s new"

    goto :goto_4c

    :cond_4a
    const-string v5, "New app"

    :goto_4c
    :try_start_4c
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-gt v7, v6, :cond_56

    const/4 v10, 0x0

    goto :goto_58

    :cond_56
    const/16 v10, 0x8

    :goto_58
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0801a5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget v10, v3, Lcom/aide/ui/marketing/a$a;->FH:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f0801a8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v10, v3, Lcom/aide/ui/marketing/a$a;->v5:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_7b

    const/4 v10, 0x0

    goto :goto_7d

    :cond_7b
    const/16 v10, 0x8

    :goto_7d
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0801a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v10, v3, Lcom/aide/ui/marketing/a$a;->Zo:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_92

    const/4 v10, 0x0

    goto :goto_94

    :cond_92
    const/16 v10, 0x8

    :goto_94
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0801a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v10, v8, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->Hw:Landroid/content/Context;

    invoke-virtual {v3, v10}, Lcom/aide/ui/marketing/a$a;->j6(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->Hw:Landroid/content/Context;

    invoke-static {v11}, Lcom/aide/ui/marketing/WhatsNewDialog;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_bc
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_11f

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-lez v13, :cond_f7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "</b>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_f7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ge v11, v12, :cond_11c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_11c
    add-int/lit8 v11, v11, 0x1

    goto :goto_bc

    :cond_11f
    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v7, :cond_129

    goto :goto_12b

    :cond_129
    const/16 v1, 0x8

    :goto_12b
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_12e
    .catchall {:try_start_4c .. :try_end_12e} :catchall_12f

    return-object v2

    :catchall_12f
    move-exception v0

    goto :goto_134

    :catchall_131
    move-exception v0

    move-object/from16 v9, p3

    :goto_134
    sget-boolean v1, Lcom/aide/ui/marketing/WhatsNewDialog$PromotedAppListAdapter;->DW:Z

    if-eqz v1, :cond_14c

    const-wide v2, -0x1c2f69b994f3e793L  # -6.410113025230378E172

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14c
    goto :goto_14e

    :goto_14d
    throw v0

    :goto_14e
    goto :goto_14d
.end method
