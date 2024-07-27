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
    .registers 4

    const-wide v2, 0x53b3e0bfb2093819L    # 1.6585543041985114E95

    const-class v0, Lcom/aide/common/ColorPickerView;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0x1700a2ad4dbdad81L    # 6.954526895087027E-198

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1700a2ad4dbdad81L    # 6.954526895087027E-198

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    const/16 v0, 0x102

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, -0x4be704d37ad0e2a8L    # -9.949316232313443E-58

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4be704d37ad0e2a8L    # -9.949316232313443E-58

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    const/16 v0, 0x102

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const-wide v8, 0xd7d15513c1272d7L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xd7d15513c1272d7L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    const/16 v0, 0x102

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/ColorPickerView;->DW:Z

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

.method private DW(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x198d13b59dad5498L
    .end annotation

    const-wide v2, 0x6d260bce51506a8L    # 8.29391244509146E-276

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x6d260bce51506a8L    # 8.29391244509146E-276

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    mul-int/lit16 v0, p2, 0x100

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    aget v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private DW()V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x66186c8d471d43d0L
    .end annotation

    const-wide v12, 0x59948b65f2364f30L    # 3.395270107693934E123

    const/16 v11, 0x100

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x59948b65f2364f30L    # 3.395270107693934E123

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->getCurrentMainColor()I

    move-result v4

    const/16 v0, 0x100

    new-array v5, v0, [I

    move v3, v1

    move v2, v1

    :goto_0
    if-ge v3, v11, :cond_4

    move v0, v1

    :goto_1
    if-ge v0, v11, :cond_3

    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    rsub-int v7, v7, 0xff

    mul-int/2addr v7, v0

    div-int/lit16 v7, v7, 0xff

    rsub-int v7, v7, 0xff

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    rsub-int v8, v8, 0xff

    mul-int/2addr v8, v0

    div-int/lit16 v8, v8, 0xff

    rsub-int v8, v8, 0xff

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    rsub-int v9, v9, 0xff

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xff

    rsub-int v9, v9, 0xff

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v6, v2

    iget-object v6, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    aget v6, v6, v2

    aput v6, v5, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    rsub-int v7, v3, 0xff

    aget v8, v5, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    mul-int/2addr v8, v7

    div-int/lit16 v8, v8, 0xff

    aget v9, v5, v0

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    mul-int/2addr v9, v7

    div-int/lit16 v9, v9, 0xff

    aget v10, v5, v0

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    mul-int/2addr v7, v10

    div-int/lit16 v7, v7, 0xff

    invoke-static {v8, v9, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v6, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v12, v13, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private FH()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1a8e9496060e95f4L
    .end annotation

    const/high16 v8, 0x43800000    # 256.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x464fb5b22006b42cL    # -8.031713733709665E-31

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    move v2, v1

    :goto_0
    cmpg-float v3, v2, v8

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/16 v4, 0xff

    const/4 v5, 0x0

    float-to-int v6, v2

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v7

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    cmpg-float v3, v2, v8

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v4, v2

    rsub-int v4, v4, 0xff

    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v7

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    cmpg-float v3, v2, v8

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/4 v4, 0x0

    float-to-int v5, v2

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v7

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    cmpg-float v3, v2, v8

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/4 v4, 0x0

    const/16 v5, 0xff

    float-to-int v6, v2

    rsub-int v6, v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v7

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_4
    cmpg-float v3, v2, v8

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    float-to-int v4, v2

    const/16 v5, 0xff

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v7

    goto :goto_4

    :cond_5
    :goto_5
    cmpg-float v2, v1, v8

    if-gez v2, :cond_7

    iget-object v2, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    const/16 v3, 0xff

    float-to-int v4, v1

    rsub-int v4, v4, 0xff

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-float/2addr v1, v7

    goto :goto_5

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_6

    const-wide v2, -0x464fb5b22006b42cL    # -8.031713733709665E-31

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6
    throw v0

    :cond_7
    return-void
.end method

.method private getCurrentMainColor()I
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x4e6db58661ec404dL
    .end annotation

    const/high16 v6, 0x43800000    # 256.0f

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x33e4cba5873fa2e1L    # 1.0352854404528475E-58

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    rsub-int v3, v2, 0xff

    move v2, v1

    :goto_0
    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    if-ne v0, v3, :cond_1

    const/16 v0, 0xff

    const/4 v1, 0x0

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v5

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_2
    cmpg-float v4, v2, v6

    if-gez v4, :cond_4

    if-ne v0, v3, :cond_3

    float-to-int v0, v2

    rsub-int v0, v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v5

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_3
    cmpg-float v4, v2, v6

    if-gez v4, :cond_6

    if-ne v0, v3, :cond_5

    const/4 v0, 0x0

    float-to-int v1, v2

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v5

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_4
    cmpg-float v4, v2, v6

    if-gez v4, :cond_8

    if-ne v0, v3, :cond_7

    const/4 v0, 0x0

    const/16 v1, 0xff

    float-to-int v2, v2

    rsub-int v2, v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v5

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_5
    cmpg-float v4, v2, v6

    if-gez v4, :cond_b

    if-ne v0, v3, :cond_9

    float-to-int v0, v2

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    add-float/2addr v2, v5

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v0, 0x1

    add-float/2addr v1, v5

    :cond_b
    cmpg-float v2, v1, v6

    if-gez v2, :cond_c

    if-ne v0, v3, :cond_a

    const/16 v0, 0xff

    float-to-int v1, v1

    rsub-int v1, v1, 0xff

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :cond_c
    const/high16 v0, -0x10000

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_d

    const-wide v2, 0x33e4cba5873fa2e1L    # 1.0352854404528475E-58

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_d
    throw v0
.end method

.method private getCurrentXY()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x3697fb32c218690L
    .end annotation

    const-wide v8, -0x1517e1eabf2e8c80L    # -9.6787559253583E206

    const/16 v7, 0x100

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1517e1eabf2e8c80L    # -9.6787559253583E206

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v1, 0x3e8

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_3

    invoke-direct {p0, v4, v2}, Lcom/aide/common/ColorPickerView;->DW(II)I

    move-result v0

    iget v5, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    const/high16 v6, -0x1000000

    or-int/2addr v5, v6

    invoke-direct {p0, v0, v5}, Lcom/aide/common/ColorPickerView;->j6(II)I

    move-result v0

    if-nez v0, :cond_2

    iput v4, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iput v2, p0, Lcom/aide/common/ColorPickerView;->v5:I

    :cond_1
    return-void

    :cond_2
    if-ge v0, v1, :cond_5

    iput v4, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iput v2, p0, Lcom/aide/common/ColorPickerView;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private j6(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x440fe3fd7dfc4f01L
    .end annotation

    const-wide v2, -0x262c74177bf8425bL    # -5.168536602510822E124

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x262c74177bf8425bL    # -5.168536602510822E124

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/ColorPickerView;->DW:Z

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

.method public static j6(Ljava/lang/String;)I
    .registers 9

    const-wide v6, 0xcf353358317184cL

    const/4 v4, 0x0

    const/high16 v0, -0x1000000

    :try_start_0
    sget-boolean v1, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xcf353358317184cL

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    or-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 9

    const-wide v6, -0x3bd28833bc62ee0L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3bd28833bc62ee0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    const-string v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "#%08X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    and-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, v4, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xd302d295df1a940L
    .end annotation

    const-wide v4, 0x2869dab1edaac10L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2869dab1edaac10L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->FH()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x43160000    # 150.0f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x475a6adab6eaec0L
    .end annotation

    const/4 v6, 0x0

    const v12, 0x43854000    # 266.5f

    const/high16 v11, 0x41180000    # 9.5f

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe37df80cb0c9b20L    # -1.2568655543600352E240

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    float-to-int v8, v0

    move v7, v6

    :goto_0
    const/16 v0, 0x100

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aide/common/ColorPickerView;->tp:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v7, 0xa

    int-to-float v0, v0

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    rsub-int v0, v8, 0xff

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v1, v0, v11

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v2, v0, v9

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v0, v12

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v8, v6

    :goto_1
    const/16 v0, 0x100

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->EQ:[I

    aget v6, v0, v8

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/aide/common/ColorPickerView;->we:F

    iget v4, p0, Lcom/aide/common/ColorPickerView;->we:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v5, 0x43990000    # 306.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v9, 0x0

    aput v6, v5, v9

    const/4 v6, 0x1

    const/high16 v9, -0x1000000

    aput v9, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-int/lit8 v0, v8, 0xa

    int-to-float v0, v0

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x43990000    # 306.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/aide/common/ColorPickerView;->v5:I

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    iget v2, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v1, v0, v11

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v0, v12

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x43990000    # 306.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v1, v0, v11

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x439e0000    # 316.0f

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v3, 0x430b0000    # 139.0f

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x43b20000    # 356.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->VH:I

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v1, 0x430a0000    # 138.0f

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x439e0000    # 316.0f

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v0, v12

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x43b20000    # 356.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v1, v0, v11

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v2, 0x439e0000    # 316.0f

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    mul-float v3, v0, v12

    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x43b20000    # 356.0f

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/aide/common/ColorPickerView;->u7:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_3

    const-wide v2, -0xe37df80cb0c9b20L    # -1.2568655543600352E240

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x23a50aff06948e43L
    .end annotation

    const-wide v2, 0x133ec2387db543afL    # 5.576615968112792E-216

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x133ec2387db543afL    # 5.576615968112792E-216

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v1, 0x438a0000    # 276.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/aide/common/ColorPickerView;->we:F

    const/high16 v4, 0x43b70000    # 366.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/ColorPickerView;->DW:Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x0

    const-wide v6, 0x111e4979a4c38760L

    const/16 v5, 0xff

    const/4 v4, 0x1

    const/high16 v1, 0x437f0000    # 255.0f

    :try_start_0
    sget-boolean v2, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x111e4979a4c38760L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/aide/common/ColorPickerView;->we:F

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_7

    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/aide/common/ColorPickerView;->we:F

    div-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    sub-float v0, v1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->DW()V

    :cond_3
    :goto_2
    iget v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    iget v1, p0, Lcom/aide/common/ColorPickerView;->v5:I

    invoke-direct {p0, v0, v1}, Lcom/aide/common/ColorPickerView;->DW(II)I

    move-result v0

    iget v1, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->gn:Lcom/aide/common/ColorPickerView$a;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    iget v2, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    invoke-static {v2}, Lcom/aide/common/ColorPickerView;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/aide/common/ColorPickerView$a;->j6(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    float-to-int v0, v0

    :try_start_1
    iput v0, p0, Lcom/aide/common/ColorPickerView;->Hw:I

    float-to-int v0, v2

    add-int/lit8 v0, v0, -0x32

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    iget v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    :cond_6
    iget v0, p0, Lcom/aide/common/ColorPickerView;->v5:I

    if-le v0, v5, :cond_3

    const/16 v0, 0xff

    iput v0, p0, Lcom/aide/common/ColorPickerView;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public setCurrentColor(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x45b5d56d647cb468L    # -6.605302640404318E-28

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x45b5d56d647cb468L    # -6.605302640404318E-28

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/ColorPickerView;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/aide/common/ColorPickerView;->FH:F

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->DW()V

    invoke-direct {p0}, Lcom/aide/common/ColorPickerView;->getCurrentXY()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/aide/common/ColorPickerView;->gn:Lcom/aide/common/ColorPickerView$a;

    iget v1, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    iget v2, p0, Lcom/aide/common/ColorPickerView;->Zo:I

    invoke-static {v2}, Lcom/aide/common/ColorPickerView;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/aide/common/ColorPickerView$a;->j6(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setInitialColor(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x3217b368d882386dL    # -2.047201985736186E67

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3217b368d882386dL    # -2.047201985736186E67

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/ColorPickerView;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/common/ColorPickerView;->VH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setOnColorChangedListener(Lcom/aide/common/ColorPickerView$a;)V
    .registers 6

    const-wide v2, -0x1909a61cacd47ce0L    # -9.725158723119008E187

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ColorPickerView;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1909a61cacd47ce0L    # -9.725158723119008E187

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/common/ColorPickerView;->gn:Lcom/aide/common/ColorPickerView$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ColorPickerView;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
