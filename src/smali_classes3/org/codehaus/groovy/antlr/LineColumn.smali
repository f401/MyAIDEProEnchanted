.class public Lorg/codehaus/groovy/antlr/LineColumn;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private j6:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/codehaus/groovy/antlr/LineColumn;->j6:I

    iput p2, p0, Lorg/codehaus/groovy/antlr/LineColumn;->DW:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/LineColumn;->j6:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    const-class v2, Lorg/codehaus/groovy/antlr/LineColumn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_21

    :cond_10
    check-cast p1, Lorg/codehaus/groovy/antlr/LineColumn;

    iget v2, p0, Lorg/codehaus/groovy/antlr/LineColumn;->DW:I

    iget v3, p1, Lorg/codehaus/groovy/antlr/LineColumn;->DW:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget v2, p0, Lorg/codehaus/groovy/antlr/LineColumn;->j6:I

    iget p1, p1, Lorg/codehaus/groovy/antlr/LineColumn;->j6:I

    if-eq v2, p1, :cond_20

    return v1

    :cond_20
    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/codehaus/groovy/antlr/LineColumn;->j6:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lorg/codehaus/groovy/antlr/LineColumn;->DW:I

    add-int/2addr v0, v1

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/LineColumn;->DW:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/antlr/LineColumn;->j6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/antlr/LineColumn;->DW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
