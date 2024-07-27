.class public Labcd/YM;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/XM;

.field private FH:Labcd/wN;

.field private Hw:Labcd/HL;

.field private VH:Labcd/HL;

.field private Zo:Labcd/AL;

.field private j6:Labcd/wL;

.field private v5:Labcd/wN;


# direct methods
.method public constructor <init>(Labcd/FL;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/wL;

    iput-object v0, p0, Labcd/YM;->j6:Labcd/wL;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/XM;->j6(Ljava/lang/Object;)Labcd/XM;

    move-result-object v0

    iput-object v0, p0, Labcd/YM;->DW:Labcd/XM;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/YM;->FH:Labcd/wN;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Labcd/LL;

    if-eqz v2, :cond_0

    check-cast v0, Labcd/LL;

    invoke-static {v0, v3}, Labcd/HL;->j6(Labcd/LL;Z)Labcd/HL;

    move-result-object v0

    iput-object v0, p0, Labcd/YM;->Hw:Labcd/HL;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/YM;->v5:Labcd/wN;

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object v0

    iput-object v0, p0, Labcd/YM;->Zo:Labcd/AL;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/LL;

    invoke-static {v0, v3}, Labcd/HL;->j6(Labcd/LL;Z)Labcd/HL;

    move-result-object v0

    iput-object v0, p0, Labcd/YM;->VH:Labcd/HL;

    :goto_1
    return-void

    :cond_0
    iput-object v4, p0, Labcd/YM;->Hw:Labcd/HL;

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/YM;->v5:Labcd/wN;

    goto :goto_0

    :cond_1
    iput-object v4, p0, Labcd/YM;->VH:Labcd/HL;

    goto :goto_1
.end method

.method public constructor <init>(Labcd/XM;Labcd/wN;Labcd/HL;Labcd/wN;Labcd/AL;Labcd/HL;)V
    .registers 9

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/XM;->v5()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/wL;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Labcd/wL;-><init>(I)V

    iput-object v0, p0, Labcd/YM;->j6:Labcd/wL;

    :goto_0
    iput-object p1, p0, Labcd/YM;->DW:Labcd/XM;

    iput-object p2, p0, Labcd/YM;->FH:Labcd/wN;

    iput-object p3, p0, Labcd/YM;->Hw:Labcd/HL;

    iput-object p4, p0, Labcd/YM;->v5:Labcd/wN;

    iput-object p5, p0, Labcd/YM;->Zo:Labcd/AL;

    iput-object p6, p0, Labcd/YM;->VH:Labcd/HL;

    return-void

    :cond_0
    new-instance v0, Labcd/wL;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Labcd/wL;-><init>(I)V

    iput-object v0, p0, Labcd/YM;->j6:Labcd/wL;

    goto :goto_0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/YM;
    .registers 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/YM;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/YM;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Labcd/FL;

    if-eqz v0, :cond_2

    new-instance v0, Labcd/YM;

    check-cast p0, Labcd/FL;

    invoke-direct {v0, p0}, Labcd/YM;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in factory: "

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
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/YM;->j6:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/YM;->DW:Labcd/XM;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/YM;->FH:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/YM;->Hw:Labcd/HL;

    if-eqz v1, :cond_0

    new-instance v2, Labcd/yM;

    invoke-direct {v2, v4, v4, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_0
    iget-object v1, p0, Labcd/YM;->v5:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/YM;->Zo:Labcd/AL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/YM;->VH:Labcd/HL;

    if-eqz v1, :cond_1

    new-instance v2, Labcd/yM;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v3, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/YM;->j6:Labcd/wL;

    return-object v0
.end method

.method public v5()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/YM;->FH:Labcd/wN;

    return-object v0
.end method
