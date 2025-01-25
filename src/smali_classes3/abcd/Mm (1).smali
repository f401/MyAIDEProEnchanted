.class public final Labcd/Mm;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/un;


# instance fields
.field private final DW:Labcd/Js;

.field private final FH:Z

.field private final Hw:Labcd/jm;

.field private final Zo:Labcd/Qm;

.field private final j6:Labcd/un;

.field private final v5:Labcd/Pm;


# direct methods
.method public constructor <init>(Labcd/un;ILabcd/Js;ZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Mm;->j6:Labcd/un;

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    iput-boolean p2, p0, Labcd/Mm;->FH:Z

    iput-object p3, p0, Labcd/Mm;->DW:Labcd/Js;

    invoke-interface {p1}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object p1

    const-string p2, "Code"

    invoke-interface {p1, p2}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p1

    check-cast p1, Labcd/jm;

    iput-object p1, p0, Labcd/Mm;->Hw:Labcd/jm;

    invoke-virtual {p1}, Labcd/jm;->j6()Labcd/pn;

    move-result-object p1

    sget-object p2, Labcd/Pm;->FH:Labcd/Pm;

    if-eqz p4, :cond_3d

    const-string p3, "LineNumberTable"

    invoke-interface {p1, p3}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p3

    :goto_2c
    check-cast p3, Labcd/pm;

    if-eqz p3, :cond_3d

    invoke-virtual {p3}, Labcd/pm;->j6()Labcd/Pm;

    move-result-object p4

    invoke-static {p2, p4}, Labcd/Pm;->j6(Labcd/Pm;Labcd/Pm;)Labcd/Pm;

    move-result-object p2

    invoke-interface {p1, p3}, Labcd/pn;->j6(Labcd/on;)Labcd/on;

    move-result-object p3

    goto :goto_2c

    :cond_3d
    iput-object p2, p0, Labcd/Mm;->v5:Labcd/Pm;

    sget-object p2, Labcd/Qm;->FH:Labcd/Qm;

    if-eqz p5, :cond_7d

    const-string p3, "LocalVariableTable"

    invoke-interface {p1, p3}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p3

    :goto_49
    check-cast p3, Labcd/qm;

    if-eqz p3, :cond_5a

    invoke-virtual {p3}, Labcd/Bm;->j6()Labcd/Qm;

    move-result-object p4

    invoke-static {p2, p4}, Labcd/Qm;->j6(Labcd/Qm;Labcd/Qm;)Labcd/Qm;

    move-result-object p2

    invoke-interface {p1, p3}, Labcd/pn;->j6(Labcd/on;)Labcd/on;

    move-result-object p3

    goto :goto_49

    :cond_5a
    sget-object p3, Labcd/Qm;->FH:Labcd/Qm;

    const-string p4, "LocalVariableTypeTable"

    invoke-interface {p1, p4}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p4

    :goto_62
    check-cast p4, Labcd/rm;

    if-eqz p4, :cond_73

    invoke-virtual {p4}, Labcd/Bm;->j6()Labcd/Qm;

    move-result-object p5

    invoke-static {p3, p5}, Labcd/Qm;->j6(Labcd/Qm;Labcd/Qm;)Labcd/Qm;

    move-result-object p3

    invoke-interface {p1, p4}, Labcd/pn;->j6(Labcd/on;)Labcd/on;

    move-result-object p4

    goto :goto_62

    :cond_73
    invoke-virtual {p3}, Labcd/Xt;->size()I

    move-result p1

    if-eqz p1, :cond_7d

    invoke-static {p2, p3}, Labcd/Qm;->DW(Labcd/Qm;Labcd/Qm;)Labcd/Qm;

    move-result-object p2

    :cond_7d
    iput-object p2, p0, Labcd/Mm;->Zo:Labcd/Qm;

    return-void
.end method

.method public constructor <init>(Labcd/un;Labcd/qn;ZZ)V
    .registers 11

    invoke-interface {p2}, Labcd/qn;->j6()I

    move-result v2

    invoke-interface {p2}, Labcd/qn;->DW()Labcd/Js;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/Mm;-><init>(Labcd/un;ILabcd/Js;ZZ)V

    return-void
.end method


# virtual methods
.method public DW()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->j6:Labcd/un;

    invoke-interface {v0}, Labcd/tn;->DW()Labcd/Ks;

    move-result-object v0

    return-object v0
.end method

.method public EQ()I
    .registers 2

    iget-object v0, p0, Labcd/Mm;->Hw:Labcd/jm;

    invoke-virtual {v0}, Labcd/jm;->Zo()I

    move-result v0

    return v0
.end method

.method public FH()Labcd/Hs;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->j6:Labcd/un;

    invoke-interface {v0}, Labcd/tn;->FH()Labcd/Hs;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->j6:Labcd/un;

    invoke-interface {v0}, Labcd/tn;->Hw()Labcd/Js;

    move-result-object v0

    return-object v0
.end method

.method public VH()Labcd/Jm;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->Hw:Labcd/jm;

    invoke-virtual {v0}, Labcd/jm;->DW()Labcd/Jm;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Mm;->FH:Z

    return v0
.end method

.method public getAttributes()Labcd/pn;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->j6:Labcd/un;

    invoke-interface {v0}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object v0

    return-object v0
.end method

.method public getName()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->j6:Labcd/un;

    invoke-interface {v0}, Labcd/tn;->getName()Labcd/Js;

    move-result-object v0

    return-object v0
.end method

.method public gn()Labcd/Lm;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->Hw:Labcd/jm;

    invoke-virtual {v0}, Labcd/jm;->FH()Labcd/Lm;

    move-result-object v0

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/Mm;->j6:Labcd/un;

    invoke-interface {v0}, Labcd/tn;->j6()I

    move-result v0

    return v0
.end method

.method public j6(I)Labcd/hs;
    .registers 5

    new-instance v0, Labcd/hs;

    iget-object v1, p0, Labcd/Mm;->DW:Labcd/Js;

    iget-object v2, p0, Labcd/Mm;->v5:Labcd/Pm;

    invoke-virtual {v2, p1}, Labcd/Pm;->Hw(I)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Labcd/hs;-><init>(Labcd/Js;II)V

    return-object v0
.end method

.method public tp()I
    .registers 2

    iget-object v0, p0, Labcd/Mm;->Hw:Labcd/jm;

    invoke-virtual {v0}, Labcd/jm;->v5()I

    move-result v0

    return v0
.end method

.method public u7()Labcd/Qm;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->Zo:Labcd/Qm;

    return-object v0
.end method

.method public v5()Labcd/Os;
    .registers 2

    iget-object v0, p0, Labcd/Mm;->j6:Labcd/un;

    invoke-interface {v0}, Labcd/un;->v5()Labcd/Os;

    move-result-object v0

    return-object v0
.end method
