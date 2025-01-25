.class public Lcom/aide/ui/views/editor/y;
.super Ljava/lang/Object;
.source "y.java"


# static fields
.field static DEBUG:Z


# instance fields
.field private FH:Landroid/graphics/Canvas;

.field private Hw:Landroid/graphics/Paint;

.field private VH:Landroid/graphics/Paint;

.field private Zo:Landroid/graphics/Paint;

.field private v5:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    .line 32
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/aide/ui/views/editor/y;->VH:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public DW()Landroid/graphics/Rect;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public DW(FFFF)V
    .registers 14

    .line 50
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 53
    :cond_26
    iget-object v3, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    add-float v6, p1, p3

    add-float v7, p2, p4

    iget-object v8, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public FH()Lcom/aide/ui/views/editor/j;
    .registers 3

    .line 57
    new-instance v0, Lcom/aide/ui/views/editor/j;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    return-object v0
.end method

.method public FH(FFFF)V
    .registers 12

    .line 61
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 64
    :cond_26
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 65
    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    add-float v4, p1, p3

    add-float v5, p2, p4

    iget-object v6, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3b
    return-void
.end method

.method public j6([CII[F)I
    .registers 8

    .line 70
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 73
    :cond_1e
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result p1

    return p1
.end method

.method public j6()Lcom/aide/ui/views/editor/sa;
    .registers 3

    .line 77
    new-instance v0, Lcom/aide/ui/views/editor/sa;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/sa;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public j6(FFF)V
    .registers 7

    .line 81
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 84
    :cond_1f
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 86
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2e
    return-void
.end method

.method public j6(FFFF)V
    .registers 14

    .line 91
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 94
    :cond_26
    iget-object v3, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public j6(FFFFF)V
    .registers 13

    .line 100
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 101
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 103
    :cond_2d
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget-object p1, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public j6(Landroid/graphics/Bitmap;FFF)V
    .registers 14

    .line 110
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 113
    :cond_22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    new-instance v4, Landroid/graphics/Rect;

    int-to-double v5, v0

    const-wide v7, 0x3ff4cccccccccccdL  # 1.3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v5, v5

    invoke-direct {v4, v1, v1, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, v0

    mul-float v0, v0, p4

    add-float/2addr v0, p2

    int-to-float v2, v2

    mul-float v2, v2, p4

    add-float/2addr v2, p3

    invoke-direct {v1, p2, p3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/aide/ui/views/editor/y;->VH:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/j;)V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/j;->j6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/j;->j6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/j;->j6()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/sa;)V
    .registers 4

    .line 125
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 128
    :cond_d
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/sa;->j6()Landroid/graphics/RectF;

    move-result-object p1

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/x;)V
    .registers 4

    .line 132
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 135
    :cond_d
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    iget v1, p1, Lcom/aide/ui/views/editor/x;->FH:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 136
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/aide/ui/views/editor/x;->Hw:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    iget-boolean p1, p1, Lcom/aide/ui/views/editor/x;->v5:Z

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/z;FF)V
    .registers 6

    .line 143
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public j6(Ljava/lang/String;FF)V
    .registers 7

    .line 150
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 153
    :cond_1b
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public j6(Z)V
    .registers 5

    .line 157
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 160
    :cond_11
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public j6([CIIFF)V
    .registers 16

    .line 164
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 165
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 167
    :cond_29
    iget-object v3, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method
