.class public Labcd/UL;
.super Labcd/FL;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/FL;-><init>()V

    return-void
.end method

.method public constructor <init>(Labcd/qL;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/FL;-><init>(Labcd/qL;)V

    return-void
.end method

.method public constructor <init>(Labcd/rL;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/FL;-><init>(Labcd/rL;)V

    return-void
.end method


# virtual methods
.method j6(Labcd/CL;)V
    .registers 4

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    invoke-virtual {p0}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    return-void

    :cond_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/qL;

    invoke-virtual {p1, v1}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_e
.end method

.method v5()I
    .registers 4

    invoke-virtual {p0}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_10

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_10
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/qL;

    invoke-interface {v2}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/EL;->v5()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5
.end method
