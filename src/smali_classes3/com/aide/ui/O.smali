.class public Lcom/aide/ui/O;
.super Landroid/graphics/drawable/Drawable;


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
        field = 0xae1c7e5890935b0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/O;

    const-wide v1, 0x81711b11074b2e0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x2948d531c500190L  # 3.1425298442835E-296

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/O;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/O;->FH:Lcom/aide/ui/MainActivity;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/O;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method private j6(Landroid/graphics/Canvas;FFFFFFFFLandroid/graphics/Paint;)V
    .registers 31
    .annotation runtime Labcd/su;
        method = 0x233904eb6a91d578L
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    sget-boolean v10, Lcom/aide/ui/O;->j6:Z

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v11, 0x1

    if-eqz v10, :cond_73

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v17

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v12, v10, v11

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v2}, Ljava/lang/Float;-><init>(F)V

    aput-object v12, v10, v16

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v3}, Ljava/lang/Float;-><init>(F)V

    aput-object v12, v10, v15

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v12, v10, v14

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v5}, Ljava/lang/Float;-><init>(F)V

    aput-object v12, v10, v13

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v6}, Ljava/lang/Float;-><init>(F)V

    const/16 v19, 0x6

    aput-object v12, v10, v19

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v7}, Ljava/lang/Float;-><init>(F)V

    const/16 v18, 0x7

    aput-object v12, v10, v18

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v8}, Ljava/lang/Float;-><init>(F)V

    const/16 v13, 0x8

    aput-object v12, v10, v13

    const/16 v12, 0x9

    aput-object v9, v10, v12

    const-wide v14, -0x4097aa6a9e02c0L

    move-object/from16 v12, p0

    invoke-static {v14, v15, v12, v10}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_77

    :cond_73
    move-object/from16 v12, p0

    const/16 v13, 0x8

    :goto_77
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->save(I)I

    new-instance v10, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v13, v13, [F

    aput v5, v13, v17

    aput v5, v13, v11

    aput v6, v13, v16

    const/4 v5, 0x3

    aput v6, v13, v5

    const/4 v5, 0x4

    aput v8, v13, v5

    const/4 v5, 0x5

    aput v8, v13, v5

    const/4 v5, 0x6

    aput v7, v13, v5

    const/4 v5, 0x7

    aput v7, v13, v5

    const/4 v5, 0x0

    invoke-direct {v10, v13, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    sub-float/2addr v3, v1

    sub-float/2addr v4, v2

    invoke-virtual {v10, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v10, v0, v9}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-wide v14, 0x98cfd2e029af899L

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/O;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v14, v15, v12, v13}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v12, Lcom/aide/ui/O;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x40800000  # 4.0f

    mul-float v1, v1, v3

    new-instance v11, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/graphics/Paint;-><init>(I)V

    neg-float v3, v2

    iget-object v4, v12, Lcom/aide/ui/O;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, v12, Lcom/aide/ui/O;->FH:Lcom/aide/ui/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v4, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float v6, v0, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/aide/ui/O;->j6(Landroid/graphics/Canvas;FFFFFFFFLandroid/graphics/Paint;)V
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_6a

    return-void

    :catchall_6a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/O;->DW:Z

    if-eqz v1, :cond_72

    invoke-static {v0, v14, v15, v12, v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v0
.end method

.method public getOpacity()I
    .registers 5

    const-wide v0, -0x27be9adafa37637fL  # -1.3708033741486834E117

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/O;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, -0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/O;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public setAlpha(I)V
    .registers 6

    const-wide v0, 0x3c70df7558aec81L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/O;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/O;->DW:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6

    const-wide v0, -0xc23339679b08ffcL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/O;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/O;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method
