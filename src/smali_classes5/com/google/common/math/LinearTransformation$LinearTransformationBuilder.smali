.class public final Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearTransformationBuilder"
.end annotation


# instance fields
.field private final x1:D

.field private final y1:D


# direct methods
.method private constructor <init>(DD)V
    .registers 6

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->x1:D

    .line 65
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->y1:D

    .line 66
    return-void
.end method

.method synthetic constructor <init>(DDLcom/google/common/math/LinearTransformation$1;)V
    .registers 7

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public and(DD)Lcom/google/common/math/LinearTransformation;
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-static {p1, p2}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p3, p4}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 76
    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->x1:D

    cmpl-double v0, p1, v4

    if-nez v0, :cond_2d

    .line 77
    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->y1:D

    cmpl-double v0, p3, v4

    if-eqz v0, :cond_2b

    :goto_1e
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 78
    new-instance v0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    iget-wide v2, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->x1:D

    invoke-direct {v0, v2, v3}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(D)V

    .line 80
    :goto_28
    return-object v0

    :cond_29
    move v0, v2

    .line 75
    goto :goto_f

    :cond_2b
    move v1, v2

    .line 77
    goto :goto_1e

    .line 80
    :cond_2d
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->y1:D

    sub-double v0, p3, v0

    sub-double v2, p1, v4

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v0

    goto :goto_28
.end method

.method public withSlope(D)Lcom/google/common/math/LinearTransformation;
    .registers 10

    .line 90
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    invoke-static {p1, p2}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 92
    iget-wide v2, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->y1:D

    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->x1:D

    .line 93
    new-instance v0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DD)V

    .line 95
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    iget-wide v2, p0, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->x1:D

    invoke-direct {v0, v2, v3}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(D)V

    goto :goto_1a
.end method
