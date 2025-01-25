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
.field private static SHAPE_CIRCLE:I = 0x2

.field private static SHAPE_ROUND:I = 0x1

.field private static SHAPE_ROUND_PART:I = 0x3


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
.method static bridge synthetic -$$Nest$sfgetSHAPE_ROUND()I
    .registers 1

    sget v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smdp2px(F)I
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIII)V
    .registers 7

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
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    .line 59
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float p3, p6

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p4, p5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIIILcom/s1243808733/aide/util/ShadowDrawableUtil-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;-><init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIII)V

    return-void
.end method

.method private static dp2px(F)I
    .registers 3

    .line 371
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static setShadowDrawable(Landroid/view/View;)V
    .registers 4

    .line 222
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget-object v2, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 223
    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 225
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 226
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9

    .line 277
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 278
    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 279
    invoke-static {p3, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShapeRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 280
    invoke-static {p3, p5}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 281
    invoke-static {p3, p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 282
    invoke-static {p3, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 283
    invoke-static {p1, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 284
    invoke-static {p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object p1

    .line 285
    const/4 p2, 0x1

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 286
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9

    .line 290
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 291
    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;[Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 292
    invoke-static {p3, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShapeRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 293
    invoke-static {p3, p5}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 294
    invoke-static {p3, p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p3

    .line 295
    invoke-static {p3, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 296
    invoke-static {p1, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 297
    invoke-static {p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object p1

    .line 298
    const/4 p2, 0x1

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 299
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)V
    .registers 4

    .line 239
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 240
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object p1

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 243
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .line 230
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget-object v2, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 231
    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 232
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 233
    invoke-static {p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object p1

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 235
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 266
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 267
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 268
    invoke-static {p1, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShapeRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 269
    invoke-static {p1, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 270
    invoke-static {p1, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 271
    invoke-static {p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object p1

    .line 272
    const/4 p2, 0x1

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 273
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawableCircle(Landroid/view/View;)V
    .registers 4

    .line 247
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget v2, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_CIRCLE:I

    .line 248
    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    sget-object v2, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->All:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 249
    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 251
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 252
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawableTop(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .line 256
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget v2, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND_PART:I

    .line 257
    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    sget-object v2, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->TOP:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 258
    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 259
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p1

    .line 260
    invoke-static {p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object p1

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 262
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 109
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000  # 2.0f

    if-eqz v0, :cond_4d

    .line 110
    array-length v3, v0

    if-ne v3, v1, :cond_25

    .line 111
    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4d

    .line 115
    :cond_25
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v6, v3, v2

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    .line 116
    new-instance v12, Landroid/graphics/LinearGradient;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v8, v3, v2

    iget-object v9, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 115
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 122
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 123
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 124
    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    invoke-virtual {v4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_15a

    if-eq v4, v1, :cond_11f

    const/4 v1, 0x2

    if-eq v4, v1, :cond_e4

    const/4 v1, 0x3

    if-eq v4, v1, :cond_a8

    const/4 v1, 0x4

    if-eq v4, v1, :cond_6c

    goto/16 :goto_163

    .line 142
    :cond_6c
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 143
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 144
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 145
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 147
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 148
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 149
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 150
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_163

    .line 166
    :cond_a8
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 167
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 168
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 169
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 171
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 172
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 173
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 174
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_163

    .line 132
    :cond_e4
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 133
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 134
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 135
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 136
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 137
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 138
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 139
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_163

    .line 154
    :cond_11f
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 155
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 156
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 157
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 159
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 160
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 161
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 162
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_163

    .line 126
    :cond_15a
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 127
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 128
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 129
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 181
    :goto_163
    iget v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShape:I

    sget v4, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    if-ne v1, v4, :cond_183

    .line 185
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 187
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1ef

    .line 188
    :cond_183
    sget v4, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND_PART:I

    if-ne v1, v4, :cond_1a6

    .line 192
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1ef

    .line 200
    :cond_1a6
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

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

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1ef
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 7

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    goto :goto_27

    .line 91
    :cond_18
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p2, v0

    goto :goto_26

    .line 96
    :cond_1c
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p1, v0

    sub-int/2addr p3, v0

    goto :goto_27

    .line 84
    :cond_21
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :goto_26
    sub-int/2addr p4, v0

    .line 104
    :goto_27
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
