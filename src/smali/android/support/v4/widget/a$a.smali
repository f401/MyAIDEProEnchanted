.class Landroid/support/v4/widget/a$a;
.super Landroid/graphics/drawable/shapes/OvalShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private DW:Landroid/graphics/Paint;

.field final FH:Landroid/support/v4/widget/a;

.field private j6:Landroid/graphics/RadialGradient;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/a;I)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/widget/a$a;->FH:Landroid/support/v4/widget/a;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a$a;->DW:Landroid/graphics/Paint;

    iput p2, p1, Landroid/support/v4/widget/a;->DW:I

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/a$a;->j6(I)V

    return-void
.end method

.method private j6(I)V
    .registers 9

    div-int/lit8 v0, p1, 0x2

    int-to-float v1, v0

    iget-object v0, p0, Landroid/support/v4/widget/a$a;->FH:Landroid/support/v4/widget/a;

    iget v0, v0, Landroid/support/v4/widget/a;->DW:I

    int-to-float v3, v0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v2, 0x2

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/v4/widget/a$a;->j6:Landroid/graphics/RadialGradient;

    iget-object v0, p0, Landroid/support/v4/widget/a$a;->DW:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/widget/a$a;->j6:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/widget/a$a;->FH:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/a$a;->FH:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/v4/widget/a$a;->DW:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Landroid/support/v4/widget/a$a;->FH:Landroid/support/v4/widget/a;

    iget v3, v3, Landroid/support/v4/widget/a;->DW:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int v0, p1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/a$a;->j6(I)V

    return-void
.end method
