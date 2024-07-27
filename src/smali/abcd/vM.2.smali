.class public Labcd/vM;
.super Labcd/HL;


# instance fields
.field private FH:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/HL;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/vM;->FH:I

    return-void
.end method

.method public constructor <init>(Labcd/qL;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/HL;-><init>(Labcd/qL;)V

    const/4 v0, -0x1

    iput v0, p0, Labcd/vM;->FH:I

    return-void
.end method

.method public constructor <init>(Labcd/rL;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/HL;-><init>(Labcd/rL;Z)V

    const/4 v0, -0x1

    iput v0, p0, Labcd/vM;->FH:I

    return-void
.end method

.method constructor <init>(Labcd/rL;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/HL;-><init>(Labcd/rL;Z)V

    const/4 v0, -0x1

    iput v0, p0, Labcd/vM;->FH:I

    return-void
.end method

.method private we()I
    .registers 4

    iget v0, p0, Labcd/vM;->FH:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Labcd/vM;->FH:I

    :cond_0
    iget v0, p0, Labcd/vM;->FH:I

    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->VH()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method j6(Labcd/CL;)V
    .registers 5

    invoke-virtual {p1}, Labcd/CL;->j6()Labcd/CL;

    move-result-object v1

    invoke-direct {p0}, Labcd/vM;->we()I

    move-result v0

    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Labcd/CL;->j6(I)V

    invoke-virtual {p1, v0}, Labcd/CL;->DW(I)V

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-virtual {v1, v0}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_0
.end method

.method v5()I
    .registers 3

    invoke-direct {p0}, Labcd/vM;->we()I

    move-result v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method
