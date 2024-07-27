.class Labcd/cK$a;
.super Labcd/cK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final FH:Labcd/jK;

.field private final Hw:Labcd/jK;


# direct methods
.method constructor <init>(Labcd/jK;Labcd/jK;)V
    .registers 3

    invoke-direct {p0}, Labcd/cK;-><init>()V

    iput-object p1, p0, Labcd/cK$a;->FH:Labcd/jK;

    iput-object p2, p0, Labcd/cK$a;->Hw:Labcd/jK;

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .registers 4

    new-instance v0, Labcd/cK$a;

    iget-object v1, p0, Labcd/cK$a;->FH:Labcd/jK;

    invoke-virtual {v1}, Labcd/jK;->clone()Labcd/jK;

    move-result-object v1

    iget-object v2, p0, Labcd/cK$a;->Hw:Labcd/jK;

    invoke-virtual {v2}, Labcd/jK;->clone()Labcd/jK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/cK$a;-><init>(Labcd/jK;Labcd/jK;)V

    return-object v0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Labcd/cK$a;->FH:Labcd/jK;

    invoke-virtual {v0}, Labcd/jK;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/cK$a;->Hw:Labcd/jK;

    invoke-virtual {v0}, Labcd/jK;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 3

    iget-object v0, p0, Labcd/cK$a;->FH:Labcd/jK;

    invoke-virtual {v0, p1}, Labcd/jK;->j6(Labcd/YJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/cK$a;->Hw:Labcd/jK;

    invoke-virtual {v0, p1}, Labcd/jK;->j6(Labcd/YJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/cK$a;->FH:Labcd/jK;

    invoke-virtual {v1}, Labcd/jK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/cK$a;->Hw:Labcd/jK;

    invoke-virtual {v1}, Labcd/jK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
