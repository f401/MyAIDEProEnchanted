.class public Labcd/kN;
.super Labcd/yL;


# instance fields
.field DW:Labcd/wL;

.field FH:Labcd/wL;

.field j6:Labcd/wL;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/kN;->j6:Labcd/wL;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/kN;->DW:Labcd/wL;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/wL;

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iput-object p1, p0, Labcd/kN;->FH:Labcd/wL;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 5

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/wL;

    invoke-direct {v0, p1}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Labcd/kN;->j6:Labcd/wL;

    new-instance p1, Labcd/wL;

    invoke-direct {p1, p2}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Labcd/kN;->DW:Labcd/wL;

    if-eqz p3, :cond_19

    new-instance p1, Labcd/wL;

    invoke-direct {p1, p3}, Labcd/wL;-><init>(I)V

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Labcd/kN;->FH:Labcd/wL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/kN;
    .registers 2

    instance-of v0, p0, Labcd/kN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/kN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/kN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/kN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/kN;->j6:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/kN;->DW:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {p0}, Labcd/kN;->Zo()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Labcd/kN;->FH:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1a
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public VH()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/kN;->j6:Labcd/wL;

    invoke-virtual {v0}, Labcd/lM;->u7()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/kN;->FH:Labcd/wL;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Labcd/lM;->u7()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/kN;->DW:Labcd/wL;

    invoke-virtual {v0}, Labcd/lM;->u7()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
