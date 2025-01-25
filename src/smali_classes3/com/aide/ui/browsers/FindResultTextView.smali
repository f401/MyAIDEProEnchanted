.class public Lcom/aide/ui/browsers/FindResultTextView;
.super Landroid/widget/TextView;


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

    const-class v0, Lcom/aide/ui/browsers/FindResultTextView;

    const-wide v1, 0xbf5b2905d903ef1L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x12b5206e9a28680L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FindResultTextView;->j6()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x3839750e3a18259dL  # -5.9928913228327E37

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FindResultTextView;->j6()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x3839750e3a18259dL  # -5.9928913228327E37

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xf833c34773e3bc0L  # -7.145265657281267E233

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FindResultTextView;->j6()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0xf833c34773e3bc0L  # -7.145265657281267E233

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method private j6(IILjava/lang/String;II)I
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xe69af824aa929e4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4e84cdaa2fa7ddfdL  # -2.4628388009365353E-70

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    sub-int v0, p4, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne v0, v1, :cond_2b

    sub-int v2, p5, p2

    goto :goto_2c

    :cond_2b
    move v2, p5

    :goto_2c
    if-ge v0, v1, :cond_30

    const/4 p1, 0x0

    return p1

    :cond_30
    if-le v0, v1, :cond_37

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    return p1

    :catchall_41
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v1, :cond_65

    const-wide v2, -0x4e84cdaa2fa7ddfdL  # -2.4628388009365353E-70

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    throw v0
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x28bb67831a32da28L
    .end annotation

    invoke-static {p0}, Lcom/s1243808733/aide/AdvancedSetting;->setFindResultTextView(Landroid/widget/TextView;)V

    const-wide v0, 0xad2e03c3f338dd5L

    :try_start_8
    sget-boolean v2, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v2, :cond_f

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    :cond_f
    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method


# virtual methods
.method public setContent(Lcom/aide/engine/FindResult;)V
    .registers 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-wide v9, 0x5959c3a1b6a7700L

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v9, v10, v7, v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget v0, v8, Lcom/aide/engine/FindResult;->Hw:I

    iget-object v1, v8, Lcom/aide/engine/FindResult;->VH:Ljava/lang/String;

    const/4 v12, 0x0

    :goto_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v12, v2, :cond_28

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/text/Spannable;

    iget v5, v8, Lcom/aide/engine/FindResult;->Hw:I

    iget v6, v8, Lcom/aide/engine/FindResult;->v5:I

    move-object/from16 v1, p0

    move v2, v0

    move v3, v12

    move-object v4, v13

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v15

    iget v5, v8, Lcom/aide/engine/FindResult;->Hw:I

    iget v6, v8, Lcom/aide/engine/FindResult;->Zo:I

    move-object/from16 v1, p0

    move v2, v0

    move v3, v12

    move-object v4, v13

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v1

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v6, 0x21

    invoke-interface {v14, v2, v15, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v15

    const/4 v5, 0x0

    :goto_65
    iget-object v1, v8, Lcom/aide/engine/FindResult;->gn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_ee

    iget-object v1, v8, Lcom/aide/engine/FindResult;->gn:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/aide/engine/FindResult$Highlighting;

    iget-object v1, v4, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    if-eqz v1, :cond_d9

    iget-object v1, v4, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v15}, Lcom/aide/engine/m;->j6(Landroid/content/Context;Z)I

    move-result v3

    iget-object v1, v4, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    invoke-virtual {v1}, Lcom/aide/engine/m;->Hw()I

    move-result v1

    const/4 v2, 0x2

    const/4 v11, 0x1

    if-eq v1, v11, :cond_94

    if-eq v1, v2, :cond_92

    const/4 v1, 0x0

    goto :goto_95

    :cond_92
    const/4 v1, 0x2

    goto :goto_95

    :cond_94
    const/4 v1, 0x1

    :goto_95
    iget v6, v4, Lcom/aide/engine/FindResult$Highlighting;->FH:I

    iget v9, v4, Lcom/aide/engine/FindResult$Highlighting;->Hw:I

    move v10, v1

    move-object/from16 v1, p0

    move v2, v0

    move v11, v3

    move v3, v12

    move/from16 v16, v15

    move-object v15, v4

    move-object v4, v13

    move/from16 v17, v5

    move v5, v6

    const/16 v8, 0x21

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v9

    iget v5, v15, Lcom/aide/engine/FindResult$Highlighting;->v5:I

    iget v6, v15, Lcom/aide/engine/FindResult$Highlighting;->Zo:I

    move-object/from16 v1, p0

    move v2, v0

    move v3, v12

    move-object v4, v13

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v1

    if-ltz v9, :cond_df

    if-ltz v1, :cond_df

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v14, v2, v9, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v2, 0x1

    if-eq v10, v2, :cond_d0

    const/4 v2, 0x2

    if-eq v10, v2, :cond_d0

    const/4 v2, 0x3

    if-eq v10, v2, :cond_d0

    goto :goto_df

    :cond_d0
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v14, v2, v9, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_df

    :cond_d9
    move/from16 v17, v5

    move/from16 v16, v15

    const/16 v8, 0x21

    :cond_df
    :goto_df
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v8, p1

    move/from16 v15, v16

    const/16 v6, 0x21

    const-wide v9, 0x5959c3a1b6a7700L

    goto/16 :goto_65

    :cond_ee
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f9

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_f9
    .catchall {:try_start_9 .. :try_end_f9} :catchall_fa

    :cond_f9
    return-void

    :catchall_fa
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v1, :cond_109

    move-object/from16 v1, p1

    const-wide v2, 0x5959c3a1b6a7700L

    invoke-static {v0, v2, v3, v7, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_109
    goto :goto_10b

    :goto_10a
    throw v0

    :goto_10b
    goto :goto_10a
.end method
