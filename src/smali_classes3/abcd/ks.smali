.class public final Labcd/ks;
.super Labcd/Tr;


# instance fields
.field private final v5:Labcd/Ss;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Labcd/Tr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_18

    if-eqz p4, :cond_10

    iput-object p4, p0, Labcd/ks;->v5:Labcd/Ss;

    return-void

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Labcd/Ss;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "catch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Labcd/Ss;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_26

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0, v2}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/Ss;
    .registers 2

    iget-object v0, p0, Labcd/ks;->v5:Labcd/Ss;

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/ks;->v5:Labcd/Ss;

    invoke-static {v0}, Labcd/ks;->j6(Labcd/Ss;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Qs;)Labcd/Tr;
    .registers 7

    new-instance v0, Labcd/ks;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v3

    iget-object v4, p0, Labcd/ks;->v5:Labcd/Ss;

    invoke-interface {v4, p1}, Labcd/Ss;->j6(Labcd/Qs;)Labcd/Ss;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    return-object v0
.end method

.method public j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
    .registers 6

    new-instance p1, Labcd/ks;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    iget-object v2, p0, Labcd/ks;->v5:Labcd/Ss;

    invoke-direct {p1, v0, v1, p2, v2}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    return-object p1
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/ks;)V

    return-void
.end method
