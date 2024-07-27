.class public Lcom/s1243808733/aide/util/ShadowDrawableUtil;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowDrawableUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;,
        Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;
    }
.end annotation


# static fields
.field private static SHAPE_CIRCLE:I

.field private static SHAPE_ROUND:I

.field private static SHAPE_ROUND_PART:I


# instance fields
.field private mBgColor:[I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgPartPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field private mShape:I

.field private mShapeRadius:I

.field private type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    const/4 v0, 0x2

    sput v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_CIRCLE:I

    const/4 v0, 0x3

    sput v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND_PART:I

    return-void
.end method

.method constructor <init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIII)V
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    iput p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShape:I

    .line 51
    iput-object p2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 52
    iput-object p3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    .line 53
    iput p4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    .line 54
    iput p6, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v1, p6

    int-to-float v2, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, p5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$1000029(F)I
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->dp2px(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$L1000010()I
    .registers 1

    sget v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    return v0
.end method

.method static synthetic access$S1000010(I)V
    .registers 1

    sput p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    return-void
.end method

.method private static dp2px(F)I
    .registers 3

    .line 371
    const/4 v0, 0x1

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static setShadowDrawable(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000026(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 225
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 226
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000025(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000022(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000023(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000024(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000021(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000026(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 285
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 286
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[Ljava/lang/String;ILjava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000027(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;[Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000022(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000023(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000024(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000021(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000026(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 298
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 299
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;",
            ")V"
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000026(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 242
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 243
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000026(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000025(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 234
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 235
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000025(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000022(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000023(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000024(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 272
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 273
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawableCircle(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    sget v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_CIRCLE:I

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000021(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->All:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000026(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 251
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 252
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawableTop(Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    sget v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND_PART:I

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000021(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->TOP:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000026(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000023(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->access$1000028(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v1

    .line 261
    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 262
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 123
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    sget-object v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->All:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v2, v3, :cond_3

    .line 126
    int-to-float v2, v10

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 127
    int-to-float v2, v10

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 128
    int-to-float v2, v10

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 129
    int-to-float v2, v10

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 181
    :cond_1
    :goto_1
    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShape:I

    sget v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    if-ne v2, v3, :cond_7

    .line 185
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 187
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    :goto_2
    return-void

    .line 115
    :cond_2
    iget-object v8, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v9

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    const/4 v6, 0x0

    check-cast v6, [F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 130
    :cond_3
    sget-object v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->TOP:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v2, v3, :cond_4

    .line 132
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 133
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 134
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 135
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 136
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 137
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 138
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 139
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 140
    :cond_4
    sget-object v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v2, v3, :cond_5

    .line 142
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 143
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 144
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 145
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 147
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 148
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 149
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 150
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 152
    :cond_5
    sget-object v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->LEFT:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v2, v3, :cond_6

    .line 154
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 155
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 156
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 157
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 159
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 160
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 161
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 162
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 164
    :cond_6
    sget-object v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->RIGHT:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v2, v3, :cond_1

    .line 166
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 167
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 168
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 169
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 171
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 172
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 173
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 174
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 188
    :cond_7
    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShape:I

    sget v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND_PART:I

    if-ne v2, v3, :cond_8

    .line 192
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 200
    :cond_8
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v4, v9

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 201
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public getOpacity()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 218
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->All:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v0, v1, :cond_1

    .line 84
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p1, v0

    .line 85
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p2, v0

    .line 86
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    sub-int/2addr p3, v0

    .line 87
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    sub-int/2addr p4, v0

    .line 104
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    return-void

    .line 88
    :cond_1
    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->TOP:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v0, v1, :cond_3

    .line 91
    :cond_2
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p2, v0

    .line 92
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    sub-int/2addr p4, v0

    .line 93
    goto :goto_0

    .line 88
    :cond_3
    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-eq v0, v1, :cond_2

    .line 93
    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->LEFT:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v0, v1, :cond_4

    .line 96
    :goto_1
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p1, v0

    .line 97
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    sub-int/2addr p3, v0

    .line 98
    goto :goto_0

    .line 93
    :cond_4
    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->RIGHT:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    if-ne v0, v1, :cond_0

    goto :goto_1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
