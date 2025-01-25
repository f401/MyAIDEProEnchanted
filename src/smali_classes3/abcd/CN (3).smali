.class public Labcd/CN;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/cM;

.field private j6:Labcd/wN;


# direct methods
.method public constructor <init>(Labcd/FL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/CN;->j6:Labcd/wN;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Labcd/cM;->j6(Ljava/lang/Object;)Labcd/cM;

    move-result-object p1

    iput-object p1, p0, Labcd/CN;->DW:Labcd/cM;

    return-void

    :cond_23
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

.method public constructor <init>(Labcd/wN;Labcd/qL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Labcd/cM;

    invoke-direct {v0, p2}, Labcd/cM;-><init>(Labcd/qL;)V

    iput-object v0, p0, Labcd/CN;->DW:Labcd/cM;

    iput-object p1, p0, Labcd/CN;->j6:Labcd/wN;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/CN;
    .registers 2

    instance-of v0, p0, Labcd/CN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/CN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/CN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/CN;-><init>(Labcd/FL;)V

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

    iget-object v1, p0, Labcd/CN;->j6:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/CN;->DW:Labcd/cM;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/vL;

    iget-object v1, p0, Labcd/CN;->DW:Labcd/cM;

    invoke-virtual {v1}, Labcd/cM;->u7()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/vL;-><init>([B)V

    invoke-virtual {v0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/CN;->j6:Labcd/wN;

    return-object v0
.end method
