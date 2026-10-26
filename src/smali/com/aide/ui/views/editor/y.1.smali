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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    .line 32
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/y;->VH:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public DW()Landroid/graphics/Rect;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public DW(FFFF)V
    .locals 6

    .line 50
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    add-float v3, p1, p3

    add-float v4, p2, p4

    iget-object v5, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public FH()Lcom/aide/ui/views/editor/j;
    .locals 2

    .line 57
    new-instance v0, Lcom/aide/ui/views/editor/j;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    return-object v0
.end method

.method public FH(FFFF)V
    .locals 6

    .line 61
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    add-float v3, p1, p3

    add-float v4, p2, p4

    iget-object v5, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public j6([CII[F)I
    .locals 3

    .line 70
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v0

    return v0
.end method

.method public j6()Lcom/aide/ui/views/editor/sa;
    .locals 2

    .line 77
    new-instance v0, Lcom/aide/ui/views/editor/sa;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/sa;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public j6(FFF)V
    .locals 3

    .line 81
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->Zo:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public j6(FFFF)V
    .locals 6

    .line 91
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public j6(FFFFF)V
    .locals 6

    .line 100
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public j6(Landroid/graphics/Bitmap;FFF)V
    .locals 9

    const/4 v8, 0x0

    .line 110
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v8

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

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    new-instance v3, Landroid/graphics/Rect;

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v3, v8, v8, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    mul-float/2addr v0, p4

    add-float/2addr v0, p2

    int-to-float v1, v1

    mul-float/2addr v1, p4

    add-float/2addr v1, p3

    invoke-direct {v4, p2, p3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->VH:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/j;)V
    .locals 2

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

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/sa;)V
    .locals 3

    .line 125
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/sa;->j6()Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/x;)V
    .locals 2

    .line 132
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    iget v1, p1, Lcom/aide/ui/views/editor/x;->FH:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 136
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/aide/ui/views/editor/x;->Hw:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    iget-boolean v1, p1, Lcom/aide/ui/views/editor/x;->v5:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method public j6(Lcom/aide/ui/views/editor/z;FF)V
    .locals 3

    .line 143
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 144
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

    :cond_0
    return-void
.end method

.method public j6(Ljava/lang/String;FF)V
    .locals 3

    .line 150
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public j6(Z)V
    .locals 3

    .line 157
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->v5:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public j6([CIIFF)V
    .locals 7

    .line 164
    sget-boolean v0, Lcom/aide/ui/views/editor/y;->DEBUG:Z

    if-eqz v0, :cond_0

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
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/y;->FH:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/aide/ui/views/editor/y;->Hw:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method
