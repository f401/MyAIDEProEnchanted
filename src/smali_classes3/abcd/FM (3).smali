.class public Labcd/FM;
.super Labcd/HL;


# instance fields
.field private FH:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/HL;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/FM;->FH:I

    return-void
.end method

.method public constructor <init>(Labcd/qL;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/HL;-><init>(Labcd/qL;)V

    const/4 p1, -0x1

    iput p1, p0, Labcd/FM;->FH:I

    return-void
.end method

.method public constructor <init>(Labcd/rL;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/HL;-><init>(Labcd/rL;Z)V

    const/4 p1, -0x1

    iput p1, p0, Labcd/FM;->FH:I

    return-void
.end method

.method public constructor <init>([Labcd/qL;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/HL;-><init>([Labcd/qL;Z)V

    const/4 p1, -0x1

    iput p1, p0, Labcd/FM;->FH:I

    return-void
.end method

.method private we()I
    .registers 4

    iget v0, p0, Labcd/FM;->FH:I

    if-gez v0, :cond_26

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_12

    iput v1, p0, Labcd/FM;->FH:I

    goto :goto_26

    :cond_12
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/qL;

    invoke-interface {v2}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/EL;->v5()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_9

    :cond_26
    :goto_26
    iget v0, p0, Labcd/FM;->FH:I

    return v0
.end method


# virtual methods
.method j6(Labcd/CL;)V
    .registers 5

    invoke-virtual {p1}, Labcd/CL;->DW()Labcd/CL;

    move-result-object v0

    invoke-direct {p0}, Labcd/FM;->we()I

    move-result v1

    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Labcd/CL;->j6(I)V

    invoke-virtual {p1, v1}, Labcd/CL;->DW(I)V

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/qL;

    invoke-virtual {v0, v1}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_14
.end method

.method v5()I
    .registers 3

    invoke-direct {p0}, Labcd/FM;->we()I

    move-result v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
