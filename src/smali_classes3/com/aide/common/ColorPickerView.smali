.class public Lcom/aide/common/ColorPickerView;
.super Landroid/view/View;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/common/ColorPickerView$a;
    }
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
.field private EQ:[I
    .annotation runtime Labcd/ru;
        field = -0x2c71c71cbb4f6fb8L
    .end annotation
.end field

.field private FH:F
    .annotation runtime Labcd/ru;
        field = -0x13498175993c0cd4L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x2f863dad447832e8L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x28b898962d72dcecL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x271b99f2c871dde5L
    .end annotation
.end field

.field private gn:Lcom/aide/common/ColorPickerView$a;
    .annotation runtime Labcd/ru;
        field = 0x8fa9120e70d5abL
    .end annotation
.end field

.field private final tp:[I
    .annotation runtime Labcd/ru;
        field = 0x5a9713c51af5bfcL
    .end annotation
.end field

.field private u7:Landroid/graphics/Paint;
    .annotation runtime Labcd/ru;
        field = 0x1182fafb92143ff7L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x2f86aee752fec43dL
    .end annotation
.end field

.field private we:F
    .annotation runtime Labcd/ru;
        field = 0x1336df7d4f0e136fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/ColorPickerView;

    const-wide v1, 0x53b3e0bfb2093819L  # 1.6585543041985114E95

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x1700a2ad4dbdad81L  # 6.954526895087027E-198

    :try_start_6
    sget-boolean v3, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iput v3, p0, Lcom/aide/common/ColorPickerView;->v5:I

    const/16 v3, 0x102

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/high16 v3, 0x10000

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->j6()V
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v3

    sget-boolean v4, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x4be704d37ad0e2a8L  # -9.949316232313443E-58

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    const/16 v0, 0x102

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->j6()V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x4be704d37ad0e2a8L  # -9.949316232313443E-58

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd7d15513c1272d7L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    const/16 v0, 0x102

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->j6()V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_45

    const-wide v2, 0xd7d15513c1272d7L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method private DW(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x198d13b59dad5498L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x6d260bce51506a8L  # 8.29391244509146E-276

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    mul-int/lit16 v0, p2, 0x100

    add-int/2addr v0, p1

    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    array-length v2, v1

    if-ge v0, v2, :cond_23

    aget p1, v1, v0
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_25

    return p1

    :cond_23
    const/4 p1, 0x0

    return p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x6d260bce51506a8L  # 8.29391244509146E-276

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method private DW()V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x66186c8d471d43d0L
    .end annotation

    const-wide v0, 0x59948b65f2364f30L  # 3.395270107693934E123

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->getCurrentMainColor()I

    move-result v2

    const/16 v3, 0x100

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_17
    if-ge v6, v3, :cond_81

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v3, :cond_7e

    if-nez v6, :cond_51

    iget-object v9, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v10

    rsub-int v10, v10, 0xff

    mul-int v10, v10, v8

    div-int/lit16 v10, v10, 0xff

    rsub-int v10, v10, 0xff

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v11

    rsub-int v11, v11, 0xff

    mul-int v11, v11, v8

    div-int/lit16 v11, v11, 0xff

    rsub-int v11, v11, 0xff

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    rsub-int v12, v12, 0xff

    mul-int v12, v12, v8

    div-int/lit16 v12, v12, 0xff

    rsub-int v12, v12, 0xff

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v9, v7

    iget-object v9, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    aget v9, v9, v7

    aput v9, v4, v8

    goto :goto_79

    :cond_51
    iget-object v9, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    rsub-int v10, v6, 0xff

    aget v11, v4, v8

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    mul-int v11, v11, v10

    div-int/lit16 v11, v11, 0xff

    aget v12, v4, v8

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    mul-int v12, v12, v10

    div-int/lit16 v12, v12, 0xff

    aget v13, v4, v8

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    mul-int v10, v10, v13

    div-int/lit16 v10, v10, 0xff

    invoke-static {v11, v12, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v9, v7
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_82

    :goto_79
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_81
    return-void

    :catchall_82
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_8a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8a
    goto :goto_8c

    :goto_8b
    throw v2

    :goto_8c
    goto :goto_8b
.end method

.method private FH()V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1a8e9496060e95f4L
    .end annotation

    const-wide v0, -0x464fb5b22006b42cL  # -8.031713733709665E-31

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    const/high16 v6, 0x40c00000  # 6.0f

    const/high16 v7, 0x43800000  # 256.0f

    const/16 v8, 0xff

    cmpg-float v9, v4, v7

    if-gez v9, :cond_27

    iget-object v7, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v9, v4

    invoke-static {v8, v3, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-float/2addr v4, v6

    goto :goto_10

    :cond_27
    const/4 v4, 0x0

    :goto_28
    cmpg-float v9, v4, v7

    if-gez v9, :cond_3b

    iget-object v9, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v10, v4

    rsub-int v10, v10, 0xff

    invoke-static {v10, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    add-float/2addr v4, v6

    goto :goto_28

    :cond_3b
    const/4 v4, 0x0

    :goto_3c
    cmpg-float v9, v4, v7

    if-gez v9, :cond_4d

    iget-object v9, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v10, v4

    invoke-static {v3, v10, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    add-float/2addr v4, v6

    goto :goto_3c

    :cond_4d
    const/4 v4, 0x0

    :goto_4e
    cmpg-float v9, v4, v7

    if-gez v9, :cond_61

    iget-object v9, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v10, v4

    rsub-int v10, v10, 0xff

    invoke-static {v3, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    add-float/2addr v4, v6

    goto :goto_4e

    :cond_61
    const/4 v4, 0x0

    :goto_62
    cmpg-float v9, v4, v7

    if-gez v9, :cond_73

    iget-object v9, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v10, v4

    invoke-static {v10, v8, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    add-float/2addr v4, v6

    goto :goto_62

    :cond_73
    :goto_73
    cmpg-float v4, v2, v7

    if-gez v4, :cond_86

    iget-object v4, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v9, v2

    rsub-int v9, v9, 0xff

    invoke-static {v8, v9, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    aput v9, v4, v5
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_87

    add-int/lit8 v5, v5, 0x1

    add-float/2addr v2, v6

    goto :goto_73

    :cond_86
    return-void

    :catchall_87
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_8f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8f
    goto :goto_91

    :goto_90
    throw v2

    :goto_91
    goto :goto_90
.end method

.method private getCurrentMainColor()I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4e6db58661ec404dL
    .end annotation

    const-wide v0, 0x33e4cba5873fa2e1L  # 1.0352854404528475E-58

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/high16 v3, 0x437f0000  # 255.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x43b40000  # 360.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xff

    rsub-int v2, v2, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1e
    const/high16 v8, 0x40c00000  # 6.0f

    const/high16 v9, 0x43800000  # 256.0f

    cmpg-float v10, v6, v9

    if-gez v10, :cond_32

    if-ne v7, v2, :cond_2e

    float-to-int v2, v6

    invoke-static {v3, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    add-float/2addr v6, v8

    goto :goto_1e

    :cond_32
    const/4 v6, 0x0

    :goto_33
    cmpg-float v10, v6, v9

    if-gez v10, :cond_45

    if-ne v7, v2, :cond_41

    float-to-int v2, v6

    rsub-int v2, v2, 0xff

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_41
    add-int/lit8 v7, v7, 0x1

    add-float/2addr v6, v8

    goto :goto_33

    :cond_45
    const/4 v6, 0x0

    :goto_46
    cmpg-float v10, v6, v9

    if-gez v10, :cond_56

    if-ne v7, v2, :cond_52

    float-to-int v2, v6

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_52
    add-int/lit8 v7, v7, 0x1

    add-float/2addr v6, v8

    goto :goto_46

    :cond_56
    const/4 v6, 0x0

    :goto_57
    cmpg-float v10, v6, v9

    if-gez v10, :cond_69

    if-ne v7, v2, :cond_65

    float-to-int v2, v6

    rsub-int v2, v2, 0xff

    invoke-static {v5, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_65
    add-int/lit8 v7, v7, 0x1

    add-float/2addr v6, v8

    goto :goto_57

    :cond_69
    const/4 v6, 0x0

    :goto_6a
    cmpg-float v10, v6, v9

    if-gez v10, :cond_7a

    if-ne v7, v2, :cond_76

    float-to-int v2, v6

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_76
    add-int/lit8 v7, v7, 0x1

    add-float/2addr v6, v8

    goto :goto_6a

    :cond_7a
    :goto_7a
    cmpg-float v6, v4, v9

    if-gez v6, :cond_8c

    if-ne v7, v2, :cond_88

    float-to-int v2, v4

    rsub-int v2, v2, 0xff

    invoke-static {v3, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0
    :try_end_87
    .catchall {:try_start_5 .. :try_end_87} :catchall_8f

    return v0

    :cond_88
    add-int/lit8 v7, v7, 0x1

    add-float/2addr v4, v8

    goto :goto_7a

    :cond_8c
    const/high16 v0, -0x10000

    return v0

    :catchall_8f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_97

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_97
    goto :goto_99

    :goto_98
    throw v2

    :goto_99
    goto :goto_98
.end method

.method private getCurrentXY()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x3697fb32c218690L
    .end annotation

    const-wide v0, -0x1517e1eabf2e8c80L  # -9.6787559253583E206

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    :goto_10
    const/16 v5, 0x100

    if-ge v4, v5, :cond_38

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v5, :cond_35

    invoke-direct {p0, v4, v6}, Lcom/aide/common/ColorPickerView;->DW(II)I

    move-result v7

    iget v8, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    const/high16 v9, -0x1000000

    or-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/aide/common/ColorPickerView;->j6(II)I

    move-result v7

    if-nez v7, :cond_2b

    iput v4, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iput v6, p0, Lcom/aide/common/ColorPickerView;->v5:I

    return-void

    :cond_2b
    if-ge v7, v3, :cond_32

    iput v4, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iput v6, p0, Lcom/aide/common/ColorPickerView;->v5:I
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_39

    move v3, v7

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    goto :goto_43

    :goto_42
    throw v2

    :goto_43
    goto :goto_42
.end method

.method private j6(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x440fe3fd7dfc4f01L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x262c74177bf8425bL  # -5.168536602510822E124

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_40

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x262c74177bf8425bL  # -5.168536602510822E124

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public static j6(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    const-wide v1, 0xcf353358317184cL

    :try_start_6
    sget-boolean v3, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_49

    :cond_d
    const/16 v3, 0x10

    const/4 v4, 0x1

    const-string v5, "#"

    if-eqz p0, :cond_2c

    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_2c
    const/high16 v6, -0x1000000

    if-eqz p0, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_48

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_49

    long-to-int p0, v0

    or-int/2addr p0, v6

    return p0

    :cond_48
    return v6

    :catchall_49
    move-exception v3

    sget-boolean v4, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v4, :cond_51

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v3
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x3bd28833bc62ee0L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2a

    const-string v3, "#%06X"

    new-array v4, v6, [Ljava/lang/Object;

    const v6, 0xffffff

    and-int/2addr v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3a

    :cond_2a
    const-string v3, "#%08X"

    new-array v4, v6, [Ljava/lang/Object;

    and-int/lit8 v6, p0, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    :goto_3a
    return-object p0

    :catchall_3b
    move-exception v3

    sget-boolean v4, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v4, :cond_48

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v3
.end method

.method private j6()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xd302d295df1a940L
    .end annotation

    const-wide v0, 0x2869dab1edaac10L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->FH()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x43160000  # 150.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x43960000  # 300.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43800000  # 256.0f

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    iput v2, p0, Lcom/aide/common/ColorPickerView;->we:F

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v3, 0x41400000  # 12.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4e
    throw v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28
    .annotation runtime Labcd/su;
        method = 0x475a6adab6eaec0L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-wide v9, -0xe37df80cb0c9b20L  # -1.2568655543600352E240

    :try_start_9
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v9, v10, v1, v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget v0, v1, Lcom/aide/common/ColorPickerView;->FH:F

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x43b40000  # 360.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1c
    const/16 v13, 0x100

    const/high16 v14, 0x42200000  # 40.0f

    const/high16 v15, 0x40000000  # 2.0f

    if-ge v12, v13, :cond_51

    iget-object v2, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v3, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v3, v15

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->tp:[I

    aget v3, v3, v12

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v2, v12, 0xa

    int-to-float v2, v2

    iget v3, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v4, v3, v2

    const/4 v5, 0x0

    mul-float v6, v3, v2

    mul-float v7, v3, v14

    iget-object v13, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1c

    :cond_51
    iget-object v2, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v3, v1, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x40400000  # 3.0f

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v12, -0x1000000

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    rsub-int v0, v0, 0xff

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    iget v2, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v0, v2

    const/4 v4, 0x0

    mul-float v5, v0, v2

    mul-float v6, v2, v14

    iget-object v7, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, v1, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v16, 0x41180000  # 9.5f

    mul-float v3, v0, v16

    const/4 v2, 0x0

    mul-float v4, v0, v2

    const v17, 0x43854000  # 266.5f

    mul-float v5, v0, v17

    mul-float v6, v0, v14

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    const/high16 v14, 0x3f800000  # 1.0f

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_a5
    const/high16 v0, 0x43990000  # 306.0f

    const/high16 v2, 0x42480000  # 50.0f

    if-ge v11, v13, :cond_f5

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->EQ:[I

    aget v3, v3, v11

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v5, v1, Lcom/aide/common/ColorPickerView;->we:F

    sget-object v25, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    mul-float v20, v5, v2

    const/16 v21, 0x0

    mul-float v22, v5, v0

    filled-new-array {v3, v12}, [I

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v4, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v4, v4, v15

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-int/lit8 v3, v11, 0xa

    int-to-float v3, v3

    iget v4, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v5, v4, v3

    mul-float v6, v4, v2

    mul-float v7, v3, v4

    mul-float v0, v0, v4

    iget-object v4, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v5

    move-object/from16 v18, v4

    move v4, v6

    move v5, v7

    move v6, v0

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a5

    :cond_f5
    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v4, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v4, v4, v15

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v1, Lcom/aide/common/ColorPickerView;->Hw:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iget v4, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v3, v4

    iget v5, v1, Lcom/aide/common/ColorPickerView;->v5:I

    add-int/lit8 v5, v5, 0x32

    int-to-float v5, v5

    mul-float v5, v5, v4

    const/high16 v6, 0x40c00000  # 6.0f

    mul-float v4, v4, v6

    iget-object v6, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v4, v3, v16

    mul-float v5, v3, v2

    mul-float v6, v3, v17

    mul-float v0, v0, v3

    iget-object v7, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v2, v1, Lcom/aide/common/ColorPickerView;->Zo:I

    or-int/2addr v2, v12

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v0, v16

    const/high16 v11, 0x439e0000  # 316.0f

    mul-float v4, v0, v11

    const/high16 v2, 0x430b0000  # 139.0f

    mul-float v5, v0, v2

    const/high16 v13, 0x43b20000  # 356.0f

    mul-float v6, v0, v13

    iget-object v7, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v2, v1, Lcom/aide/common/ColorPickerView;->VH:I

    or-int/2addr v2, v12

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v1, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x430a0000  # 138.0f

    mul-float v3, v0, v2

    mul-float v4, v0, v11

    mul-float v5, v0, v17

    mul-float v6, v0, v13

    iget-object v7, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, v1, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v0, v16

    mul-float v4, v0, v11

    mul-float v5, v0, v17

    mul-float v6, v0, v13

    iget-object v7, v1, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_1b9
    .catchall {:try_start_9 .. :try_end_1b9} :catchall_1ba

    return-void

    :catchall_1ba
    move-exception v0

    sget-boolean v2, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v2, :cond_1c2

    invoke-static {v0, v9, v10, v1, v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c2
    goto :goto_1c4

    :goto_1c3
    throw v0

    :goto_1c4
    goto :goto_1c3
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x23a50aff06948e43L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x133ec2387db543afL  # 5.576615968112792E-216

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v1, 0x438a0000  # 276.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x43b70000  # 366.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, 0x133ec2387db543afL  # 5.576615968112792E-216

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const-wide v0, 0x111e4979a4c38760L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/aide/common/ColorPickerView;->we:F

    div-float/2addr v2, v4

    const/high16 v4, 0x41200000  # 10.0f

    sub-float/2addr v2, v4

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_2b

    const/4 v2, 0x0

    :cond_2b
    const/high16 v4, 0x437f0000  # 255.0f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_33

    const/high16 v2, 0x437f0000  # 255.0f

    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/aide/common/ColorPickerView;->we:F

    div-float/2addr v5, v6

    const/high16 v6, 0x42200000  # 40.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_4d

    sub-float v2, v4, v2

    const/high16 v5, 0x43b40000  # 360.0f

    mul-float v2, v2, v5

    div-float/2addr v2, v4

    iput v2, p0, Lcom/aide/common/ColorPickerView;->FH:F

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->DW()V

    goto :goto_62

    :cond_4d
    float-to-int v2, v2

    iput v2, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    float-to-int v2, v5

    add-int/lit8 v2, v2, -0x32

    iput v2, p0, Lcom/aide/common/ColorPickerView;->v5:I

    if-gez v2, :cond_5a

    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/common/ColorPickerView;->v5:I

    :cond_5a
    iget v2, p0, Lcom/aide/common/ColorPickerView;->v5:I

    const/16 v4, 0xff

    if-le v2, v4, :cond_62

    iput v4, p0, Lcom/aide/common/ColorPickerView;->v5:I

    :cond_62
    :goto_62
    iget v2, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iget v4, p0, Lcom/aide/common/ColorPickerView;->v5:I

    invoke-direct {p0, v2, v4}, Lcom/aide/common/ColorPickerView;->DW(II)I

    move-result v2

    iget v4, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v4, v5, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    iget-object v4, p0, Lcom/aide/common/ColorPickerView;->gn:Lcom/aide/common/ColorPickerView$a;

    invoke-static {v2}, Lcom/aide/common/ColorPickerView;->j6(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/aide/common/ColorPickerView$a;->j6(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_8f

    return v3

    :catchall_8f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_97

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_97
    throw v2
.end method

.method public setCurrentColor(Ljava/lang/String;)V
    .registers 7

    const-wide v0, -0x45b5d56d647cb468L  # -6.605302640404318E-28

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/ColorPickerView;->j6(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    invoke-static {v2, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x0

    aget v2, v3, v2

    iput v2, p0, Lcom/aide/common/ColorPickerView;->FH:F

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->DW()V

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->getCurrentXY()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Lcom/aide/common/ColorPickerView;->gn:Lcom/aide/common/ColorPickerView$a;

    iget v3, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    invoke-static {v3}, Lcom/aide/common/ColorPickerView;->j6(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/aide/common/ColorPickerView$a;->j6(ILjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public setInitialColor(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x3217b368d882386dL  # -2.047201985736186E67

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/ColorPickerView;->j6(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/aide/common/ColorPickerView;->VH:I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public setOnColorChangedListener(Lcom/aide/common/ColorPickerView$a;)V
    .registers 6

    const-wide v0, -0x1909a61cacd47ce0L  # -9.725158723119008E187

    :try_start_5
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/common/ColorPickerView;->gn:Lcom/aide/common/ColorPickerView$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method
