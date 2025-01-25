.class Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
.super Ljava/lang/Object;
.source "ShadowDrawableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/ShadowDrawableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mBgColor:[I

.field private mShadowColor:I

.field private mShadowRadius:I

.field private mShape:I

.field private mShapeRadius:I

.field private type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;


# direct methods
.method static bridge synthetic -$$Nest$mbuilder(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;)Lcom/s1243808733/aide/util/ShadowDrawableUtil;
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->builder()Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->setBgColor(Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetBgColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;[Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->setBgColor([Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetShadowColor(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->setShadowColor(Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetShadowRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->setShadowRadius(I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetShape(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->setShape(I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetShapeRadius(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->setShapeRadius(I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->setType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 4

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    invoke-static {}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->-$$Nest$sfgetSHAPE_ROUND()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShape:I

    .line 313
    sget-object v0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;->All:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    .line 314
    const/16 v0, 0x11

    iput v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShapeRadius:I

    .line 315
    const-string v0, "#FF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShadowColor:I

    .line 316
    const/4 v0, 0x4

    iput v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShadowRadius:I

    .line 317
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mBgColor:[I

    .line 318
    const/4 v1, 0x0

    const v2, -0xff0100

    aput v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;-><init>()V

    return-void
.end method

.method private builder()Lcom/s1243808733/aide/util/ShadowDrawableUtil;
    .registers 10

    .line 366
    new-instance v8, Lcom/s1243808733/aide/util/ShadowDrawableUtil;

    iget v1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShape:I

    iget-object v2, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    iget-object v3, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mBgColor:[I

    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShapeRadius:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->-$$Nest$smdp2px(F)I

    move-result v4

    iget v5, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShadowColor:I

    iget v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShadowRadius:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;->-$$Nest$smdp2px(F)I

    move-result v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/aide/util/ShadowDrawableUtil;-><init>(ILcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;[IIIILcom/s1243808733/aide/util/ShadowDrawableUtil-IA;)V

    return-object v8
.end method

.method private setBgColor(Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mBgColor:[I

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    return-object p0
.end method

.method private setBgColor([Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 5

    if-eqz p1, :cond_19

    .line 354
    array-length v0, p1

    if-lez v0, :cond_19

    .line 355
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 356
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_17

    .line 357
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 359
    :cond_17
    iput-object v0, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mBgColor:[I

    :cond_19
    return-object p0
.end method

.method private setShadowColor(Ljava/lang/String;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    .line 333
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShadowColor:I

    return-object p0
.end method

.method private setShadowRadius(I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    .line 338
    iput p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShadowRadius:I

    return-object p0
.end method

.method private setShape(I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    .line 322
    iput p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShape:I

    return-object p0
.end method

.method private setShapeRadius(I)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    .line 327
    iput p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->mShapeRadius:I

    return-object p0
.end method

.method private setType(Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;)Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/s1243808733/aide/util/ShadowDrawableUtil$Builder;->type:Lcom/s1243808733/aide/util/ShadowDrawableUtil$TypeEnum;

    return-object p0
.end method
