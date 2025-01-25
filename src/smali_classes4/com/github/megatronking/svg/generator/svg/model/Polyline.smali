.class public Lcom/github/megatronking/svg/generator/svg/model/Polyline;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgNode;


# instance fields
.field public points:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;-><init>()V

    return-void
.end method


# virtual methods
.method public toPath()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Polyline;->points:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Polyline;->points:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    new-instance v5, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    invoke-direct {v5}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;-><init>()V

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Polyline;->points:Ljava/lang/String;

    const-string v1, "[\\s,]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v5, v2, v1}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->absoluteMoveTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    const/4 v0, 0x2

    move v3, v2

    :goto_2d
    array-length v2, v6

    if-lt v0, v2, :cond_37

    invoke-virtual {v5}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    goto :goto_c

    :cond_37
    aget-object v2, v6, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float v3, v4, v3

    sub-float v1, v2, v1

    invoke-virtual {v5, v3, v1}, Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;->relativeLineTo(FF)Lcom/github/megatronking/svg/generator/svg/utils/PathBuilder;

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    move v3, v4

    goto :goto_2d
.end method
