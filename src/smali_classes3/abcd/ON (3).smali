.class public Labcd/ON;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/wL;

.field private FH:Labcd/wL;

.field private Hw:Labcd/wL;

.field private j6:Labcd/wL;

.field private v5:Labcd/PN;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_54

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_54

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/ON;->j6:Labcd/wL;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/ON;->DW:Labcd/wL;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/ON;->FH:Labcd/wL;

    invoke-static {p1}, Labcd/ON;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v0

    if-eqz v0, :cond_47

    instance-of v1, v0, Labcd/wL;

    if-eqz v1, :cond_47

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/ON;->Hw:Labcd/wL;

    invoke-static {p1}, Labcd/ON;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v0

    :cond_47
    if-eqz v0, :cond_53

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    invoke-static {p1}, Labcd/PN;->j6(Ljava/lang/Object;)Labcd/PN;

    move-result-object p1

    iput-object p1, p0, Labcd/ON;->v5:Labcd/PN;

    :cond_53
    return-void

    :cond_54
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

.method public static j6(Ljava/lang/Object;)Labcd/ON;
    .registers 3

    if-eqz p0, :cond_2f

    instance-of v0, p0, Labcd/ON;

    if-eqz v0, :cond_7

    goto :goto_2f

    :cond_7
    instance-of v0, p0, Labcd/FL;

    if-eqz v0, :cond_13

    new-instance v0, Labcd/ON;

    check-cast p0, Labcd/FL;

    invoke-direct {v0, p0}, Labcd/ON;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid DHDomainParameters: "

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
    check-cast p0, Labcd/ON;

    return-object p0
.end method

.method private static j6(Ljava/util/Enumeration;)Labcd/qL;
    .registers 2

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/qL;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/ON;->j6:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/ON;->DW:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/ON;->FH:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/ON;->Hw:Labcd/wL;

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1b
    iget-object v1, p0, Labcd/ON;->v5:Labcd/PN;

    if-eqz v1, :cond_22

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_22
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/ON;->j6:Labcd/wL;

    return-object v0
.end method

.method public v5()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/ON;->DW:Labcd/wL;

    return-object v0
.end method
