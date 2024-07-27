.class public Lcom/github/megatronking/svg/generator/vector/model/Group;
.super Ljava/lang/Object;


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public parentGroup:Lcom/github/megatronking/svg/generator/vector/model/Group;

.field public pivotX:F

.field public pivotY:F

.field public rotation:F

.field public scaleX:F

.field public scaleY:F

.field public translateX:F

.field public translateY:F


# direct methods
.method public constructor <init>(Lcom/github/megatronking/svg/generator/vector/model/Group;)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->scaleX:F

    iput v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->scaleY:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->children:Ljava/util/List;

    iput-object p1, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->parentGroup:Lcom/github/megatronking/svg/generator/vector/model/Group;

    return-void
.end method


# virtual methods
.method public getMatrix()Lcom/github/megatronking/svg/generator/utils/Matrix;
    .registers 5

    const/4 v3, 0x0

    new-instance v1, Lcom/github/megatronking/svg/generator/utils/Matrix;

    invoke-direct {v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;-><init>()V

    iget v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->pivotX:F

    neg-float v0, v0

    iget v2, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->pivotY:F

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->postTranslate(FF)V

    iget v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->scaleX:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->scaleY:F

    invoke-virtual {v1, v0, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->postScale(FF)V

    iget v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->rotation:F

    int-to-float v2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/github/megatronking/svg/generator/utils/Matrix;->postRotate(FFF)V

    iget v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->translateX:F

    iget v2, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->pivotX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->translateY:F

    iget v3, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->pivotY:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/github/megatronking/svg/generator/utils/Matrix;->postTranslate(FF)V

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->parentGroup:Lcom/github/megatronking/svg/generator/vector/model/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/vector/model/Group;->parentGroup:Lcom/github/megatronking/svg/generator/vector/model/Group;

    invoke-virtual {v0}, Lcom/github/megatronking/svg/generator/vector/model/Group;->getMatrix()Lcom/github/megatronking/svg/generator/utils/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/megatronking/svg/generator/utils/Matrix;->preConcat(Lcom/github/megatronking/svg/generator/utils/Matrix;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
