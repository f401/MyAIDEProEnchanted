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

    iget-object v0, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->Zo()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    return-object v1

    :cond_a
    iget-object v2, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v2}, Labcd/lo;->v5(Labcd/lo;)Labcd/fs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v2

    invoke-virtual {v2, v0}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_2e

    return-object v1

    :cond_2e
    invoke-virtual {v0}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    return-object v0
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

    if-ne v3, v4, :cond_45

    new-instance v3, Labcd/Sn;

    invoke-direct {v3, v0}, Labcd/Sn;-><init>(Labcd/hs;)V

    new-instance v4, Labcd/Nn;

    iget-object v5, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-direct {v4, v0, v5, v2, v1}, Labcd/Nn;-><init>(Labcd/hs;Labcd/Sn;Ljava/util/ArrayList;Labcd/ms;)V

    new-instance v1, Labcd/po;

    sget-object v2, Labcd/Yn;->ef:Labcd/Xn;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1, v3}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object p1, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, p1}, Labcd/lo$b;->j6(Labcd/Vn;)V

    invoke-virtual {p0, v1}, Labcd/lo$b;->j6(Labcd/Vn;)V

    new-instance p1, Labcd/fo;

    invoke-direct {p1, v0}, Labcd/fo;-><init>(Labcd/hs;)V

    invoke-virtual {p0, p1}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v3}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v4}, Labcd/lo$b;->DW(Labcd/Vn;)V

    return-void

    :cond_45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected j6(Labcd/Vn;)V
    .registers 3

    iget-object v0, p0, Labcd/lo$b;->j6:Labcd/go;

    invoke-virtual {v0, p1}, Labcd/go;->j6(Labcd/Vn;)V

    return-void
.end method

.method public j6(Labcd/Yr;)V
    .registers 8

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v0

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v3

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_64

    const/4 v2, 0x3

    if-ne v3, v2, :cond_53

    iget-object v2, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v2}, Labcd/lo;->DW(Labcd/lo;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/ys;

    invoke-virtual {p1}, Labcd/ys;->rN()I

    move-result p1

    new-instance v3, Labcd/mo;

    iget-object v4, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v4}, Labcd/lo;->FH(Labcd/lo;)I

    move-result v4

    iget-object v5, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v5}, Labcd/lo;->Hw(Labcd/lo;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p1

    invoke-virtual {v2}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object p1

    invoke-static {v4, p1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object p1

    invoke-static {v2, p1}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    invoke-virtual {p0, v3}, Labcd/lo$b;->j6(Labcd/Vn;)V

    goto :goto_63

    :cond_53
    new-instance v2, Labcd/Tn;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object p1

    invoke-direct {v2, v1, v0, v3, p1}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {p0, v2}, Labcd/lo$b;->j6(Labcd/Vn;)V

    :cond_63
    :goto_63
    return-void

    :cond_64
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Zr;)V
    .registers 7

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v2

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_59

    const/4 v4, 0x2

    if-eq v0, v4, :cond_59

    const/4 v4, 0x3

    if-eq v0, v4, :cond_58

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3a

    const/4 v3, 0x6

    if-ne v0, v3, :cond_32

    goto :goto_59

    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    iget-object v0, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/au;->get(I)I

    move-result v0

    new-instance v3, Labcd/po;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object p1

    iget-object v4, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v4}, Labcd/lo;->j6(Labcd/lo;)Labcd/On;

    move-result-object v4

    invoke-virtual {v4, v0}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v0

    invoke-direct {v3, v2, v1, p1, v0}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    goto :goto_62

    :cond_58
    return-void

    :cond_59
    :goto_59
    new-instance v3, Labcd/mo;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object p1

    invoke-direct {v3, v2, v1, p1}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    :goto_62
    invoke-virtual {p0, v3}, Labcd/lo$b;->j6(Labcd/Vn;)V

    return-void
.end method

