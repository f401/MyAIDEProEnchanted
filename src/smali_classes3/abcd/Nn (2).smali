.class public final Labcd/Nn;
.super Labcd/qo;


# instance fields
.field private final VH:Labcd/ms;

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/hs;",
            "Labcd/Sn;",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;",
            "Labcd/ms;",
            ")V"
        }
    .end annotation

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {p0, p1, v0}, Labcd/qo;-><init>(Labcd/hs;Labcd/cs;)V

    if-eqz p2, :cond_62

    if-eqz p3, :cond_5a

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_52

    iput-object p4, p0, Labcd/Nn;->VH:Labcd/ms;

    sget-object p1, Labcd/Ks;->J0:Labcd/Ks;

    if-eq p4, p1, :cond_44

    sget-object p1, Labcd/Ks;->we:Labcd/Ks;

    if-ne p4, p1, :cond_1a

    goto :goto_44

    :cond_1a
    sget-object p1, Labcd/Ks;->j3:Labcd/Ks;

    if-eq p4, p1, :cond_42

    sget-object p1, Labcd/Ks;->J8:Labcd/Ks;

    if-ne p4, p1, :cond_23

    goto :goto_42

    :cond_23
    sget-object p1, Labcd/Ks;->aM:Labcd/Ks;

    if-eq p4, p1, :cond_40

    sget-object p1, Labcd/Ks;->QX:Labcd/Ks;

    if-ne p4, p1, :cond_2c

    goto :goto_40

    :cond_2c
    sget-object p1, Labcd/Ks;->XL:Labcd/Ks;

    if-eq p4, p1, :cond_3d

    sget-object p1, Labcd/Ks;->Ws:Labcd/Ks;

    if-ne p4, p1, :cond_35

    goto :goto_3d

    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected constant type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    :goto_3d
    const/16 p1, 0x8

    goto :goto_45

    :cond_40
    :goto_40
    const/4 p1, 0x4

    goto :goto_45

    :cond_42
    :goto_42
    const/4 p1, 0x2

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p1, 0x1

    :goto_45
    iput p1, p0, Labcd/Nn;->gn:I

    iput-object p2, p0, Labcd/Nn;->v5:Labcd/Sn;

    iput-object p3, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Labcd/Nn;->u7:I

    return-void

    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal number of init values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "values == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW()I
    .registers 3

    iget v0, p0, Labcd/Nn;->u7:I

    iget v1, p0, Labcd/Nn;->gn:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 6

    new-instance p1, Labcd/Nn;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    iget-object v1, p0, Labcd/Nn;->v5:Labcd/Sn;

    iget-object v2, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    iget-object v3, p0, Labcd/Nn;->VH:Labcd/ms;

    invoke-direct {p1, v0, v1, v2, v3}, Labcd/Nn;-><init>(Labcd/hs;Labcd/Sn;Ljava/util/ArrayList;Labcd/ms;)V

    return-object p1
.end method

.method protected j6()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2f

    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ms;

    invoke-interface {v3}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 5

    iget-object p1, p0, Labcd/Nn;->v5:Labcd/Sn;

    invoke-virtual {p1}, Labcd/Vn;->FH()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_20
    if-ge p1, v1, :cond_41

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ms;

    invoke-interface {v2}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Lt;)V
    .registers 9

    iget-object v0, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x300

    invoke-interface {p1, v1}, Labcd/ku;->writeShort(I)V

    iget v1, p0, Labcd/Nn;->gn:I

    invoke-interface {p1, v1}, Labcd/ku;->writeShort(I)V

    iget v1, p0, Labcd/Nn;->u7:I

    invoke-interface {p1, v1}, Labcd/ku;->writeInt(I)V

    iget v1, p0, Labcd/Nn;->gn:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_66

    if-eq v1, v2, :cond_50

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3b

    const/16 v5, 0x8

    if-eq v1, v5, :cond_26

    goto :goto_7c

    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_7c

    iget-object v5, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Cs;

    invoke-virtual {v5}, Labcd/Cs;->lg()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Labcd/ku;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-ge v1, v0, :cond_7c

    iget-object v5, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Bs;

    invoke-virtual {v5}, Labcd/Bs;->Ws()I

    move-result v5

    invoke-interface {p1, v5}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_50
    const/4 v1, 0x0

    :goto_51
    if-ge v1, v0, :cond_7c

    iget-object v5, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Bs;

    invoke-virtual {v5}, Labcd/Bs;->Ws()I

    move-result v5

    int-to-short v5, v5

    invoke-interface {p1, v5}, Labcd/ku;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_66
    const/4 v1, 0x0

    :goto_67
    if-ge v1, v0, :cond_7c

    iget-object v5, p0, Labcd/Nn;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Bs;

    invoke-virtual {v5}, Labcd/Bs;->Ws()I

    move-result v5

    int-to-byte v5, v5

    invoke-interface {p1, v5}, Labcd/ku;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_7c
    :goto_7c
    iget v1, p0, Labcd/Nn;->gn:I

    if-ne v1, v4, :cond_86

    rem-int/2addr v0, v2

    if-eqz v0, :cond_86

    invoke-interface {p1, v3}, Labcd/ku;->writeByte(I)V

    :cond_86
    return-void
.end method
