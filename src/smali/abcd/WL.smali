.class public Labcd/WL;
.super Labcd/HL;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/HL;-><init>()V

    return-void
.end method

.method public constructor <init>(Labcd/qL;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/HL;-><init>(Labcd/qL;)V

    return-void
.end method

.method public constructor <init>(Labcd/rL;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/HL;-><init>(Labcd/rL;Z)V

    return-void
.end method

.method public constructor <init>([Labcd/qL;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/HL;-><init>([Labcd/qL;Z)V

    return-void
.end method


# virtual methods
.method j6(Labcd/CL;)V
    .registers 5

    const/4 v2, 0x0

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Labcd/CL;->j6(I)V

    invoke-virtual {p1, v2}, Labcd/CL;->j6(I)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-virtual {p1, v0}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_0
.end method

.method v5()I
    .registers 4

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
