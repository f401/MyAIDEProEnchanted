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
    .registers 4

    const-wide v2, 0xbf5b2905d903ef1L

    const-class v0, Lcom/aide/ui/browsers/FindResultTextView;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0x12b5206e9a28680L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12b5206e9a28680L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FindResultTextView;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x3839750e3a18259dL    # -5.9928913228327E37

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3839750e3a18259dL    # -5.9928913228327E37

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FindResultTextView;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, -0xf833c34773e3bc0L    # -7.145265657281267E233

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xf833c34773e3bc0L    # -7.145265657281267E233

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/FindResultTextView;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(IILjava/lang/String;II)I
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xe69af824aa929e4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x4e84cdaa2fa7ddfdL    # -2.4628388009365353E-70

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sub-int v0, p4, p1

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    sub-int v0, p5, p2

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    move v0, p5

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, -0x4e84cdaa2fa7ddfdL    # -2.4628388009365353E-70

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x28bb67831a32da28L
    .end annotation

    const-wide v2, 0xad2e03c3f338dd5L

    invoke-static {p0}, Lcom/s1243808733/aide/AdvancedSetting;->setFindResultTextView(Landroid/widget/TextView;)V

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xad2e03c3f338dd5L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public setContent(Lcom/aide/engine/FindResult;)V
    .registers 17

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/browsers/FindResultTextView;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x5959c3a1b6a7700L

    move-object/from16 v0, p1

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/aide/engine/FindResult;->Hw:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/aide/engine/FindResult;->VH:Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/aide/engine/FindResult;->Hw:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/aide/engine/FindResult;->v5:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v9

    move-object/from16 v0, p1

    iget v6, v0, Lcom/aide/engine/FindResult;->Hw:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/aide/engine/FindResult;->Zo:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v2

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v7, 0x21

    invoke-interface {v8, v6, v9, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lcom/aide/ui/aa;->lg()Z

    move-result v12

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/aide/engine/FindResult;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/aide/engine/FindResult;->gn:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/aide/engine/FindResult$Highlighting;

    move-object v9, v0

    iget-object v2, v9, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    if-eqz v2, :cond_2

    iget-object v2, v9, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6, v12}, Lcom/aide/engine/m;->j6(Landroid/content/Context;Z)I

    move-result v13

    iget-object v2, v9, Lcom/aide/engine/FindResult$Highlighting;->VH:Lcom/aide/engine/m;

    invoke-virtual {v2}, Lcom/aide/engine/m;->Hw()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v2, 0x0

    move v11, v2

    :goto_2
    iget v6, v9, Lcom/aide/engine/FindResult$Highlighting;->FH:I

    iget v7, v9, Lcom/aide/engine/FindResult$Highlighting;->Hw:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v14

    iget v6, v9, Lcom/aide/engine/FindResult$Highlighting;->v5:I

    iget v7, v9, Lcom/aide/engine/FindResult$Highlighting;->Zo:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/browsers/FindResultTextView;->j6(IILjava/lang/String;II)I

    move-result v2

    if-ltz v14, :cond_2

    if-ltz v2, :cond_2

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-interface {v8, v6, v14, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v6, 0x1

    if-eq v11, v6, :cond_5

    const/4 v6, 0x2

    if-eq v11, v6, :cond_5

    const/4 v6, 0x3

    if-eq v11, v6, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    move v11, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    move v11, v2

    goto :goto_2

    :cond_5
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-interface {v8, v6, v14, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/FindResultTextView;->DW:Z

    if-eqz v3, :cond_6

    const-wide v4, 0x5959c3a1b6a7700L

    move-object/from16 v0, p1

    invoke-static {v2, v4, v5, p0, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v2

    :cond_7
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_8

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    return-void
.end method
