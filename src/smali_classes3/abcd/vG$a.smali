.class Labcd/vG$a;
.super Labcd/vG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/vG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final VH:Z

.field private final Zo:Labcd/yG;

.field private final v5:Labcd/yG;


# direct methods
.method constructor <init>(Labcd/yG;Labcd/yG;)V
    .registers 3

    invoke-direct {p0}, Labcd/vG;-><init>()V

    iput-object p1, p0, Labcd/vG$a;->v5:Labcd/yG;

    iput-object p2, p0, Labcd/vG$a;->Zo:Labcd/yG;

    invoke-virtual {p1}, Labcd/yG;->j6()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p2}, Labcd/yG;->j6()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    const/4 p1, 0x1

    :goto_16
    iput-boolean p1, p0, Labcd/vG$a;->VH:Z

    return-void
.end method


# virtual methods
.method public clone()Labcd/yG;
    .registers 4

    new-instance v0, Labcd/vG$a;

    iget-object v1, p0, Labcd/vG$a;->v5:Labcd/yG;

    invoke-virtual {v1}, Labcd/yG;->clone()Labcd/yG;

    move-result-object v1

    iget-object v2, p0, Labcd/vG$a;->Zo:Labcd/yG;

    invoke-virtual {v2}, Labcd/yG;->clone()Labcd/yG;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/vG$a;-><init>(Labcd/yG;Labcd/yG;)V

    return-object v0
.end method

.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Labcd/vG$a;->VH:Z

    return v0
.end method

.method public j6(Labcd/qG;Labcd/dG;)Z
    .registers 4

    iget-object v0, p0, Labcd/vG$a;->v5:Labcd/yG;

    invoke-virtual {v0, p1, p2}, Labcd/yG;->j6(Labcd/qG;Labcd/dG;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/vG$a;->Zo:Labcd/yG;

    invoke-virtual {v0, p1, p2}, Labcd/yG;->j6(Labcd/qG;Labcd/dG;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/vG$a;->v5:Labcd/yG;

    invoke-virtual {v1}, Labcd/yG;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/vG$a;->Zo:Labcd/yG;

    invoke-virtual {v1}, Labcd/yG;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
