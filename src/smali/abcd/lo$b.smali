.class Labcd/lo$b;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Tr$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private DW:Labcd/Nr;

.field private FH:Labcd/Sn;

.field final Hw:Labcd/lo;

.field private final j6:Labcd/go;


# direct methods
.method public constructor <init>(Labcd/lo;Labcd/go;)V
    .registers 3

    iput-object p1, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/lo$b;->j6:Labcd/go;

    return-void
.end method

.method private j6()Labcd/bs;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v1}, Labcd/Nr;->Zo()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v2}, Labcd/lo;->v5(Labcd/lo;)Labcd/fs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v2

    invoke-virtual {v2, v1}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected DW(Labcd/Vn;)V
    .registers 3

    iget-object v0, p0, Labcd/lo$b;->j6:Labcd/go;

    invoke-virtual {v0, p1}, Labcd/go;->DW(Labcd/Vn;)V

    return-void
.end method

.method public j6(Labcd/Nr;Labcd/Sn;)V
    .registers 3

    iput-object p1, p0, Labcd/lo$b;->DW:Labcd/Nr;

    iput-object p2, p0, Labcd/lo$b;->FH:Labcd/Sn;

    return-void
.end method

.method public j6(Labcd/Sr;)V
    .registers 8

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Sr;->tp()Labcd/ms;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sr;->EQ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v3

    invoke-virtual {v3}, Labcd/es;->DW()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Labcd/Sn;

    invoke-direct {v3, v0}, Labcd/Sn;-><init>(Labcd/hs;)V

    new-instance v4, Labcd/Nn;

    iget-object v5, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-direct {v4, v0, v5, v2, v1}, Labcd/Nn;-><init>(Labcd/hs;Labcd/Sn;Ljava/util/ArrayList;Labcd/ms;)V

    new-instance v1, Labcd/po;

    sget-object v2, Labcd/Yn;->ef:Labcd/Xn;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5, v3}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object v2, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, v2}, Labcd/lo$b;->j6(Labcd/Vn;)V

    invoke-virtual {p0, v1}, Labcd/lo$b;->j6(Labcd/Vn;)V

    new-instance v1, Labcd/fo;

    invoke-direct {v1, v0}, Labcd/fo;-><init>(Labcd/hs;)V

    invoke-virtual {p0, v1}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v3}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v4}, Labcd/lo$b;->DW(Labcd/Vn;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected j6(Labcd/Vn;)V
    .registers 3

    iget-object v0, p0, Labcd/lo$b;->j6:Labcd/go;

    invoke-virtual {v0, p1}, Labcd/go;->j6(Labcd/Vn;)V

    return-void
.end method

.method public j6(Labcd/Yr;)V
    .registers 9

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v3

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v0}, Labcd/lo;->DW(Labcd/lo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    new-instance v4, Labcd/mo;

    iget-object v5, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v5}, Labcd/lo;->FH(Labcd/lo;)I

    move-result v5

    iget-object v6, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v6}, Labcd/lo;->Hw(Labcd/lo;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    invoke-virtual {v3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v5

    invoke-static {v0, v5}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v0

    invoke-static {v3, v0}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v0

    invoke-direct {v4, v2, v1, v0}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    invoke-virtual {p0, v4}, Labcd/lo$b;->j6(Labcd/Vn;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Labcd/Tn;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {p0, v0}, Labcd/lo$b;->j6(Labcd/Vn;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/Zr;)V
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v2

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    :cond_2
    new-instance v0, Labcd/mo;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    :goto_1
    invoke-virtual {p0, v0}, Labcd/lo$b;->j6(Labcd/Vn;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v4}, Labcd/au;->get(I)I

    move-result v3

    new-instance v0, Labcd/po;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object v4

    iget-object v5, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v5}, Labcd/lo;->j6(Labcd/lo;)Labcd/On;

    move-result-object v5

    invoke-virtual {v5, v3}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v3

    invoke-direct {v0, v2, v1, v4, v3}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    goto :goto_1
.end method

.method public j6(Labcd/is;)V
    .registers 10

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    invoke-virtual {p1}, Labcd/is;->tp()Labcd/au;

    move-result-object v2

    iget-object v0, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v3

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v4

    invoke-virtual {v3}, Labcd/au;->size()I

    move-result v0

    iget-object v5, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v5}, Labcd/Nr;->Zo()I

    move-result v5

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_2

    invoke-virtual {v3, v4}, Labcd/au;->get(I)I

    move-result v0

    if-ne v5, v0, :cond_2

    new-array v5, v4, [Labcd/Sn;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Labcd/au;->get(I)I

    move-result v6

    iget-object v7, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v7}, Labcd/lo;->j6(Labcd/lo;)Labcd/On;

    move-result-object v7

    invoke-virtual {v7, v6}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Labcd/Sn;

    invoke-direct {v3, v1}, Labcd/Sn;-><init>(Labcd/hs;)V

    new-instance v4, Labcd/oo;

    iget-object v0, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-direct {v4, v1, v0, v2, v5}, Labcd/oo;-><init>(Labcd/hs;Labcd/Sn;Labcd/au;[Labcd/Sn;)V

    invoke-virtual {v4}, Labcd/oo;->we()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Labcd/Yn;->I:Labcd/Xn;

    :goto_1
    new-instance v2, Labcd/po;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object v5

    invoke-direct {v2, v0, v1, v5, v3}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object v0, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, v0}, Labcd/lo$b;->j6(Labcd/Vn;)V

    invoke-virtual {p0, v2}, Labcd/lo$b;->j6(Labcd/Vn;)V

    new-instance v0, Labcd/fo;

    invoke-direct {v0, v1}, Labcd/fo;-><init>(Labcd/hs;)V

    invoke-virtual {p0, v0}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v3}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v4}, Labcd/lo$b;->DW(Labcd/Vn;)V

    return-void

    :cond_1
    sget-object v0, Labcd/Yn;->ca:Labcd/Xn;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/js;)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v3

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v4

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v5

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v6

    invoke-virtual {v5}, Labcd/es;->DW()I

    move-result v2

    const/4 v7, 0x6

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, v2}, Labcd/lo$b;->j6(Labcd/Vn;)V

    invoke-virtual {v5}, Labcd/es;->VH()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v1

    invoke-direct {v0, v4, v3, v1, v6}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {p0, v0}, Labcd/lo$b;->j6(Labcd/Vn;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Labcd/lo$b;->j6()Labcd/bs;

    move-result-object v7

    invoke-static {p1, v7}, Labcd/lo;->j6(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object v8

    invoke-virtual {v4}, Labcd/Xn;->VH()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5}, Labcd/es;->Hw()I

    move-result v2

    const/16 v9, 0x2b

    if-ne v2, v9, :cond_2

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v7, :cond_6

    :goto_2
    if-ne v2, v0, :cond_4

    invoke-virtual {v5}, Labcd/es;->Hw()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_3

    invoke-virtual {v4}, Labcd/Xn;->v5()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    new-instance v0, Labcd/mo;

    invoke-direct {v0, v4, v3, v8}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    :goto_3
    invoke-virtual {p0, v0}, Labcd/lo$b;->j6(Labcd/Vn;)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    new-instance v0, Labcd/Tn;

    invoke-direct {v0, v4, v3, v8, v6}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public j6(Labcd/ks;)V
    .registers 7

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Labcd/lo$b;->j6()Labcd/bs;

    move-result-object v3

    invoke-virtual {v2}, Labcd/Xn;->VH()Z

    move-result v4

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v4, v0, :cond_1

    iget-object v0, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, v0}, Labcd/lo$b;->j6(Labcd/Vn;)V

    new-instance v0, Labcd/mo;

    invoke-static {p1, v3}, Labcd/lo;->j6(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    invoke-virtual {p0, v0}, Labcd/lo$b;->j6(Labcd/Vn;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
