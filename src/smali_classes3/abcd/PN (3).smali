.class public Labcd/PN;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/wL;

.field private j6:Labcd/cM;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/cM;->j6(Ljava/lang/Object;)Labcd/cM;

    move-result-object v0

    iput-object v0, p0, Labcd/PN;->j6:Labcd/cM;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-static {p1}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object p1

    iput-object p1, p0, Labcd/PN;->DW:Labcd/wL;

    return-void

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Ljava/lang/Object;)Labcd/PN;
    .registers 3

    if-eqz p0, :cond_2f

    instance-of v0, p0, Labcd/ON;

    if-eqz v0, :cond_7

    goto :goto_2f

    :cond_7
    instance-of v0, p0, Labcd/FL;

    if-eqz v0, :cond_13

    new-instance v0, Labcd/PN;

    check-cast p0, Labcd/FL;

    invoke-direct {v0, p0}, Labcd/PN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid DHValidationParms: "

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

    :cond_2f
    :goto_2f
    check-cast p0, Labcd/PN;

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/PN;->j6:Labcd/cM;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/PN;->DW:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method
