.class public Labcd/XM;
.super Labcd/yL;

# interfaces
.implements Labcd/pL;


# instance fields
.field private j6:Labcd/qL;


# direct methods
.method public constructor <init>(Labcd/AL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/yM;

    const/4 v1, 0x0

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

    if-eqz p0, :cond_47

    instance-of v0, p0, Labcd/XM;

    if-eqz v0, :cond_7

    goto :goto_47

    :cond_7
    instance-of v0, p0, Labcd/VM;

    if-eqz v0, :cond_13

    new-instance v0, Labcd/XM;

    check-cast p0, Labcd/VM;

    invoke-direct {v0, p0}, Labcd/XM;-><init>(Labcd/VM;)V

    return-object v0

    :cond_13
    instance-of v0, p0, Labcd/AL;

    if-eqz v0, :cond_1f

    new-instance v0, Labcd/XM;

    check-cast p0, Labcd/AL;

    invoke-direct {v0, p0}, Labcd/XM;-><init>(Labcd/AL;)V

    return-object v0

    :cond_1f
    instance-of v0, p0, Labcd/EL;

    if-eqz v0, :cond_2b

    new-instance v0, Labcd/XM;

    check-cast p0, Labcd/EL;

    invoke-direct {v0, p0}, Labcd/XM;-><init>(Labcd/EL;)V

    return-object v0

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal object in SignerIdentifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :goto_47
    check-cast p0, Labcd/XM;

    return-object p0
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
