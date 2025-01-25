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
    .registers 4

    iget-object p1, p0, Labcd/dI;->v5:Labcd/eI;

    iget-object p1, p1, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p2, p1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result p1

    iget-object v0, p0, Labcd/dI;->v5:Labcd/eI;

    iget-object v0, v0, Labcd/eI;->rN:Labcd/fG;

    invoke-virtual {p2, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Labcd/dI;->v5:Labcd/eI;

    iget-object v0, v0, Labcd/eI;->a8:Labcd/fG;

    invoke-virtual {p2, v0}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_19
    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
