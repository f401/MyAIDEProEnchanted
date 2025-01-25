.class public Labcd/iK;
.super Labcd/jK;


# instance fields
.field private final FH:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Labcd/jK;-><init>()V

    iput p1, p0, Labcd/iK;->FH:I

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .registers 1

    return-object p0
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 4

    iget v0, p0, Labcd/iK;->FH:I

    const-class v1, Labcd/RC;

    invoke-virtual {p1, v0, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p1

    check-cast p1, Labcd/RC;

    const/4 v0, 0x1

    if-nez p1, :cond_e

    return v0

    :cond_e
    invoke-virtual {p1}, Labcd/RC;->J8()Labcd/QC;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Labcd/QC;->we()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x0

    return p1

    :cond_1c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SkipWorkTree("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Labcd/iK;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
