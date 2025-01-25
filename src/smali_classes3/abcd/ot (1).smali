.class public final Labcd/ot;
.super Labcd/vt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ot$a;
    }
.end annotation


# instance fields
.field private final FH:I

.field private final Hw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/ot$a;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Labcd/cs;


# direct methods
.method public constructor <init>(ILabcd/tt;)V
    .registers 4

    sget-object v0, Labcd/Qs;->tp:Labcd/Qs;

    invoke-static {p1, v0}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Labcd/vt;-><init>(Labcd/bs;Labcd/tt;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    iput p1, p0, Labcd/ot;->FH:I

    return-void
.end method

.method public constructor <init>(Labcd/bs;Labcd/tt;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/vt;-><init>(Labcd/bs;Labcd/tt;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    iput p1, p0, Labcd/ot;->FH:I

    return-void
.end method


# virtual methods
.method public DW(Labcd/bs;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ot$a;

    iget-object v3, v2, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v4

    if-ne v3, v4, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_27
    iget-object p1, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/ot;->v5:Labcd/cs;

    return-void
.end method

.method public final DW(Labcd/qt;)V
    .registers 6

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ot$a;

    iget-object v2, v1, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {p1, v2}, Labcd/qt;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v3

    iput-object v3, v1, Labcd/ot$a;->j6:Labcd/bs;

    iget-object v3, v1, Labcd/ot$a;->j6:Labcd/bs;

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v3

    invoke-virtual {v3}, Labcd/tt;->v5()Labcd/yt;

    move-result-object v3

    iget-object v1, v1, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3, p0, v2, v1}, Labcd/yt;->j6(Labcd/vt;Labcd/bs;Labcd/bs;)V

    goto :goto_6

    :cond_2c
    const/4 p1, 0x0

    iput-object p1, p0, Labcd/ot;->v5:Labcd/cs;

    return-void
.end method

.method public EQ()Z
    .registers 2

    invoke-static {}, Labcd/nt;->DW()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public FH(I)I
    .registers 3

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/ot$a;

    iget p1, p1, Labcd/ot$a;->DW:I

    return p1
.end method

.method public XL()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/ot;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clone()Labcd/ot;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t clone phi"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Labcd/vt;
    .registers 2

    invoke-virtual {p0}, Labcd/ot;->clone()Labcd/ot;

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/ot;->clone()Labcd/ot;

    const/4 v0, 0x0

    throw v0
.end method

.method public gn()Labcd/Tr;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ": phi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_20

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object p1

    const-string v1, " ."

    const-string v2, " "

    if-nez p1, :cond_2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Labcd/bs;->aM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_38
    const-string p1, " <-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/ot;->tp()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result p1

    if-nez p1, :cond_4b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_88

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    if-ge v1, p1, :cond_88

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Labcd/ot;->v5:Labcd/cs;

    invoke-virtual {v4, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[b="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/ot$a;

    iget v4, v4, Labcd/ot$a;->FH:I

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_88
    :goto_88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILabcd/yt;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Labcd/yt;",
            ")",
            "Ljava/util/List<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ot$a;

    iget-object v3, v2, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    if-ne v3, p1, :cond_b

    invoke-virtual {p2}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v3

    iget v2, v2, Labcd/ot$a;->DW:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2d
    return-object v0
.end method

.method public j6(Labcd/Rs;Labcd/Vr;)V
    .registers 4

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0, p1, p2}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/vt;->j6(Labcd/bs;)V

    return-void
.end method

.method public j6(Labcd/bs;Labcd/tt;)V
    .registers 6

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    new-instance v1, Labcd/ot$a;

    invoke-virtual {p2}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {p2}, Labcd/tt;->EQ()I

    move-result p2

    invoke-direct {v1, p1, v2, p2}, Labcd/ot$a;-><init>(Labcd/bs;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/ot;->v5:Labcd/cs;

    return-void
.end method

.method public j6(Labcd/vt$a;)V
    .registers 2

    invoke-interface {p1, p0}, Labcd/vt$a;->j6(Labcd/ot;)V

    return-void
.end method

.method public j6(Labcd/yt;)V
    .registers 6

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ot$a;

    iget-object v2, v1, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    iget-object v3, v1, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v2}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object v2

    iput-object v2, v1, Labcd/ot$a;->j6:Labcd/bs;

    goto :goto_6

    :cond_2d
    const/4 p1, 0x0

    iput-object p1, p0, Labcd/ot;->v5:Labcd/cs;

    return-void
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lg()Labcd/Tr;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert phi insns to rop form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rN()I
    .registers 2

    iget v0, p0, Labcd/ot;->FH:I

    return v0
.end method

.method public tp()Labcd/cs;
    .registers 5

    iget-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    return-object v0

    :cond_10
    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Labcd/cs;

    invoke-direct {v1, v0}, Labcd/cs;-><init>(I)V

    iput-object v1, p0, Labcd/ot;->v5:Labcd/cs;

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    iget-object v2, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ot$a;

    iget-object v3, p0, Labcd/ot;->v5:Labcd/cs;

    iget-object v2, v2, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3, v1, v2}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    iget-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    invoke-virtual {v0}, Labcd/hu;->we()V

    iget-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    return-object v0
.end method

.method public v5()Labcd/es;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
