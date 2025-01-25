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

    packed-switch v1, :pswitch_data_12e

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_c  #0x7
    const/4 v0, 0x1

    :pswitch_d  #0x6
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

    if-eqz v1, :cond_29

    const/16 v0, 0x20

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    :goto_28
    return-void

    :cond_29
    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_4a

    const/4 v1, 0x0

    move v2, v1

    :goto_31
    const-wide/16 v12, 0x0

    cmpg-double v1, v10, v12

    if-gez v1, :cond_4d

    const/4 v1, 0x0

    :goto_38
    if-nez v2, :cond_4f

    if-nez v1, :cond_51

    :cond_3c
    cmpg-double v1, v4, v10

    if-nez v1, :cond_45

    neg-double v2, v8

    cmpg-double v1, v6, v2

    if-eqz v1, :cond_5d

    :cond_45
    or-int/lit8 v0, v0, 0x14

    :goto_47
    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_28

    :cond_4a
    const/4 v1, 0x1

    move v2, v1

    goto :goto_31

    :cond_4d
    const/4 v1, 0x1

    goto :goto_38

    :cond_4f
    if-nez v1, :cond_3c

    :cond_51
    neg-double v2, v10

    cmpg-double v1, v4, v2

    if-nez v1, :cond_5a

    cmpg-double v1, v6, v8

    if-eqz v1, :cond_6e

    :cond_5a
    or-int/lit8 v0, v0, 0x54

    goto :goto_47

    :cond_5d
    mul-double v2, v4, v10

    mul-double v4, v6, v8

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpg-double v1, v2, v4

    if-eqz v1, :cond_6b

    or-int/lit8 v0, v0, 0x12

    goto :goto_47

    :cond_6b
    or-int/lit8 v0, v0, 0x10

    goto :goto_47

    :cond_6e
    mul-double v2, v4, v10

    mul-double v4, v6, v8

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpg-double v1, v2, v4

    if-eqz v1, :cond_7c

    or-int/lit8 v0, v0, 0x52

    goto :goto_47

    :cond_7c
    or-int/lit8 v0, v0, 0x50

    goto :goto_47

    :pswitch_7f  #0x5
    const/4 v0, 0x1

    :goto_80
    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v4, v1

    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_a0

    const/4 v1, 0x0

    :goto_8a
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v6, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_a2

    const/4 v2, 0x0

    :goto_94
    if-nez v1, :cond_a4

    if-eqz v2, :cond_a6

    :cond_98
    neg-double v2, v6

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_ad

    or-int/lit8 v0, v0, 0xc

    goto :goto_47

    :cond_a0
    const/4 v1, 0x1

    goto :goto_8a

    :cond_a2
    const/4 v2, 0x1

    goto :goto_94

    :cond_a4
    if-eqz v2, :cond_98

    :cond_a6
    cmpg-double v1, v4, v6

    if-nez v1, :cond_bf

    or-int/lit8 v0, v0, 0x4a

    goto :goto_47

    :cond_ad
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_bc

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_bc

    or-int/lit8 v0, v0, 0xa

    goto :goto_47

    :cond_bc
    or-int/lit8 v0, v0, 0x8

    goto :goto_47

    :cond_bf
    or-int/lit8 v0, v0, 0x4c

    goto :goto_47

    :pswitch_c2  #0x3
    const/4 v0, 0x1

    :goto_c3
    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v1

    const-wide/16 v2, 0x0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_e5

    const/4 v1, 0x0

    :goto_cd
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v6, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_e7

    const/4 v2, 0x0

    :goto_d7
    if-nez v1, :cond_e9

    if-nez v2, :cond_eb

    :cond_db
    if-eqz v1, :cond_104

    cmpg-double v1, v4, v6

    if-nez v1, :cond_100

    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_47

    :cond_e5
    const/4 v1, 0x1

    goto :goto_cd

    :cond_e7
    const/4 v2, 0x1

    goto :goto_d7

    :cond_e9
    if-nez v2, :cond_db

    :cond_eb
    neg-double v2, v6

    cmpg-double v1, v4, v2

    if-nez v1, :cond_11e

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_fc

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpg-double v1, v4, v2

    if-nez v1, :cond_11a

    :cond_fc
    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_47

    :cond_100
    or-int/lit8 v0, v0, 0x4

    goto/16 :goto_47

    :cond_104
    cmpg-double v1, v4, v6

    if-eqz v1, :cond_10c

    or-int/lit8 v0, v0, 0xc

    goto/16 :goto_47

    :cond_10c
    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpg-double v1, v4, v2

    if-eqz v1, :cond_116

    or-int/lit8 v0, v0, 0xa

    goto/16 :goto_47

    :cond_116
    or-int/lit8 v0, v0, 0x8

    goto/16 :goto_47

    :cond_11a
    or-int/lit8 v0, v0, 0x42

    goto/16 :goto_47

    :cond_11e
    or-int/lit8 v0, v0, 0x44

    goto/16 :goto_47

    :pswitch_122  #0x1
    const/4 v0, 0x1

    goto/16 :goto_47

    :pswitch_125  #0x0
    const/4 v0, 0x0

    goto/16 :goto_47

    :pswitch_128  #0x4
    const/4 v0, 0x0

    goto/16 :goto_80

    :pswitch_12b  #0x2
    const/4 v0, 0x0

    goto :goto_c3

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_125  #00000000
        :pswitch_122  #00000001
        :pswitch_12b  #00000002
        :pswitch_c2  #00000003
        :pswitch_128  #00000004
        :pswitch_7f  #00000005
        :pswitch_d  #00000006
        :pswitch_c  #00000007
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

    if-ne p3, p1, :cond_f

    if-le p4, p2, :cond_f

    mul-int/lit8 v0, p5, 0x2

    add-int/2addr v0, p2

    if-ge p4, v0, :cond_f

    mul-int/lit8 v0, p5, 0x2

    invoke-static {p1, p2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, p4

    :cond_f
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    packed-switch v0, :pswitch_data_7e

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_17  #0x6, 0x7
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    iget v3, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    :goto_1f
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
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

    goto :goto_1f

    :pswitch_3d  #0x4, 0x5
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    :goto_41
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_23

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

    goto :goto_41

    :pswitch_59  #0x2, 0x3
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    iget v1, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    :goto_5d
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_23

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

    goto :goto_5d

    :pswitch_74  #0x0, 0x1
    if-ne p1, p3, :cond_78

    if-eq p2, p4, :cond_23

    :cond_78
    mul-int/lit8 v0, p5, 0x2

    invoke-static {p1, p2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_74  #00000000
        :pswitch_74  #00000001
        :pswitch_59  #00000002
        :pswitch_59  #00000003
        :pswitch_3d  #00000004
        :pswitch_3d  #00000005
        :pswitch_17  #00000006
        :pswitch_17  #00000007
    .end packed-switch
.end method

.method public getType()I
    .registers 3

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->calculateType()V

    :cond_8
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    return v0
.end method

.method public transform(Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;)Lcom/github/megatronking/svg/generator/utils/Point;
    .registers 7

    if-nez p2, :cond_7

    new-instance p2, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {p2}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>()V

    :cond_7
    invoke-virtual {p1}, Lcom/github/megatronking/svg/generator/utils/Point;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/megatronking/svg/generator/utils/Point;->getY()F

    move-result v1

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    packed-switch v2, :pswitch_data_84

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_17  #0x7
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

    :goto_2e
    return-object p2

    :pswitch_2f  #0x6
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

    goto :goto_2e

    :pswitch_41  #0x5
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_2e

    :pswitch_51  #0x4
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    mul-float/2addr v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_2e

    :pswitch_5b  #0x3
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_2e

    :pswitch_6b  #0x2
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    mul-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_2e

    :pswitch_75  #0x1
    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_2e

    :pswitch_7f  #0x0
    invoke-virtual {p2, v0, v1}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    goto :goto_2e

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_7f  #00000000
        :pswitch_75  #00000001
        :pswitch_6b  #00000002
        :pswitch_5b  #00000003
        :pswitch_51  #00000004
        :pswitch_41  #00000005
        :pswitch_2f  #00000006
        :pswitch_17  #00000007
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

    if-ne v0, v1, :cond_23

    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_23

    mul-int/lit8 v4, p5, 0x2

    add-int v4, v4, p2

    move/from16 v0, p4

    if-ge v0, v4, :cond_23

    mul-int/lit8 v4, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p2, p4

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    packed-switch v4, :pswitch_data_1b2

    invoke-direct/range {p0 .. p0}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->stateError()V

    :pswitch_2d  #0x7
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

    :goto_4b
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_50

    :cond_4f
    :goto_4f
    return-void

    :cond_50
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

    goto :goto_4b

    :pswitch_85  #0x6
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

    :goto_99
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_4f

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

    goto :goto_99

    :pswitch_bf  #0x5
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

    :goto_d3
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_4f

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

    goto :goto_d3

    :pswitch_f6  #0x4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v6, v6

    :goto_100
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_4f

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

    goto :goto_100

    :pswitch_11b  #0x3
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

    :goto_12f
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_4f

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

    goto :goto_12f

    :pswitch_14c  #0x2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v6, v6

    :goto_156
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_4f

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

    goto :goto_156

    :pswitch_171  #0x1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v6, v6

    :goto_17b
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_4f

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

    goto :goto_17b

    :pswitch_196  #0x0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_1a2

    move/from16 v0, p2

    move/from16 v1, p4

    if-eq v0, v1, :cond_4f

    :cond_1a2
    mul-int/lit8 v4, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4f

    nop

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_196  #00000000
        :pswitch_171  #00000001
        :pswitch_14c  #00000002
        :pswitch_11b  #00000003
        :pswitch_f6  #00000004
        :pswitch_bf  #00000005
        :pswitch_85  #00000006
        :pswitch_2d  #00000007
    .end packed-switch
.end method

.method updateState()V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m01:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_55

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m10:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_55

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_36

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_36

    iput v5, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v5, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    :goto_35
    return-void

    :cond_36
    iput v6, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v6, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_35

    :cond_3b
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_4f

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_35

    :cond_4f
    const/4 v0, 0x3

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_35

    :cond_55
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m00:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_7d

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m11:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_7d

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_77

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_77

    const/4 v0, 0x4

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_35

    :cond_77
    const/4 v0, 0x5

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_35

    :cond_7d
    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m02:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_91

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->m12:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_91

    const/4 v0, 0x6

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_35

    :cond_91
    const/4 v0, 0x7

    iput v0, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->state:I

    iput v4, p0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->type:I

    goto :goto_35
.end method
