.class public Lcom/a4455jkjh/colorpicker/a/c;
.super Landroid/view/View;


# static fields
.field private static final x:[I


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:Lcom/a4455jkjh/colorpicker/a/a;

.field private j:Landroid/graphics/Shader;

.field private k:Landroid/graphics/Shader;

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Lcom/a4455jkjh/colorpicker/a/e;

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/a4455jkjh/colorpicker/a/c;->x:[I

    return-void

    nop

    :array_a
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->c:Landroid/graphics/Paint;

    new-instance v0, Lcom/a4455jkjh/colorpicker/a/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/a4455jkjh/colorpicker/a/a;-><init>(I)V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->i:Lcom/a4455jkjh/colorpicker/a/a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->d:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->e:Landroid/graphics/Paint;

    iput v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->l:F

    iput v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->m:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->n:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->o:I

    iput v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->s:F

    iput v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->r:F

    iput v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->q:F

    iput v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->p:F

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->l:F

    const/high16 v3, 0x43b40000  # 360.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->p:F

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->o:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000  # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->s:F

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->m:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->q:F

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->n:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->r:F

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a4455jkjh/colorpicker/a/c;->a(ZZ)V

    goto :goto_8
.end method

.method private a(F)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->w:Z

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_f

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, v1

    :cond_f
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_19

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float p1, v1

    :cond_19
    iput p1, p0, Lcom/a4455jkjh/colorpicker/a/c;->s:F

    const/high16 v1, 0x3f800000  # 1.0f

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    sub-float v0, v1, v0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->o:I

    return-void
.end method

.method private a(FF)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->v:Z

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_f

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, v1

    :cond_f
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_19

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, v1

    :cond_19
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_23

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, v1

    :cond_23
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2d

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float p1, v1

    :cond_2d
    iput p1, p0, Lcom/a4455jkjh/colorpicker/a/c;->q:F

    iput p2, p0, Lcom/a4455jkjh/colorpicker/a/c;->r:F

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v1, p1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->m:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v2, p2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->n:F

    return-void
.end method

.method private a(ZZ)V
    .registers 14

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->l:F

    aput v2, v8, v0

    aput v3, v8, v9

    aput v3, v8, v10

    if-nez p1, :cond_17

    iget-boolean v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->u:Z

    if-eqz v0, :cond_35

    :cond_17
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v3, v2

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->j:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->j:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_35
    iget v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->m:F

    aput v0, v8, v9

    iget v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->n:F

    aput v0, v8, v10

    if-nez p1, :cond_47

    iget-boolean v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->u:Z

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->v:Z

    if-eqz v0, :cond_69

    :cond_47
    iget-object v4, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const v6, 0xffffff

    and-int/2addr v6, v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_69
    if-eqz p2, :cond_7a

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    if-eqz v0, :cond_7a

    iget v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->o:I

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    invoke-interface {v1, v0}, Lcom/a4455jkjh/colorpicker/a/e;->a(I)V

    :cond_7a
    return-void
.end method

.method private b()V
    .registers 10

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->k:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->j:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->k:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private b(F)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->u:Z

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->f:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_f

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, v1

    :cond_f
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_19

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, v1

    :cond_19
    iput p1, p0, Lcom/a4455jkjh/colorpicker/a/c;->p:F

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x43b40000  # 360.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->l:F

    return-void
.end method

.method private c()V
    .registers 9

    iget-object v4, p0, Lcom/a4455jkjh/colorpicker/a/c;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Lcom/a4455jkjh/colorpicker/a/c;->x:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 7

    iput p1, p0, Lcom/a4455jkjh/colorpicker/a/c;->o:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p2, p3, p4, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->l:F

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->m:F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->n:F

    invoke-direct {p0}, Lcom/a4455jkjh/colorpicker/a/c;->a()V

    invoke-virtual {p0}, Lcom/a4455jkjh/colorpicker/a/c;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const/high16 v3, -0x1000000

    const/4 v6, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/a4455jkjh/colorpicker/a/c;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->q:F

    iget v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->r:F

    const/4 v2, 0x6

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->q:F

    iget v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->r:F

    const/4 v2, 0x4

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->p:F

    int-to-float v4, v6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->p:F

    sub-float/2addr v2, v4

    int-to-float v4, v6

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->i:Lcom/a4455jkjh/colorpicker/a/a;

    invoke-virtual {v0, p1}, Lcom/a4455jkjh/colorpicker/a/a;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->s:F

    int-to-float v2, v6

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->s:F

    int-to-float v4, v6

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/a4455jkjh/colorpicker/a/c;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/a4455jkjh/colorpicker/a/c;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/a4455jkjh/colorpicker/a/c;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/a4455jkjh/colorpicker/a/c;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/a4455jkjh/colorpicker/a/c;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    mul-int/lit8 v1, v0, 0x11

    mul-int/lit8 v2, v0, 0x12

    mul-int/lit8 v3, v0, 0x13

    iget-object v4, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/a4455jkjh/colorpicker/a/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->i:Lcom/a4455jkjh/colorpicker/a/a;

    iget-object v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/colorpicker/a/a;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/a4455jkjh/colorpicker/a/c;->c()V

    invoke-direct {p0}, Lcom/a4455jkjh/colorpicker/a/c;->b()V

    invoke-direct {p0}, Lcom/a4455jkjh/colorpicker/a/c;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_78

    :cond_13
    :goto_13
    invoke-direct {p0, v3, v4}, Lcom/a4455jkjh/colorpicker/a/c;->a(ZZ)V

    invoke-virtual {p0}, Lcom/a4455jkjh/colorpicker/a/c;->invalidate()V

    :cond_19
    :goto_19
    return v4

    :pswitch_1a  #0x0
    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    invoke-interface {v2}, Lcom/a4455jkjh/colorpicker/a/e;->a()V

    :cond_23
    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_30

    int-to-float v0, v1

    invoke-direct {p0, v0}, Lcom/a4455jkjh/colorpicker/a/c;->b(F)V

    goto :goto_13

    :cond_30
    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->g:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3e

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/a4455jkjh/colorpicker/a/c;->a(FF)V

    goto :goto_13

    :cond_3e
    iget-object v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->h:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_13

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/a4455jkjh/colorpicker/a/c;->a(F)V

    goto :goto_13

    :pswitch_4b  #0x2
    iget-boolean v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->u:Z

    if-eqz v2, :cond_54

    int-to-float v0, v1

    invoke-direct {p0, v0}, Lcom/a4455jkjh/colorpicker/a/c;->b(F)V

    goto :goto_13

    :cond_54
    iget-boolean v2, p0, Lcom/a4455jkjh/colorpicker/a/c;->v:Z

    if-eqz v2, :cond_5e

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/a4455jkjh/colorpicker/a/c;->a(FF)V

    goto :goto_13

    :cond_5e
    iget-boolean v1, p0, Lcom/a4455jkjh/colorpicker/a/c;->w:Z

    if-eqz v1, :cond_13

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/a4455jkjh/colorpicker/a/c;->a(F)V

    goto :goto_13

    :pswitch_67  #0x1
    iput-boolean v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->u:Z

    iput-boolean v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->v:Z

    iput-boolean v3, p0, Lcom/a4455jkjh/colorpicker/a/c;->w:Z

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    invoke-interface {v0}, Lcom/a4455jkjh/colorpicker/a/e;->b()V

    goto :goto_19

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_67  #00000001
        :pswitch_4b  #00000002
    .end packed-switch
.end method

.method public setColor(I)V
    .registers 6

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/a4455jkjh/colorpicker/a/c;->a(IIII)V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/a4455jkjh/colorpicker/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/a4455jkjh/colorpicker/a/c;->t:Lcom/a4455jkjh/colorpicker/a/e;

    return-void
.end method
