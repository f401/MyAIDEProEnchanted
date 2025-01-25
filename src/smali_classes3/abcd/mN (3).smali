.class public Labcd/mN;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/wN;

.field private FH:Labcd/HL;

.field private j6:Labcd/AL;


# direct methods
.method public constructor <init>(Labcd/FL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/wL;

    invoke-virtual {v0}, Labcd/lM;->tp()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/mN;->DW:Labcd/wN;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object v0

    iput-object v0, p0, Labcd/mN;->j6:Labcd/AL;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/LL;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Labcd/HL;->j6(Labcd/LL;Z)Labcd/HL;

    move-result-object p1

    iput-object p1, p0, Labcd/mN;->FH:Labcd/HL;

    :cond_3e
    return-void

    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Labcd/wN;Labcd/qL;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/mN;-><init>(Labcd/wN;Labcd/qL;Labcd/HL;)V

    return-void
.end method

.method public constructor <init>(Labcd/wN;Labcd/qL;Labcd/HL;)V
    .registers 6

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/pM;

    invoke-interface {p2}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p2

    const-string v1, "DER"

    invoke-virtual {p2, v1}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v0, p2}, Labcd/pM;-><init>([B)V

    iput-object v0, p0, Labcd/mN;->j6:Labcd/AL;

    iput-object p1, p0, Labcd/mN;->DW:Labcd/wN;

    iput-object p3, p0, Labcd/mN;->FH:Labcd/HL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/mN;
    .registers 2

    instance-of v0, p0, Labcd/mN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/mN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/mN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/mN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 5

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    new-instance v1, Labcd/wL;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Labcd/wL;-><init>(I)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/mN;->DW:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/mN;->j6:Labcd/AL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/mN;->FH:Labcd/HL;

    if-eqz v1, :cond_24

    new-instance v3, Labcd/yM;

    invoke-direct {v3, v2, v2, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v3}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_24
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Labcd/qL;
    .registers 2

    iget-object v0, p0, Labcd/mN;->j6:Labcd/AL;

    invoke-virtual {v0}, Labcd/AL;->u7()[B

    move-result-object v0

    invoke-static {v0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/mN;->DW:Labcd/wN;

    return-object v0
.end method
