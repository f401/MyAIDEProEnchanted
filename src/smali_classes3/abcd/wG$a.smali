.class Labcd/wG$a;
.super Labcd/wG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/wG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/wG;-><init>(J)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/qG;Labcd/dG;)Z
    .registers 3

    invoke-virtual {p2}, Labcd/dG;->U2()I

    move-result p1

    iget p2, p0, Labcd/wG;->v5:I

    if-lt p1, p2, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    sget-object p1, Labcd/sD;->j6:Labcd/sD;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Labcd/yG;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget v2, p0, Labcd/wG;->v5:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
