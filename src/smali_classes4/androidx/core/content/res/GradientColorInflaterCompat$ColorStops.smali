.class final Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/GradientColorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorStops"
.end annotation


# instance fields
.field final mColors:[I

.field final mOffsets:[F


# direct methods
.method constructor <init>(II)V
    .registers 6

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    new-array v0, v2, [F

    fill-array-data v0, :array_16

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    return-void

    :array_16
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method constructor <init>(III)V
    .registers 7

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    new-array v0, v2, [F

    fill-array-data v0, :array_1a

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    return-void

    nop

    :array_1a
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    new-array v0, v2, [F

    iput-object v0, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_33

    iget-object v3, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    iget-object v3, p0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_33
    return-void
.end method
