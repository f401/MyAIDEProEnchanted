.class public Labcd/XM;
.super Labcd/yL;

# interfaces
.implements Labcd/pL;


# instance fields
.field private j6:Labcd/qL;


# direct methods
.method public constructor <init>(Labcd/AL;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/yM;

    invoke-direct {v0, v1, v1, p1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    iput-object v0, p0, Labcd/XM;->j6:Labcd/qL;

    return-void
.end method

.method public constructor <init>(Labcd/EL;)V
    .registers 2

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/XM;->j6:Labcd/qL;

    return-void
.end method

.method public constructor <init>(Labcd/VM;)V
    .registers 2

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/XM;->j6:Labcd/qL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/XM;
    .registers 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/XM;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/XM;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Labcd/VM;

    if-eqz v0, :cond_2

    new-instance v0, Labcd/XM;

    check-cast p0, Labcd/VM;

    invoke-direct {v0, p0}, Labcd/XM;-><init>(Labcd/VM;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Labcd/AL;

    if-eqz v0, :cond_3

    new-instance v0, Labcd/XM;

    check-cast p0, Labcd/AL;

    invoke-direct {v0, p0}, Labcd/XM;-><init>(Labcd/AL;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Labcd/EL;

    if-eqz v0, :cond_4

    new-instance v0, Labcd/XM;

    check-cast p0, Labcd/EL;

    invoke-direct {v0, p0}, Labcd/XM;-><init>(Labcd/EL;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal object in SignerIdentifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/XM;->j6:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    return-object v0
.end method

.method public v5()Z
    .registers 2

    iget-object v0, p0, Labcd/XM;->j6:Labcd/qL;

    instance-of v0, v0, Labcd/LL;

    return v0
.end method
