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
            "Ljava/util/ArrayList",
            "<",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    iput p1, p0, Labcd/ot;->FH:I

    return-void
.end method

.method public constructor <init>(Labcd/bs;Labcd/tt;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/vt;-><init>(Labcd/bs;Labcd/tt;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iput v0, p0, Labcd/ot;->FH:I

    return-void
.end method


# virtual methods
.method public DW(Labcd/bs;)V
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ot$a;

    iget-object v3, v0, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    return-void
.end method

.method public final DW(Labcd/qt;)V
    .registers 6

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ot$a;

    iget-object v2, v0, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {p1, v2}, Labcd/qt;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v3

    iput-object v3, v0, Labcd/ot$a;->j6:Labcd/bs;

    iget-object v3, v0, Labcd/ot$a;->j6:Labcd/bs;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Labcd/vt;->DW()Labcd/tt;

    move-result-object v3

    invoke-virtual {v3}, Labcd/tt;->v5()Labcd/yt;

    move-result-object v3

    iget-object v0, v0, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3, p0, v2, v0}, Labcd/yt;->j6(Labcd/vt;Labcd/bs;Labcd/bs;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    return-void
.end method

.method public EQ()Z
    .registers 2

    invoke-static {}, Labcd/nt;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public FH(I)I
    .registers 3

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ot$a;

    iget v0, v0, Labcd/ot$a;->DW:I

    return v0
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

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x50

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v0, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ": phi"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, " <-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/ot;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v3

    if-nez v3, :cond_3

    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Labcd/bs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[b="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ot$a;

    iget v0, v0, Labcd/ot$a;->FH:I

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public j6(ILabcd/yt;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Labcd/yt;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ot$a;

    iget-object v3, v0, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p2}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v3

    iget v0, v0, Labcd/ot$a;->DW:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public j6(Labcd/Rs;Labcd/Vr;)V
    .registers 4

    invoke-virtual {p0}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0, p1, p2}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/vt;->j6(Labcd/bs;)V

    return-void
.end method

.method public j6(Labcd/bs;Labcd/tt;)V
    .registers 7

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    new-instance v1, Labcd/ot$a;

    invoke-virtual {p2}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {p2}, Labcd/tt;->EQ()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Labcd/ot$a;-><init>(Labcd/bs;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ot;->v5:Labcd/cs;

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

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ot$a;

    iget-object v2, v0, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v2

    invoke-virtual {v2}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    iget-object v3, v0, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v2}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object v2

    iput-object v2, v0, Labcd/ot$a;->j6:Labcd/bs;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/ot;->v5:Labcd/cs;

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

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Labcd/cs;

    invoke-direct {v0, v2}, Labcd/cs;-><init>(I)V

    iput-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Labcd/ot;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ot$a;

    iget-object v3, p0, Labcd/ot;->v5:Labcd/cs;

    iget-object v0, v0, Labcd/ot$a;->j6:Labcd/bs;

    invoke-virtual {v3, v1, v0}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    invoke-virtual {v0}, Labcd/hu;->we()V

    iget-object v0, p0, Labcd/ot;->v5:Labcd/cs;

    goto :goto_0
.end method

.method public v5()Labcd/es;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
