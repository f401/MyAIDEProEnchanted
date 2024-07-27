.class public final Labcd/Nn;
.super Labcd/qo;


# instance fields
.field private final VH:Labcd/ms;

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:I

.field private final u7:I

.field private final v5:Labcd/Sn;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/Sn;Ljava/util/ArrayList;Labcd/ms;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/hs;",
            "Labcd/Sn;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/ms;",
            ">;",
            "Labcd/ms;",
            ")V"
        }
    .end annotation

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {p0, p1, v0}, Labcd/qo;-><init>(Labcd/hs;Labcd/cs;)V

    if-eqz p2, :cond_a

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iput-object p4, p0, Labcd/Nn;->VH:Labcd/ms;

    sget-object v0, Labcd/Ks;->J0:Labcd/Ks;

    if-eq p4, v0, :cond_0

    sget-object v0, Labcd/Ks;->we:Labcd/Ks;

    if-ne p4, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Labcd/Nn;->gn:I

    :goto_0
    iput-object p2, p0, Labcd/Nn;->v5:Labcd/Sn;

    iput-object p3, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Labcd/Nn;->u7:I

    return-void

    :cond_1
    sget-object v0, Labcd/Ks;->j3:Labcd/Ks;

    if-eq p4, v0, :cond_2

    sget-object v0, Labcd/Ks;->J8:Labcd/Ks;

    if-ne p4, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Labcd/Nn;->gn:I

    goto :goto_0

    :cond_3
    sget-object v0, Labcd/Ks;->aM:Labcd/Ks;

    if-eq p4, v0, :cond_4

    sget-object v0, Labcd/Ks;->QX:Labcd/Ks;

    if-ne p4, v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Labcd/Nn;->gn:I

    goto :goto_0

    :cond_5
    sget-object v0, Labcd/Ks;->XL:Labcd/Ks;

    if-eq p4, v0, :cond_6

    sget-object v0, Labcd/Ks;->Ws:Labcd/Ks;

    if-ne p4, v0, :cond_7

    :cond_6
    const/16 v0, 0x8

    iput v0, p0, Labcd/Nn;->gn:I

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected constant type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal number of init values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 3

    iget v0, p0, Labcd/Nn;->u7:I

    iget v1, p0, Labcd/Nn;->gn:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 7

    new-instance v0, Labcd/Nn;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    iget-object v2, p0, Labcd/Nn;->v5:Labcd/Sn;

    iget-object v3, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    iget-object v4, p0, Labcd/Nn;->VH:Labcd/ms;

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/Nn;-><init>(Labcd/hs;Labcd/Sn;Ljava/util/ArrayList;Labcd/ms;)V

    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ms;

    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Labcd/Nn;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v1, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    const-string v0, "\n  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ms;

    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Lt;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v0, 0x300

    invoke-interface {p1, v0}, Labcd/ku;->writeShort(I)V

    iget v0, p0, Labcd/Nn;->gn:I

    invoke-interface {p1, v0}, Labcd/ku;->writeShort(I)V

    iget v0, p0, Labcd/Nn;->u7:I

    invoke-interface {p1, v0}, Labcd/ku;->writeInt(I)V

    iget v0, p0, Labcd/Nn;->gn:I

    if-eq v0, v6, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p0, Labcd/Nn;->gn:I

    if-ne v0, v6, :cond_1

    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, Labcd/ku;->writeByte(I)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cs;

    invoke-virtual {v0}, Labcd/Cs;->lg()J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Labcd/ku;->writeLong(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Bs;

    invoke-virtual {v0}, Labcd/Bs;->Ws()I

    move-result v0

    invoke-interface {p1, v0}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Bs;

    invoke-virtual {v0}, Labcd/Bs;->Ws()I

    move-result v0

    int-to-short v0, v0

    invoke-interface {p1, v0}, Labcd/ku;->writeShort(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Bs;

    invoke-virtual {v0}, Labcd/Bs;->Ws()I

    move-result v0

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Labcd/ku;->writeByte(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method
