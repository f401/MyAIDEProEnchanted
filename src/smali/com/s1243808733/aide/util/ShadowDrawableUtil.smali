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
    .locals 1

    sget v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smdp2px(F)I
    .locals 1

    invoke-static {p0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->dp2px(F)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIII)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

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
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v1, p6

    invoke-virtual {v0, v1, v2, v2, p5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIIILcom/s1243808733/aide/util/ShadowDrawableUtil-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;-><init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIII)V

    return-void
.end method

.method private static dp2px(F)I
    .locals 2

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
    .locals 3

    const/4 v2, 0x0

    .line 222
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 223
    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 225
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 226
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    .line 277
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 278
    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 279
    invoke-static {v0, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShapeRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 280
    invoke-static {v0, p5}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 281
    invoke-static {v0, p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 282
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 283
    invoke-static {v0, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 285
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 286
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    .line 290
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 291
    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;[Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 292
    invoke-static {v0, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShapeRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 293
    invoke-static {v0, p5}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 294
    invoke-static {v0, p6}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 295
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 296
    invoke-static {v0, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 298
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 299
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)V
    .locals 3

    const/4 v2, 0x0

    .line 239
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 240
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 243
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    .line 230
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->BOTTOM:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 231
    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 232
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 234
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 235
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawable(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    .line 266
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    .line 267
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 268
    invoke-static {v0, p2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShapeRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 269
    invoke-static {v0, p3}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 270
    invoke-static {v0, p4}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 272
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 273
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawableCircle(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    .line 247
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_CIRCLE:I

    .line 248
    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->All:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 249
    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 251
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 252
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setShadowDrawableTop(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    .line 256
    new-instance v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V

    sget v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND_PART:I

    .line 257
    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->TOP:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 258
    invoke-static {v0, v1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 259
    invoke-static {v0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->-$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object v0

    .line 261
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 262
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 109
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    if-eqz v0, :cond_0

    .line 110
    array-length v1, v0

    if-ne v1, v11, :cond_1

    .line 111
    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPartPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    aget v1, v1, v2

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

    invoke-virtual {v2}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_6

    if-eq v2, v11, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 181
    :goto_1
    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShape:I

    sget v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND:I

    if-ne v2, v3, :cond_7

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

    .line 202
    :goto_2
    return-void

    .line 115
    :cond_1
    iget-object v8, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v2, v0, v9

    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v9

    iget-object v5, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgColor:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 115
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 142
    :cond_2
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

    div-float/2addr v2, v9

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

    div-float/2addr v2, v9

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 166
    :cond_3
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

    div-float/2addr v2, v9

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

    div-float/2addr v2, v9

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

    .line 132
    :cond_4
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

    div-float/2addr v2, v9

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

    div-float/2addr v2, v9

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 139
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v9

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

    div-float/2addr v2, v9

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

    .line 126
    :cond_6
    iput v10, v0, Landroid/graphics/RectF;->left:F

    .line 127
    iput v10, v0, Landroid/graphics/RectF;->right:F

    .line 128
    iput v10, v0, Landroid/graphics/RectF;->top:F

    .line 129
    iput v10, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 188
    :cond_7
    sget v3, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->SHAPE_ROUND_PART:I

    if-ne v2, v3, :cond_8

    .line 192
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShapeRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

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

    div-float/2addr v3, v9

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

    div-float/2addr v2, v9

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 5

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    invoke-virtual {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 104
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mRect:Landroid/graphics/RectF;

    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int v1, p2, v0

    .line 84
    :goto_1
    sub-int/2addr p4, v0

    move p2, v1

    goto :goto_0

    .line 96
    :cond_1
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p1, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 84
    :cond_2
    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowRadius:I

    add-int/2addr p1, v0

    add-int v1, p2, v0

    sub-int/2addr p3, v0

    goto :goto_1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
