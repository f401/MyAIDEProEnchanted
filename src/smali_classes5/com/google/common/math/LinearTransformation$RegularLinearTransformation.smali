.class final Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final slope:D

.field final yIntercept:D


# direct methods
.method constructor <init>(DD)V
    .registers 6

    .line 166
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 167
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 168
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 170
    return-void
.end method

.method constructor <init>(DDLcom/google/common/math/LinearTransformation;)V
    .registers 7

    .line 172
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 173
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 174
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 175
    iput-object p5, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 176
    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .registers 11

    .line 210
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1b

    .line 211
    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    new-instance v1, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    div-double/2addr v2, v4

    iget-wide v6, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    const-wide/high16 v8, -0x4010000000000000L  # -1.0

    mul-double/2addr v6, v8

    div-double v4, v6, v4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    .line 213
    :goto_1a
    return-object v1

    :cond_1b
    new-instance v1, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    iget-wide v2, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-direct {v1, v2, v3, p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(DLcom/google/common/math/LinearTransformation;)V

    goto :goto_1a
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 201
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    :cond_a
    return-object v0
.end method

.method public isHorizontal()Z
    .registers 5

    .line 185
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVertical()Z
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public slope()D
    .registers 3

    .line 190
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 206
    const-string v0, "y = %g * x + %g"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(D)D
    .registers 8

    .line 195
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    add-double/2addr v0, v2

    return-wide v0
.end method
