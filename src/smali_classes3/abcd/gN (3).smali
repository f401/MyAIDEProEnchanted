.class public Labcd/gN;
.super Labcd/kM;


# direct methods
.method public constructor <init>(Labcd/kM;)V
    .registers 2

    invoke-virtual {p1}, Labcd/kM;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/kM;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerisignCzagExtension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/kM;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
