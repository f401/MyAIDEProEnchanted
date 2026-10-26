.class public Lcom/github/megatronking/svg/generator/utils/Point;
.super Ljava/lang/Object;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iput p2, p0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    return v0
.end method

.method public set(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    iput p1, p0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    iput p2, p0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    return-void
.end method

.method public setX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    iput p1, p0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    iput p1, p0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    return-void
.end method