.method public j6(Labcd/is;)V
    .registers 10

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v0

    invoke-virtual {p1}, Labcd/is;->tp()Labcd/au;

    move-result-object v1

    iget-object v2, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v2}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v2

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v3

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v4

    iget-object v5, p0, Labcd/lo$b;->DW:Labcd/Nr;

    invoke-virtual {v5}, Labcd/Nr;->Zo()I

    move-result v5

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_75

    invoke-virtual {v2, v3}, Labcd/au;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_75

    new-array v4, v3, [Labcd/Sn;

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v3, :cond_3e

    invoke-virtual {v2, v5}, Labcd/au;->get(I)I

    move-result v6

    iget-object v7, p0, Labcd/lo$b;->Hw:Labcd/lo;

    invoke-static {v7}, Labcd/lo;->j6(Labcd/lo;)Labcd/On;

    move-result-object v7

    invoke-virtual {v7, v6}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_3e
    new-instance v2, Labcd/Sn;

    invoke-direct {v2, v0}, Labcd/Sn;-><init>(Labcd/hs;)V

    new-instance v3, Labcd/oo;

    iget-object v5, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-direct {v3, v0, v5, v1, v4}, Labcd/oo;-><init>(Labcd/hs;Labcd/Sn;Labcd/au;[Labcd/Sn;)V

    invoke-virtual {v3}, Labcd/oo;->we()Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v1, Labcd/Yn;->I:Labcd/Xn;

    goto :goto_55

    :cond_53
    sget-object v1, Labcd/Yn;->ca:Labcd/Xn;

    :goto_55
    new-instance v4, Labcd/po;

    invoke-static {p1}, Labcd/lo;->j6(Labcd/Tr;)Labcd/cs;

    move-result-object p1

    invoke-direct {v4, v1, v0, p1, v2}, Labcd/po;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/Sn;)V

    iget-object p1, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, p1}, Labcd/lo$b;->j6(Labcd/Vn;)V

    invoke-virtual {p0, v4}, Labcd/lo$b;->j6(Labcd/Vn;)V

    new-instance p1, Labcd/fo;

    invoke-direct {p1, v0}, Labcd/fo;-><init>(Labcd/hs;)V

    invoke-virtual {p0, p1}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v2}, Labcd/lo$b;->DW(Labcd/Vn;)V

    invoke-virtual {p0, v3}, Labcd/lo$b;->DW(Labcd/Vn;)V

    return-void

    :cond_75
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7e

    :goto_7d
    throw p1

    :goto_7e
    goto :goto_7d
.end method

.method public j6(Labcd/js;)V
    .registers 12

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v0

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v3

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_87

    iget-object v4, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, v4}, Labcd/lo$b;->j6(Labcd/Vn;)V

    invoke-virtual {v2}, Labcd/es;->VH()Z

    move-result v4

    if-eqz v4, :cond_2f

    new-instance v2, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object p1

    invoke-direct {v2, v1, v0, p1, v3}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {p0, v2}, Labcd/lo$b;->j6(Labcd/Vn;)V

    goto :goto_6f

    :cond_2f
    invoke-direct {p0}, Labcd/lo$b;->j6()Labcd/bs;

    move-result-object v4

    invoke-static {p1, v4}, Labcd/lo;->j6(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object v5

    invoke-virtual {v1}, Labcd/Xn;->VH()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_4a

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v6, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v6, 0x1

    :goto_4b
    if-eqz v4, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v7, 0x0

    :goto_4f
    if-ne v6, v7, :cond_70

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_67

    invoke-virtual {v1}, Labcd/Xn;->v5()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_67

    new-instance p1, Labcd/mo;

    invoke-direct {p1, v1, v0, v5}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    goto :goto_6c

    :cond_67
    new-instance p1, Labcd/Tn;

    invoke-direct {p1, v1, v0, v5, v3}, Labcd/Tn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;Labcd/ms;)V

    :goto_6c
    invoke-virtual {p0, p1}, Labcd/lo$b;->j6(Labcd/Vn;)V

    :goto_6f
    return-void

    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_87
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/ks;)V
    .registers 7

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v0

    invoke-static {p1}, Labcd/jo;->j6(Labcd/Tr;)Labcd/Xn;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4b

    invoke-direct {p0}, Labcd/lo$b;->j6()Labcd/bs;

    move-result-object v2

    invoke-virtual {v1}, Labcd/Xn;->VH()Z

    move-result v3

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    if-ne v3, v4, :cond_34

    iget-object v3, p0, Labcd/lo$b;->FH:Labcd/Sn;

    invoke-virtual {p0, v3}, Labcd/lo$b;->j6(Labcd/Vn;)V

    new-instance v3, Labcd/mo;

    invoke-static {p1, v2}, Labcd/lo;->j6(Labcd/Tr;Labcd/bs;)Labcd/cs;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    invoke-virtual {p0, v3}, Labcd/lo$b;->j6(Labcd/Vn;)V

    return-void

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
