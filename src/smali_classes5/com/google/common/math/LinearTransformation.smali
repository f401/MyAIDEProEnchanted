.class public abstract Lcom/google/common/math/LinearTransformation;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;,
        Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;,
        Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forNaN()Lcom/google/common/math/LinearTransformation;
    .registers 1

    .line 126
    sget-object v0, Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;->INSTANCE:Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;

    return-object v0
.end method

.method public static horizontal(D)Lcom/google/common/math/LinearTransformation;
    .registers 6

    .line 114
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 115
    new-instance v0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, p0, p1}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DD)V

    return-object v0
.end method

.method public static mapping(DD)Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;
    .registers 12

    .line 46
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2, p3}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    new-instance v1, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;-><init>(DDLcom/google/common/math/LinearTransformation$1;)V

    return-object v1

    .line 46
    :cond_19
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static vertical(D)Lcom/google/common/math/LinearTransformation;
    .registers 4

    .line 105
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 106
    new-instance v0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    invoke-direct {v0, p0, p1}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public abstract inverse()Lcom/google/common/math/LinearTransformation;
.end method

.method public abstract isHorizontal()Z
.end method

.method public abstract isVertical()Z
.end method

.method public abstract slope()D
.end method

.method public abstract transform(D)D
.end method
