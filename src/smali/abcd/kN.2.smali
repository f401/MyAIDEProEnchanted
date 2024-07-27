.class public Labcd/kN;
.super Labcd/yL;


# instance fields
.field DW:Labcd/wL;

.field FH:Labcd/wL;

.field j6:Labcd/wL;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v1

    iput-object v1, p0, Labcd/kN;->j6:Labcd/wL;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Labcd/lM;->j6(Ljava/lang/Object;)Labcd/wL;

    move-result-object v1

    iput-object v1, p0, Labcd/kN;->DW:Labcd/wL;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/wL;

    iput-object v0, p0, Labcd/kN;->FH:Labcd/wL;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/kN;->FH:Labcd/wL;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 5

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/wL;

    invoke-direct {v0, p1}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Labcd/kN;->j6:Labcd/wL;

    new-instance v0, Labcd/wL;

    invoke-direct {v0, p2}, Labcd/wL;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Labcd/kN;->DW:Labcd/wL;

    if-eqz p3, :cond_0

    new-instance v0, Labcd/wL;

    invoke-direct {v0, p3}, Labcd/wL;-><init>(I)V

    iput-object v0, p0, Labcd/kN;->FH:Labcd/wL;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/kN;->FH:Labcd/wL;

    goto :goto_0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/kN;
    .registers 3

    instance-of v0, p0, Labcd/kN;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/kN;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/kN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/kN;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
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

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/kN;->FH:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_0
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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/lM;->u7()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public v5()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/kN;->DW:Labcd/wL;

    invoke-virtual {v0}, Labcd/lM;->u7()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
