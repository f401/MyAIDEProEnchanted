.class public Lcom/github/megatronking/svg/generator/svg/model/Path;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgNode;


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;-><init>()V

    return-void
.end method


# virtual methods
.method public toPath()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Path;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/SvgNode;->pathData:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Path;->d:Ljava/lang/String;

    const-string v1, "(\\d)-"

    const-string v2, "$1,-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
