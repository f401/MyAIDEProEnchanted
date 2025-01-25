.class public Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
.super Ljava/lang/Object;


# instance fields
.field private mPathData:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    return-void
.end method

.method private booleanToString(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    const-string v0, "1"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "0"

    goto :goto_4
.end method


# virtual methods
.method public absoluteArcTo(FFZZZFF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 10

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->booleanToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->booleanToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p5}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->booleanToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public absoluteClose()Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 3

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public absoluteHorizontalTo(F)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public absoluteLineTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public absoluteMoveTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public absoluteVerticalTo(F)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public relativeArcTo(FFZZZFF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 10

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->booleanToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->booleanToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p5}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->booleanToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public relativeClose()Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 3

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public relativeHorizontalTo(F)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public relativeLineTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public relativeMoveTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 5

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public relativeVerticalTo(F)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;
    .registers 4

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->mPathData:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
