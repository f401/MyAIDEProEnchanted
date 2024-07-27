.class public final Labcd/ks;
.super Labcd/Tr;


# instance fields
.field private final v5:Labcd/Ss;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Labcd/Tr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Labcd/ks;->v5:Labcd/Ss;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/Ss;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "catch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Labcd/Ss;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0, v0}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    return-object v0
.end method

.method public j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
    .registers 7

    new-instance v0, Labcd/ks;

    invoke-virtual {p0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v2

    iget-object v3, p0, Labcd/ks;->v5:Labcd/Ss;

    invoke-direct {v0, v1, v2, p2, v3}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    return-object v0
.end method

.method public j6(Labcd/Tr$b;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/Tr$b;->j6(Labcd/ks;)V

    return-void
.end method
