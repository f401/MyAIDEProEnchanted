.class final Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerticalLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final x:D


# direct methods
.method constructor <init>(D)V
    .registers 4

    .line 224
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 225
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 227
    return-void
.end method

.method constructor <init>(DLcom/google/common/math/LinearTransformation;)V
    .registers 5

    .line 229
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 230
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 231
    iput-object p3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 232
    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .registers 8

    .line 266
    new-instance v1, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    return-object v1
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 257
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    :cond_a
    return-object v0
.end method

.method public isHorizontal()Z
    .registers 2

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public isVertical()Z
    .registers 2

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public slope()D
    .registers 2

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 262
    const-string v0, "x = %g"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(D)D
    .registers 4

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
