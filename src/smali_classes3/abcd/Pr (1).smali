.class public abstract Labcd/Pr;
.super Labcd/Tr;


# instance fields
.field private final v5:Labcd/ms;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Tr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    if-eqz p5, :cond_8

    iput-object p5, p0, Labcd/Pr;->v5:Labcd/ms;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Pr;->v5:Labcd/ms;

    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Tr;)Z
    .registers 3

    invoke-super {p0, p1}, Labcd/Tr;->j6(Labcd/Tr;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Labcd/Pr;->v5:Labcd/ms;

    check-cast p1, Labcd/Pr;

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public tp()Labcd/ms;
    .registers 2

    iget-object v0, p0, Labcd/Pr;->v5:Labcd/ms;

    return-object v0
.end method
