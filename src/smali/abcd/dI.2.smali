.class Labcd/dI;
.super Labcd/yG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/eI;->Ws()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final v5:Labcd/eI;


# direct methods
.method constructor <init>(Labcd/eI;)V
    .registers 2

    iput-object p1, p0, Labcd/dI;->v5:Labcd/eI;

    invoke-direct {p0}, Labcd/yG;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Labcd/yG;
    .registers 1

    return-object p0
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/qG;Labcd/dG;)Z
    .registers 5

    iget-object v0, p0, Labcd/dI;->v5:Labcd/eI;

    iget-object v0, v0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p2, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    iget-object v1, p0, Labcd/dI;->v5:Labcd/eI;

    iget-object v1, v1, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {p2, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/dI;->v5:Labcd/eI;

    iget-object v1, v1, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p2, v1}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
