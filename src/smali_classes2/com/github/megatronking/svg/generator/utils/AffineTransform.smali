.class public Lcom/github/megatronking/svg/generator/utils/AffineTransform;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final APPLY_IDENTITY:I = 0x0

.field private static final APPLY_SCALE:I = 0x2

.field private static final APPLY_SHEAR:I = 0x4

.field private static final APPLY_TRANSLATE:I = 0x1

.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field private static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private m00:F

.field private m01:F

.field private m02:F

.field private m10:F

.field private m11:F

.field private m12:F

.field private transient state:I

.field private transient type:I


# direct methods
.method public constructor <init>(FFFFFF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    iput p2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    iput p3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    iput p4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    iput p5, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    iput p6, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    invoke-virtual {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->updateState()V

    return-void
.end method

.method private calculateType()V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->updateState()V

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_0
    const/4 v0, 0x1

    :pswitch_1
    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v1

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v6, v1

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v8, v1

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v10, v1

    mul-double v2, v4, v6

    mul-double v12, v8, v10

    add-double/2addr v2, v12

    const/4 v1, 0x0

    int-to-double v12, v1

    cmpg-double v1, v2, v12

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const-wide/16 v12, 0x0

    cmpg-double v1, v10, v12

    if-gez v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    if-nez v2, :cond_5

    if-nez v1, :cond_6

    :cond_1
    cmpg-double v1, v4, v10

    if-nez v1, :cond_2

    neg-double v2, v8

    cmpg-double v1, v6, v2

    if-eqz v1, :cond_8

    :cond_2
    or-int/lit8 v0, v0, 0x14

    :goto_3
    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    if-nez v1, :cond_1

    :cond_6
    neg-double v2, v10

    cmpg-double v1, v4, v2

    if-nez v1, :cond_7

    cmpg-double v1, v6, v8

    if-eqz v1, :cond_a

    :cond_7
    or-int/lit8 v0, v0, 0x54

    goto :goto_3

    :cond_8
    mul-double v2, v4, v10

    mul-double v4, v6, v8

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x12

    goto :goto_3

    :cond_9
    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_a
    mul-double v2, v4, v10

    mul-double v4, v6, v8

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-eqz v1, :cond_b

    or-int/lit8 v0, v0, 0x52

    goto :goto_3

    :cond_b
    or-int/lit8 v0, v0, 0x50

    goto :goto_3

    :pswitch_2
    const/4 v0, 0x1

    :goto_4
    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v4, v1

    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_d

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v6, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_e

    const/4 v2, 0x0

    :goto_6
    if-nez v1, :cond_f

    if-eqz v2, :cond_10

    :cond_c
    neg-double v2, v6

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_11

    or-int/lit8 v0, v0, 0xc

    goto :goto_3

    :cond_d
    const/4 v1, 0x1

    goto :goto_5

    :cond_e
    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    if-eqz v2, :cond_c

    :cond_10
    cmpg-double v1, v4, v6

    if-nez v1, :cond_13

    or-int/lit8 v0, v0, 0x4a

    goto :goto_3

    :cond_11
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_12

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0xa

    goto :goto_3

    :cond_12
    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_13
    or-int/lit8 v0, v0, 0x4c

    goto :goto_3

    :pswitch_3
    const/4 v0, 0x1

    :goto_7
    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v1

    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_15

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v6, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_16

    const/4 v2, 0x0

    :goto_9
    if-nez v1, :cond_17

    if-nez v2, :cond_18

    :cond_14
    if-eqz v1, :cond_1b

    cmpg-double v1, v4, v6

    if-nez v1, :cond_1a

    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_3

    :cond_15
    const/4 v1, 0x1

    goto :goto_8

    :cond_16
    const/4 v2, 0x1

    goto :goto_9

    :cond_17
    if-nez v2, :cond_14

    :cond_18
    neg-double v2, v6

    cmpg-double v1, v4, v2

    if-nez v1, :cond_1f

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_19

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v1, v4, v2

    if-nez v1, :cond_1e

    :cond_19
    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_3

    :cond_1a
    or-int/lit8 v0, v0, 0x4

    goto/16 :goto_3

    :cond_1b
    cmpg-double v1, v4, v6

    if-eqz v1, :cond_1c

    or-int/lit8 v0, v0, 0xc

    goto/16 :goto_3

    :cond_1c
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_1d

    or-int/lit8 v0, v0, 0xa

    goto/16 :goto_3

    :cond_1d
    or-int/lit8 v0, v0, 0x8

    goto/16 :goto_3

    :cond_1e
    or-int/lit8 v0, v0, 0x42

    goto/16 :goto_3

    :cond_1f
    or-int/lit8 v0, v0, 0x44

    goto/16 :goto_3

    :pswitch_4
    const/4 v0, 0x1

    goto/16 :goto_3

    :pswitch_5
    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_6
    const/4 v0, 0x0

    goto/16 :goto_4

    :pswitch_7
    const/4 v0, 0x0

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stateError()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "missing case in transform state switch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public deltaTransform([FI[FII)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[FII)V"
        }
    .end annotation

    if-ne p3, p1, :cond_0

    if-le p4, p2, :cond_0

    mul-int/lit8 v0, p5, 0x2

    add-int/2addr v0, p2

    if-ge p4, v0, :cond_0

    mul-int/lit8 v0, p5, 0x2

    invoke-static {p1, p2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, p4

    :cond_0
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_0
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v4, p2, 0x1

    aget v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    aget v4, p1, v4

    add-int/lit8 v6, p4, 0x1

    mul-float v7, v5, v0

    mul-float v8, v4, v1

    add-float/2addr v7, v8

    aput v7, p3, p4

    add-int/lit8 p4, v6, 0x1

    mul-float/2addr v4, v3

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    aput v4, p3, v6

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, p2

    add-int/lit8 v4, p4, 0x1

    add-int/lit8 p2, v2, 0x1

    aget v2, p1, v2

    mul-float/2addr v2, v0

    aput v2, p3, p4

    add-int/lit8 p4, v4, 0x1

    mul-float v2, v3, v1

    aput v2, p3, v4

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, p2, 0x1

    aget v4, p1, p2

    mul-float/2addr v4, v0

    aput v4, p3, p4

    add-int/lit8 p4, v2, 0x1

    add-int/lit8 p2, v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v1

    aput v3, p3, v2

    goto :goto_3

    :pswitch_3
    if-ne p1, p3, :cond_3

    if-eq p2, p4, :cond_1

    :cond_3
    mul-int/lit8 v0, p5, 0x2

    invoke-static {p1, p2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType()I
    .registers 3

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->calculateType()V

    :cond_0
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    return v0
.end method

.method public transform(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Lcom/github/megatronking/svg/generator/utils/Point;
    .registers 7

    if-nez p2, :cond_0

    new-instance p2, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {p2}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/github/megatronking/svg/generator/utils/Point;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/megatronking/svg/generator/utils/Point;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_0
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    add-float/2addr v0, v1

    invoke-virtual {p2, v2, v0}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    :goto_0
    return-object p2

    :pswitch_1
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-virtual {p2, v2, v0}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    mul-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_0

    :pswitch_5
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    mul-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_0

    :pswitch_6
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([FI[FII)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[FII)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    mul-int/lit8 v4, p5, 0x2

    add-int v4, v4, p2

    move/from16 v0, p4

    if-ge v0, v4, :cond_0

    mul-int/lit8 v4, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p2, p4

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    packed-switch v4, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v14, v14

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v16, p2, 0x1

    aget v17, p1, p2

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-int/lit8 p2, v16, 0x1

    aget v16, p1, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-int/lit8 v20, p4, 0x1

    mul-double v22, v4, v18

    mul-double v24, v6, v16

    add-double v22, v22, v24

    add-double v22, v22, v8

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, p3, p4

    add-int/lit8 p4, v20, 0x1

    mul-double v16, v16, v12

    mul-double v18, v18, v10

    add-double v16, v16, v18

    add-double v16, v16, v14

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, p3, v20

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v10, v10

    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v12, p2, 0x1

    aget v13, p1, p2

    float-to-double v14, v13

    add-int/lit8 p2, v12, 0x1

    aget v12, p1, v12

    float-to-double v12, v12

    add-int/lit8 v16, p4, 0x1

    mul-double v18, v4, v14

    mul-double v20, v6, v12

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, p3, p4

    add-int/lit8 p4, v16, 0x1

    mul-double/2addr v12, v10

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, p3, v16

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v10, v10

    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v12, p2, 0x1

    aget v13, p1, p2

    float-to-double v14, v13

    add-int/lit8 v13, p4, 0x1

    add-int/lit8 p2, v12, 0x1

    aget v12, p1, v12

    float-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v16, v16, v4

    add-double v16, v16, v6

    move-wide/from16 v0, v16

    double-to-float v12, v0

    aput v12, p3, p4

    add-int/lit8 p4, v13, 0x1

    mul-double/2addr v14, v8

    add-double/2addr v14, v10

    double-to-float v12, v14

    aput v12, p3, v13

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v6, v6

    :goto_4
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v8, p2, 0x1

    aget v9, p1, p2

    float-to-double v10, v9

    add-int/lit8 v9, p4, 0x1

    add-int/lit8 p2, v8, 0x1

    aget v8, p1, v8

    float-to-double v12, v8

    mul-double/2addr v12, v4

    double-to-float v8, v12

    aput v8, p3, p4

    add-int/lit8 p4, v9, 0x1

    mul-double/2addr v10, v6

    double-to-float v8, v10

    aput v8, p3, v9

    goto :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v10, v10

    :goto_5
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v12, p4, 0x1

    add-int/lit8 v13, p2, 0x1

    aget v14, p1, p2

    float-to-double v14, v14

    mul-double/2addr v14, v4

    add-double/2addr v14, v6

    double-to-float v14, v14

    aput v14, p3, p4

    add-int/lit8 p4, v12, 0x1

    add-int/lit8 p2, v13, 0x1

    aget v13, p1, v13

    float-to-double v14, v13

    mul-double/2addr v14, v8

    add-double/2addr v14, v10

    double-to-float v13, v14

    aput v13, p3, v12

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v6, v6

    :goto_6
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v8, p4, 0x1

    add-int/lit8 v9, p2, 0x1

    aget v10, p1, p2

    float-to-double v10, v10

    mul-double/2addr v10, v4

    double-to-float v10, v10

    aput v10, p3, p4

    add-int/lit8 p4, v8, 0x1

    add-int/lit8 p2, v9, 0x1

    aget v9, p1, v9

    float-to-double v10, v9

    mul-double/2addr v10, v6

    double-to-float v9, v10

    aput v9, p3, v8

    goto :goto_6

    :pswitch_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v6, v6

    :goto_7
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v8, p4, 0x1

    add-int/lit8 v9, p2, 0x1

    aget v10, p1, p2

    float-to-double v10, v10

    add-double/2addr v10, v4

    double-to-float v10, v10

    aput v10, p3, p4

    add-int/lit8 p4, v8, 0x1

    add-int/lit8 p2, v9, 0x1

    aget v9, p1, v9

    float-to-double v10, v9

    add-double/2addr v10, v6

    double-to-float v9, v10

    aput v9, p3, v8

    goto :goto_7

    :pswitch_7
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_3

    move/from16 v0, p2

    move/from16 v1, p4

    if-eq v0, v1, :cond_1

    :cond_3
    mul-int/lit8 v4, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateState()V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-nez v0, :cond_1

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-nez v0, :cond_1

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_0

    iput v5, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v5, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    :goto_0
    return-void

    :cond_0
    iput v6, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v6, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_4

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_0
.end method
