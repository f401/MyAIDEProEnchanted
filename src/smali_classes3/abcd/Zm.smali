.class public final Labcd/Zm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Zm$a;,
        Labcd/Zm$b;,
        Labcd/Zm$c;
    }
.end annotation


# instance fields
.field private final DW:Labcd/Im;

.field private EQ:Z

.field private final FH:I

.field private final Hw:I

.field private J0:Z

.field private final VH:[Labcd/Om;

.field private final Zo:Labcd/bn;

.field private final gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Nr;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/Mm;

.field private final tp:[Labcd/Qs;

.field private final u7:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/au;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/_m;

.field private final we:[Labcd/Zm$b;


# direct methods
.method private constructor <init>(Labcd/Mm;Labcd/ls;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6a

    if-eqz p2, :cond_62

    iput-object p1, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-static {p1}, Labcd/Gm;->j6(Labcd/Mm;)Labcd/Im;

    move-result-object v0

    iput-object v0, p0, Labcd/Zm;->DW:Labcd/Im;

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v1

    iput v1, p0, Labcd/Zm;->Hw:I

    invoke-virtual {p1}, Labcd/Mm;->tp()I

    move-result v2

    iput v2, p0, Labcd/Zm;->FH:I

    new-instance v3, Labcd/_m;

    invoke-direct {v3, p0, p1, p2}, Labcd/_m;-><init>(Labcd/Zm;Labcd/Mm;Labcd/ls;)V

    iput-object v3, p0, Labcd/Zm;->v5:Labcd/_m;

    new-instance p2, Labcd/bn;

    invoke-direct {p2, v3, p1}, Labcd/bn;-><init>(Labcd/Tm;Labcd/Mm;)V

    iput-object p2, p0, Labcd/Zm;->Zo:Labcd/bn;

    new-array p2, v1, [Labcd/Om;

    iput-object p2, p0, Labcd/Zm;->VH:[Labcd/Om;

    new-array v3, v1, [Labcd/Zm$b;

    iput-object v3, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    new-array v0, v1, [Labcd/Qs;

    iput-object v0, p0, Labcd/Zm;->tp:[Labcd/Qs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Zm;->EQ:Z

    new-instance v1, Labcd/Om;

    invoke-virtual {p1}, Labcd/Mm;->EQ()I

    move-result p1

    invoke-direct {v1, v2, p1}, Labcd/Om;-><init>(II)V

    aput-object v1, p2, v0

    return-void

    :cond_62
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "advice == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(I)I
    .registers 3

    iget v0, p0, Labcd/Zm;->Hw:I

    mul-int/lit8 v0, v0, 0x2

    xor-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic DW(Labcd/Zm;I)Labcd/Zm$b;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Zm;->Zo(I)Labcd/Zm$b;

    move-result-object p0

    return-object p0
.end method

.method private DW()V
    .registers 10

    iget-object v0, p0, Labcd/Zm;->tp:[Labcd/Qs;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_5f

    iget-object v3, p0, Labcd/Zm;->tp:[Labcd/Qs;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5c

    invoke-direct {p0, v2}, Labcd/Zm;->FH(I)Labcd/Nr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Nr;->FH()Labcd/Tr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v4

    new-instance v5, Labcd/Ur;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Labcd/Ur;-><init>(I)V

    new-instance v6, Labcd/Zr;

    invoke-static {v3}, Labcd/gs;->tp(Labcd/Rs;)Labcd/es;

    move-result-object v7

    iget v8, p0, Labcd/Zm;->FH:I

    invoke-static {v8, v3}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v3

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v6, v7, v4, v3, v8}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v5, v1, v6}, Labcd/Ur;->j6(ILabcd/Tr;)V

    new-instance v3, Labcd/Zr;

    sget-object v6, Labcd/gs;->j3:Labcd/es;

    const/4 v7, 0x0

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v3, v6, v4, v7, v8}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4, v3}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v5}, Labcd/hu;->we()V

    new-instance v3, Labcd/Nr;

    invoke-direct {p0, v2}, Labcd/Zm;->j6(I)I

    move-result v4

    invoke-static {v2}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object v4, p0, Labcd/Zm;->VH:[Labcd/Om;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Labcd/Om;->Hw()Labcd/au;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5f
    return-void
.end method

.method static synthetic DW(Labcd/Zm;Labcd/Nr;Labcd/au;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    return-void
.end method

.method private DW(Labcd/Nr;Labcd/au;)Z
    .registers 5

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Zm;->Hw(I)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-direct {p0, v0}, Labcd/Zm;->v5(I)V

    const/4 v0, 0x1

    :goto_12
    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    iget-object p1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private EQ()Labcd/fs;
    .registers 5

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Labcd/Or;

    invoke-direct {v1, v0}, Labcd/Or;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Nr;

    invoke-virtual {v1, v2, v3}, Labcd/Or;->j6(ILabcd/Nr;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    invoke-virtual {v1}, Labcd/hu;->we()V

    new-instance v0, Labcd/fs;

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Labcd/Zm;->DW(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Labcd/fs;-><init>(Labcd/Or;I)V

    return-object v0
.end method

.method private FH(I)Labcd/Nr;
    .registers 4

    invoke-direct {p0, p1}, Labcd/Zm;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Nr;

    return-object p1

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such label "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private FH()V
    .registers 11

    iget-object v0, p0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v0}, Labcd/_m;->aM()Labcd/es;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->j3()Labcd/hs;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {p0, v2}, Labcd/Zm;->DW(I)I

    move-result v2

    invoke-direct {p0}, Labcd/Zm;->Ws()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4c

    new-instance v3, Labcd/Ur;

    invoke-direct {v3, v4}, Labcd/Ur;-><init>(I)V

    new-instance v6, Labcd/ks;

    sget-object v7, Labcd/gs;->Yi:Labcd/es;

    invoke-direct {p0}, Labcd/Zm;->we()Labcd/bs;

    move-result-object v8

    invoke-static {v8}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v8

    sget-object v9, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v6, v7, v1, v8, v9}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    invoke-virtual {v3, v5, v6}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v3}, Labcd/hu;->we()V

    const/4 v6, -0x3

    invoke-direct {p0, v6}, Labcd/Zm;->DW(I)I

    move-result v6

    new-instance v7, Labcd/Nr;

    invoke-static {v6}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v8

    invoke-direct {v7, v2, v3, v8, v6}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v2, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v7, v2}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    move v2, v6

    :cond_4c
    new-instance v3, Labcd/Ur;

    invoke-direct {v3, v4}, Labcd/Ur;-><init>(I)V

    invoke-virtual {v0}, Labcd/es;->Zo()Labcd/Ss;

    move-result-object v4

    invoke-interface {v4}, Labcd/Ss;->size()I

    move-result v6

    if-nez v6, :cond_5e

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    goto :goto_6a

    :cond_5e
    invoke-interface {v4, v5}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v4

    invoke-static {v5, v4}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v4

    invoke-static {v4}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v4

    :goto_6a
    new-instance v6, Labcd/Zr;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v3, v5, v6}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v3}, Labcd/hu;->we()V

    new-instance v0, Labcd/Nr;

    sget-object v1, Labcd/au;->DW:Labcd/au;

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v1, v4}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v1, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v0, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    return-void
.end method

.method private FH(Labcd/Nr;Labcd/au;)Z
    .registers 5

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Zm;->Hw(I)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_19

    :cond_e
    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_19
    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    iget-object p1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_27
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Hw(I)I
    .registers 5

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Nr;

    invoke-virtual {v2}, Labcd/Nr;->DW()I

    move-result v2

    if-ne v2, p1, :cond_18

    return v1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method private Hw()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v1}, Labcd/Mm;->u7()Labcd/Qm;

    move-result-object v1

    iget-object v2, v0, Labcd/Zm;->j6:Labcd/Mm;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/Mm;->j6(I)Labcd/hs;

    move-result-object v2

    iget-object v4, v0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v4}, Labcd/Mm;->v5()Labcd/Os;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v10

    invoke-virtual {v10}, Labcd/Xt;->size()I

    move-result v11

    new-instance v12, Labcd/Ur;

    add-int/lit8 v4, v11, 0x1

    invoke-direct {v12, v4}, Labcd/Ur;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_26
    if-ge v13, v11, :cond_60

    invoke-virtual {v10, v13}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v15

    invoke-virtual {v1, v3, v14}, Labcd/Qm;->j6(II)Labcd/Qm$a;

    move-result-object v4

    if-nez v4, :cond_37

    invoke-static {v14, v15}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v4

    goto :goto_3f

    :cond_37
    invoke-virtual {v4}, Labcd/Qm$a;->j6()Labcd/Vr;

    move-result-object v4

    invoke-static {v14, v15, v4}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v4

    :goto_3f
    move-object v7, v4

    new-instance v9, Labcd/Yr;

    invoke-static {v15}, Labcd/gs;->EQ(Labcd/Rs;)Labcd/es;

    move-result-object v5

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    invoke-static {v14}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v16

    move-object v4, v9

    move-object v6, v2

    move-object v3, v9

    move-object/from16 v9, v16

    invoke-direct/range {v4 .. v9}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {v12, v13, v3}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v15}, Labcd/Qs;->Zo()I

    move-result v3

    add-int/2addr v14, v3

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_26

    :cond_60
    new-instance v1, Labcd/Zr;

    sget-object v3, Labcd/gs;->j3:Labcd/es;

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    const/4 v10, 0x0

    invoke-direct {v1, v3, v2, v10, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v12, v11, v1}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v12}, Labcd/hu;->we()V

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->Ws()Z

    move-result v1

    if-eqz v1, :cond_7c

    const/4 v3, -0x4

    invoke-direct {v0, v3}, Labcd/Zm;->DW(I)I

    move-result v3

    goto :goto_7d

    :cond_7c
    const/4 v3, 0x0

    :goto_7d
    new-instance v4, Labcd/Nr;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Labcd/Zm;->DW(I)I

    move-result v5

    invoke-static {v3}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v6

    invoke-direct {v4, v5, v12, v6, v3}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v5, Labcd/au;->DW:Labcd/au;

    invoke-direct {v0, v4, v5}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    if-eqz v1, :cond_13d

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->we()Labcd/bs;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->J8()Z

    move-result v4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v4, :cond_bb

    new-instance v10, Labcd/js;

    sget-object v5, Labcd/gs;->XL:Labcd/es;

    sget-object v7, Labcd/cs;->FH:Labcd/cs;

    sget-object v8, Labcd/Ps;->FH:Labcd/Ps;

    iget-object v4, v0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v4}, Labcd/Mm;->DW()Labcd/Ks;

    move-result-object v9

    move-object v4, v10

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    new-instance v4, Labcd/Ur;

    invoke-direct {v4, v12}, Labcd/Ur;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v10}, Labcd/Ur;->j6(ILabcd/Tr;)V

    goto :goto_df

    :cond_bb
    new-instance v13, Labcd/Ur;

    invoke-direct {v13, v11}, Labcd/Ur;-><init>(I)V

    new-instance v14, Labcd/Yr;

    sget-object v5, Labcd/gs;->we:Labcd/es;

    sget-object v8, Labcd/cs;->FH:Labcd/cs;

    sget-object v9, Labcd/ys;->Hw:Labcd/ys;

    move-object v4, v14

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v14}, Labcd/Ur;->j6(ILabcd/Tr;)V

    new-instance v4, Labcd/Zr;

    sget-object v5, Labcd/gs;->j3:Labcd/es;

    sget-object v6, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v4, v5, v2, v10, v6}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v13, v12, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    move-object v4, v13

    :goto_df
    const/4 v5, -0x5

    invoke-direct {v0, v5}, Labcd/Zm;->DW(I)I

    move-result v5

    invoke-virtual {v4}, Labcd/hu;->we()V

    new-instance v6, Labcd/Nr;

    invoke-static {v5}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v7

    invoke-direct {v6, v3, v4, v7, v5}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v3, Labcd/au;->DW:Labcd/au;

    invoke-direct {v0, v6, v3}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->J8()Z

    move-result v3

    if-eqz v3, :cond_fc

    goto :goto_fd

    :cond_fc
    const/4 v11, 0x1

    :goto_fd
    new-instance v3, Labcd/Ur;

    invoke-direct {v3, v11}, Labcd/Ur;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->J8()Z

    move-result v4

    if-eqz v4, :cond_117

    new-instance v4, Labcd/Zr;

    invoke-static {v1}, Labcd/gs;->J0(Labcd/Rs;)Labcd/es;

    move-result-object v6

    sget-object v7, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v4, v6, v2, v1, v7}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    :cond_117
    new-instance v4, Labcd/ks;

    sget-object v6, Labcd/gs;->dW:Labcd/es;

    invoke-static {v1}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v1

    sget-object v7, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v4, v6, v2, v1, v7}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->J8()Z

    move-result v1

    invoke-virtual {v3, v1, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v3}, Labcd/hu;->we()V

    new-instance v1, Labcd/Nr;

    const/4 v2, 0x0

    invoke-static {v2}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v4

    invoke-direct {v1, v5, v3, v4, v2}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v2, Labcd/au;->DW:Labcd/au;

    invoke-direct {v0, v1, v2}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    :cond_13d
    return-void
.end method

.method private J0()V
    .registers 9

    new-instance v0, Labcd/au;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    new-instance v1, Labcd/Xm;

    invoke-direct {v1, p0, v0}, Labcd/Xm;-><init>(Labcd/Zm;Labcd/au;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Labcd/Zm;->j6(ILabcd/Nr$a;)V

    invoke-direct {p0}, Labcd/Zm;->gn()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v1, :cond_22

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_22
    const/4 v1, 0x0

    :goto_23
    iget-object v4, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_48

    iget-object v4, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Nr;

    if-nez v4, :cond_36

    goto :goto_45

    :cond_36
    iget-object v5, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/au;

    invoke-virtual {v4}, Labcd/Nr;->DW()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_48
    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v1

    :goto_4c
    if-ge v2, v1, :cond_6a

    invoke-virtual {v0, v2}, Labcd/au;->get(I)I

    move-result v4

    new-instance v5, Labcd/Zm$c;

    new-instance v6, Labcd/Zm$a;

    invoke-direct {p0}, Labcd/Zm;->gn()I

    move-result v7

    invoke-direct {v6, v7}, Labcd/Zm$a;-><init>(I)V

    invoke-direct {v5, p0, v6, v3}, Labcd/Zm$c;-><init>(Labcd/Zm;Labcd/Zm$a;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4}, Labcd/Zm;->FH(I)Labcd/Nr;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/Zm$c;->j6(Labcd/Nr;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_6a
    invoke-direct {p0}, Labcd/Zm;->Zo()V

    return-void
.end method

.method private J8()Z
    .registers 2

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->j6()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private QX()V
    .registers 4

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->v5()Labcd/Os;

    move-result-object v0

    iget-object v1, p0, Labcd/Zm;->VH:[Labcd/Om;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Om;->j6(Labcd/Ps;)V

    iget-object v0, p0, Labcd/Zm;->VH:[Labcd/Om;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Labcd/Om;->v5()V

    return-void
.end method

.method private VH()V
    .registers 6

    iget v0, p0, Labcd/Zm;->Hw:I

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Ot;->Hw([II)V

    invoke-direct {p0}, Labcd/Zm;->Hw()V

    invoke-direct {p0}, Labcd/Zm;->QX()V

    :goto_10
    invoke-static {v0, v1}, Labcd/Ot;->DW([II)I

    move-result v2

    if-gez v2, :cond_27

    invoke-direct {p0}, Labcd/Zm;->FH()V

    invoke-direct {p0}, Labcd/Zm;->v5()V

    invoke-direct {p0}, Labcd/Zm;->DW()V

    iget-boolean v0, p0, Labcd/Zm;->J0:Z

    if-eqz v0, :cond_26

    invoke-direct {p0}, Labcd/Zm;->J0()V

    :cond_26
    return-void

    :cond_27
    invoke-static {v0, v2}, Labcd/Ot;->j6([II)V

    iget-object v3, p0, Labcd/Zm;->DW:Labcd/Im;

    invoke-virtual {v3, v2}, Labcd/Im;->v5(I)Labcd/Hm;

    move-result-object v3

    iget-object v4, p0, Labcd/Zm;->VH:[Labcd/Om;

    aget-object v4, v4, v2

    :try_start_34
    invoke-direct {p0, v3, v4, v0}, Labcd/Zm;->j6(Labcd/Hm;Labcd/Om;[I)V
    :try_end_37
    .catch Labcd/an; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_10

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while working on block "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    goto :goto_53

    :goto_52
    throw v0

    :goto_53
    goto :goto_52
.end method

.method private Ws()Z
    .registers 2

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->j6()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private Zo(I)Labcd/Zm$b;
    .registers 5

    iget-object v0, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_1b

    iget-object v1, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_18

    invoke-static {v1}, Labcd/Zm$b;->j6(Labcd/Zm$b;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private Zo()V
    .registers 4

    new-instance v0, Labcd/au;

    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/au;-><init>(I)V

    iget-object v1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Labcd/Zm;->DW(I)I

    move-result v1

    new-instance v2, Labcd/Ym;

    invoke-direct {v2, p0, v0}, Labcd/Ym;-><init>(Labcd/Zm;Labcd/au;)V

    invoke-direct {p0, v1, v2}, Labcd/Zm;->j6(ILabcd/Nr$a;)V

    invoke-virtual {v0}, Labcd/au;->er()V

    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_28
    if-ltz v1, :cond_44

    iget-object v2, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Nr;

    invoke-virtual {v2}, Labcd/Nr;->DW()I

    move-result v2

    invoke-virtual {v0, v2}, Labcd/au;->v5(I)I

    move-result v2

    if-gez v2, :cond_41

    iget-object v2, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    :cond_44
    return-void
.end method

.method private gn()I
    .registers 4

    invoke-direct {p0}, Labcd/Zm;->u7()I

    move-result v0

    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Nr;

    invoke-virtual {v2}, Labcd/Nr;->DW()I

    move-result v2

    if-lt v2, v0, :cond_a

    add-int/lit8 v0, v2, 0x1

    goto :goto_a

    :cond_1f
    return v0
.end method

.method private j6(I)I
    .registers 3

    iget v0, p0, Labcd/Zm;->Hw:I

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic j6(Labcd/Zm;)I
    .registers 1

    iget p0, p0, Labcd/Zm;->Hw:I

    return p0
.end method

.method static synthetic j6(Labcd/Zm;I)Labcd/Nr;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Zm;->FH(I)Labcd/Nr;

    move-result-object p0

    return-object p0
.end method

.method private j6(Labcd/Ur;)Labcd/Ur;
    .registers 9

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_1a

    invoke-virtual {p1, v2}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v4

    sget-object v5, Labcd/gs;->VH:Labcd/es;

    if-eq v4, v5, :cond_17

    add-int/lit8 v3, v3, 0x1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    if-ne v3, v0, :cond_1d

    return-object p1

    :cond_1d
    new-instance v2, Labcd/Ur;

    invoke-direct {v2, v3}, Labcd/Ur;-><init>(I)V

    const/4 v3, 0x0

    :goto_23
    if-ge v1, v0, :cond_39

    invoke-virtual {p1, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v5

    sget-object v6, Labcd/gs;->VH:Labcd/es;

    if-eq v5, v6, :cond_36

    invoke-virtual {v2, v3, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    add-int/lit8 v3, v3, 0x1

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_39
    invoke-virtual {v2}, Labcd/hu;->we()V

    return-object v2
.end method

.method static synthetic j6(Labcd/Zm;Labcd/Ur;)Labcd/Ur;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Zm;->j6(Labcd/Ur;)Labcd/Ur;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Labcd/Mm;Labcd/ls;)Labcd/fs;
    .registers 4

    :try_start_0
    new-instance v0, Labcd/Zm;

    invoke-direct {v0, p0, p1}, Labcd/Zm;-><init>(Labcd/Mm;Labcd/ls;)V

    invoke-direct {v0}, Labcd/Zm;->VH()V

    invoke-direct {v0}, Labcd/Zm;->EQ()Labcd/fs;

    move-result-object p0
    :try_end_c
    .catch Labcd/an; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...while working on method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Mm;->FH()Labcd/Hs;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Hs;->aM()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(IILabcd/Zm$b;Labcd/Om;[I)V
    .registers 8

    iget-object v0, p0, Labcd/Zm;->VH:[Labcd/Om;

    aget-object v1, v0, p1

    if-eqz v1, :cond_1c

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Labcd/Zm$b;->j6()I

    move-result p3

    invoke-virtual {v1, p4, p3, p2}, Labcd/Om;->j6(Labcd/Om;II)Labcd/Om;

    move-result-object p2

    goto :goto_15

    :cond_11
    invoke-virtual {v1, p4}, Labcd/Om;->j6(Labcd/Om;)Labcd/Om;

    move-result-object p2

    :goto_15
    if-eq p2, v1, :cond_2a

    iget-object p3, p0, Labcd/Zm;->VH:[Labcd/Om;

    aput-object p2, p3, p1

    goto :goto_27

    :cond_1c
    if-eqz p3, :cond_25

    invoke-virtual {p4, p1, p2}, Labcd/Om;->j6(II)Labcd/Om;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_27

    :cond_25
    aput-object p4, v0, p1

    :goto_27
    invoke-static {p5, p1}, Labcd/Ot;->Hw([II)V

    :cond_2a
    return-void
.end method

.method private j6(ILabcd/Nr$a;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/Zm;->FH(I)Labcd/Nr;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Labcd/Zm;->Hw:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Labcd/Zm;->j6(Labcd/Nr;Labcd/Nr$a;Ljava/util/BitSet;)V

    return-void
.end method

.method private j6(Labcd/Hm;Labcd/Om;[I)V
    .registers 30

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->j6()Labcd/Jm;

    move-result-object v0

    iget-object v1, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v0}, Labcd/Jm;->rN()Labcd/Ss;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/_m;->j6(Labcd/Ss;)V

    invoke-virtual/range {p2 .. p2}, Labcd/Om;->j6()Labcd/Om;

    move-result-object v8

    iget-object v1, v7, Labcd/Zm;->Zo:Labcd/bn;

    move-object/from16 v9, p1

    invoke-virtual {v1, v9, v8}, Labcd/bn;->j6(Labcd/Hm;Labcd/Om;)V

    invoke-virtual {v8}, Labcd/Om;->v5()V

    iget-object v1, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->J8()I

    move-result v10

    iget-object v1, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->Ws()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->v5()Labcd/au;

    move-result-object v1

    iget-object v2, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v2}, Labcd/_m;->Mr()Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_65

    invoke-virtual {v1, v6}, Labcd/au;->get(I)I

    move-result v2

    iget-object v3, v7, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v4, v3, v2

    if-nez v4, :cond_4f

    new-instance v4, Labcd/Zm$b;

    invoke-direct {v4, v7, v2}, Labcd/Zm$b;-><init>(Labcd/Zm;I)V

    aput-object v4, v3, v2

    :cond_4f
    iget-object v3, v7, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v3, v3, v2

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/Zm$b;->j6(I)V

    iget-object v3, v7, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v2, v3, v2

    move-object/from16 v5, p3

    move-object v4, v1

    move-object/from16 v16, v2

    const/4 v2, 0x1

    goto :goto_bb

    :cond_65
    iget-object v2, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v2}, Labcd/_m;->U2()Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v1, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->XL()Labcd/Wm;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Wm;->j6()I

    move-result v1

    iget-object v2, v7, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v3, v2, v1

    if-nez v3, :cond_89

    new-instance v3, Labcd/Zm$b;

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v4

    invoke-direct {v3, v7, v1, v4}, Labcd/Zm$b;-><init>(Labcd/Zm;II)V

    aput-object v3, v2, v1

    goto :goto_90

    :cond_89
    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v2

    invoke-virtual {v3, v2}, Labcd/Zm$b;->DW(I)V

    :goto_90
    iget-object v2, v7, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Labcd/Zm$b;->DW()Labcd/au;

    move-result-object v2

    iget-object v3, v7, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v1, v3, v1

    move-object/from16 v5, p3

    invoke-virtual {v1, v8, v5}, Labcd/Zm$b;->j6(Labcd/Om;[I)V

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v1

    move-object/from16 v25, v2

    move v2, v1

    move-object/from16 v1, v25

    goto :goto_b8

    :cond_ab
    move-object/from16 v5, p3

    iget-object v2, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v2}, Labcd/_m;->lg()Z

    move-result v2

    if-eqz v2, :cond_b7

    move v2, v13

    goto :goto_b8

    :cond_b7
    const/4 v2, 0x0

    :goto_b8
    move-object v4, v1

    const/16 v16, 0x0

    :goto_bb
    invoke-virtual {v4}, Labcd/au;->size()I

    move-result v3

    :goto_bf
    if-ge v2, v3, :cond_102

    invoke-virtual {v4, v2}, Labcd/au;->get(I)I

    move-result v17

    :try_start_c5
    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v18

    move-object/from16 v1, p0

    move/from16 v19, v2

    move/from16 v2, v17

    move/from16 v20, v3

    move/from16 v3, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object v5, v8

    const/4 v14, 0x1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Labcd/Zm;->j6(IILabcd/Zm$b;Labcd/Om;[I)V
    :try_end_de
    .catch Labcd/an; {:try_start_c5 .. :try_end_de} :catch_e8

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v5, p3

    move-object/from16 v4, v18

    move/from16 v3, v20

    const/4 v6, 0x1

    goto :goto_bf

    :catch_e8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while merging to block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0

    :cond_102
    move/from16 v20, v3

    move-object/from16 v18, v4

    const/4 v14, 0x1

    if-nez v20, :cond_11c

    iget-object v1, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->a8()Z

    move-result v1

    if-eqz v1, :cond_11c

    const/4 v1, -0x2

    invoke-direct {v7, v1}, Labcd/Zm;->DW(I)I

    move-result v1

    invoke-static {v1}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_120

    :cond_11c
    move-object/from16 v4, v18

    move/from16 v6, v20

    :goto_120
    if-nez v6, :cond_125

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_132

    :cond_125
    iget-object v1, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->QX()I

    move-result v1

    if-ltz v1, :cond_131

    invoke-virtual {v4, v1}, Labcd/au;->get(I)I

    move-result v1

    :cond_131
    move v5, v1

    :goto_132
    invoke-direct/range {p0 .. p0}, Labcd/Zm;->Ws()Z

    move-result v1

    if-eqz v1, :cond_143

    iget-object v1, v7, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->J0()Z

    move-result v1

    if-eqz v1, :cond_143

    const/16 v16, 0x1

    goto :goto_145

    :cond_143
    const/16 v16, 0x0

    :goto_145
    if-nez v16, :cond_14d

    if-eqz v13, :cond_14a

    goto :goto_14d

    :cond_14a
    move v1, v5

    goto/16 :goto_20d

    :cond_14d
    :goto_14d
    new-instance v4, Labcd/au;

    invoke-direct {v4, v6}, Labcd/au;-><init>(I)V

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_155
    if-ge v6, v13, :cond_1d4

    invoke-virtual {v0, v6}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object v3

    invoke-virtual {v1}, Labcd/Jm$a;->FH()I

    move-result v2

    sget-object v1, Labcd/Ks;->DW:Labcd/Ks;

    if-ne v3, v1, :cond_16a

    const/16 v18, 0x1

    goto :goto_16c

    :cond_16a
    const/16 v18, 0x0

    :goto_16c
    invoke-virtual {v8, v3}, Labcd/Om;->j6(Labcd/Ks;)Labcd/Om;

    move-result-object v19

    :try_start_170
    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v20
    :try_end_174
    .catch Labcd/an; {:try_start_170 .. :try_end_174} :catch_1ba

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v3, v20

    move-object v15, v4

    move-object/from16 v4, v21

    move/from16 v24, v5

    move-object/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v6, p3

    :try_start_189
    invoke-direct/range {v1 .. v6}, Labcd/Zm;->j6(IILabcd/Zm$b;Labcd/Om;[I)V
    :try_end_18c
    .catch Labcd/an; {:try_start_189 .. :try_end_18c} :catch_1b6

    iget-object v1, v7, Labcd/Zm;->tp:[Labcd/Qs;

    move/from16 v2, v22

    aget-object v3, v1, v2

    if-nez v3, :cond_19b

    invoke-virtual/range {v23 .. v23}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1a7

    :cond_19b
    invoke-virtual/range {v23 .. v23}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v1

    if-eq v3, v1, :cond_1a7

    iget-object v1, v7, Labcd/Zm;->tp:[Labcd/Qs;

    sget-object v3, Labcd/Qs;->QX:Labcd/Qs;

    aput-object v3, v1, v2

    :cond_1a7
    :goto_1a7
    invoke-direct {v7, v2}, Labcd/Zm;->j6(I)I

    move-result v1

    invoke-virtual {v15, v1}, Labcd/au;->DW(I)V

    add-int/lit8 v6, v19, 0x1

    or-int v17, v18, v17

    move-object v4, v15

    move/from16 v5, v24

    goto :goto_155

    :catch_1b6
    move-exception v0

    move/from16 v2, v22

    goto :goto_1bb

    :catch_1ba
    move-exception v0

    :goto_1bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while merging exception to block "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0

    :cond_1d4
    move-object v15, v4

    move/from16 v24, v5

    if-eqz v16, :cond_202

    if-nez v17, :cond_202

    const/4 v0, -0x6

    invoke-direct {v7, v0}, Labcd/Zm;->DW(I)I

    move-result v0

    invoke-virtual {v15, v0}, Labcd/au;->DW(I)V

    iput-boolean v14, v7, Labcd/Zm;->EQ:Z

    sub-int v0, v12, v10

    sub-int/2addr v0, v14

    :goto_1e8
    if-ge v0, v12, :cond_202

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Tr;

    invoke-virtual {v1}, Labcd/Tr;->j6()Z

    move-result v2

    if-eqz v2, :cond_1ff

    sget-object v2, Labcd/Qs;->QX:Labcd/Qs;

    invoke-virtual {v1, v2}, Labcd/Tr;->j6(Labcd/Qs;)Labcd/Tr;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1ff
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e8

    :cond_202
    move/from16 v1, v24

    if-ltz v1, :cond_209

    invoke-virtual {v15, v1}, Labcd/au;->DW(I)V

    :cond_209
    invoke-virtual {v15}, Labcd/hu;->we()V

    move-object v4, v15

    :goto_20d
    invoke-virtual {v4, v1}, Labcd/au;->v5(I)I

    move-result v0

    move v5, v1

    :goto_212
    if-lez v10, :cond_271

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Tr;

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v2

    if-ne v2, v14, :cond_228

    const/4 v6, 0x1

    goto :goto_229

    :cond_228
    const/4 v6, 0x0

    :goto_229
    if-eqz v6, :cond_22d

    const/4 v2, 0x2

    goto :goto_22e

    :cond_22d
    const/4 v2, 0x1

    :goto_22e
    new-instance v3, Labcd/Ur;

    invoke-direct {v3, v2}, Labcd/Ur;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Labcd/Ur;->j6(ILabcd/Tr;)V

    if-eqz v6, :cond_24f

    new-instance v6, Labcd/Zr;

    sget-object v13, Labcd/gs;->j3:Labcd/es;

    invoke-virtual {v1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    sget-object v15, Labcd/cs;->FH:Labcd/cs;

    const/4 v2, 0x0

    invoke-direct {v6, v13, v1, v2, v15}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v3, v14, v6}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-static {v5}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v1

    goto :goto_250

    :cond_24f
    move-object v1, v4

    :goto_250
    invoke-virtual {v3}, Labcd/hu;->we()V

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->gn()I

    move-result v2

    new-instance v6, Labcd/Nr;

    invoke-direct {v6, v2, v3, v1, v5}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    invoke-virtual {v8}, Labcd/Om;->Hw()Labcd/au;

    move-result-object v1

    invoke-direct {v7, v6, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    invoke-virtual {v4}, Labcd/au;->lg()Labcd/au;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Labcd/au;->FH(II)V

    invoke-virtual {v4}, Labcd/hu;->we()V

    add-int/lit8 v10, v10, -0x1

    move v5, v2

    goto :goto_212

    :cond_271
    if-nez v12, :cond_275

    const/4 v2, 0x0

    goto :goto_27e

    :cond_275
    add-int/lit8 v0, v12, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Labcd/Tr;

    :goto_27e
    if-eqz v2, :cond_28a

    invoke-virtual {v2}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    if-ne v0, v14, :cond_2a2

    :cond_28a
    if-nez v2, :cond_28f

    sget-object v0, Labcd/hs;->j6:Labcd/hs;

    goto :goto_293

    :cond_28f
    invoke-virtual {v2}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v0

    :goto_293
    new-instance v1, Labcd/Zr;

    sget-object v2, Labcd/gs;->j3:Labcd/es;

    sget-object v3, Labcd/cs;->FH:Labcd/cs;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v0, v6, v3}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    :cond_2a2
    new-instance v0, Labcd/Ur;

    invoke-direct {v0, v12}, Labcd/Ur;-><init>(I)V

    const/4 v15, 0x0

    :goto_2a8
    if-ge v15, v12, :cond_2b6

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Tr;

    invoke-virtual {v0, v15, v1}, Labcd/Ur;->j6(ILabcd/Tr;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2a8

    :cond_2b6
    invoke-virtual {v0}, Labcd/hu;->we()V

    new-instance v1, Labcd/Nr;

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v2

    invoke-direct {v1, v2, v0, v4, v5}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    invoke-virtual {v8}, Labcd/Om;->Hw()Labcd/au;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Labcd/Zm;->DW(Labcd/Nr;Labcd/au;)Z

    return-void
.end method

.method private j6(Labcd/Nr;Labcd/Nr$a;Ljava/util/BitSet;)V
    .registers 9

    invoke-interface {p2, p1}, Labcd/Nr$a;->j6(Labcd/Nr;)V

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3d

    invoke-virtual {v0, v2}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_3a

    :cond_20
    invoke-direct {p0, p1}, Labcd/Zm;->j6(Labcd/Nr;)Z

    move-result v4

    if-eqz v4, :cond_29

    if-lez v2, :cond_29

    goto :goto_3a

    :cond_29
    invoke-direct {p0, v3}, Labcd/Zm;->Hw(I)I

    move-result v3

    if-ltz v3, :cond_3a

    iget-object v4, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Nr;

    invoke-direct {p0, v3, p2, p3}, Labcd/Zm;->j6(Labcd/Nr;Labcd/Nr$a;Ljava/util/BitSet;)V

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_3d
    return-void
.end method

.method private j6(Labcd/Nr;Labcd/au;)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    iget-object p1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic j6(Labcd/Zm;IILabcd/Zm$b;Labcd/Om;[I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Labcd/Zm;->j6(IILabcd/Zm$b;Labcd/Om;[I)V

    return-void
.end method

.method private j6(Labcd/Nr;)Z
    .registers 6

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object p1

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    return v2

    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/au;->get(I)I

    move-result p1

    iget-object v1, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    array-length v3, v1

    if-ge p1, v3, :cond_1c

    aget-object p1, v1, p1

    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method static synthetic j6(Labcd/Zm;Labcd/Nr;)Z
    .registers 2

    invoke-direct {p0, p1}, Labcd/Zm;->j6(Labcd/Nr;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Labcd/Zm;Labcd/Nr;Labcd/au;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Zm;->FH(Labcd/Nr;Labcd/au;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Labcd/Zm;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Zm;->J0:Z

    return p1
.end method

.method private tp()I
    .registers 3

    iget v0, p0, Labcd/Zm;->FH:I

    iget-object v1, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v1}, Labcd/Mm;->EQ()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private u7()I
    .registers 2

    iget v0, p0, Labcd/Zm;->Hw:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private v5()V
    .registers 10

    iget-boolean v0, p0, Labcd/Zm;->EQ:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Mm;->j6(I)Labcd/hs;

    move-result-object v0

    sget-object v2, Labcd/Qs;->j3:Labcd/Qs;

    invoke-static {v1, v2}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v2

    new-instance v3, Labcd/Ur;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Labcd/Ur;-><init>(I)V

    new-instance v4, Labcd/Zr;

    sget-object v5, Labcd/Qs;->j3:Labcd/Qs;

    invoke-static {v5}, Labcd/gs;->tp(Labcd/Rs;)Labcd/es;

    move-result-object v5

    sget-object v6, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v4, v5, v0, v2, v6}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v3, v1, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    new-instance v4, Labcd/ks;

    sget-object v5, Labcd/gs;->Yi:Labcd/es;

    invoke-direct {p0}, Labcd/Zm;->we()Labcd/bs;

    move-result-object v6

    invoke-static {v6}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v6

    sget-object v7, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v4, v5, v0, v6, v7}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v3}, Labcd/hu;->we()V

    const/4 v4, -0x7

    invoke-direct {p0, v4}, Labcd/Zm;->DW(I)I

    move-result v4

    new-instance v6, Labcd/Nr;

    const/4 v7, -0x6

    invoke-direct {p0, v7}, Labcd/Zm;->DW(I)I

    move-result v7

    invoke-static {v4}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v8

    invoke-direct {v6, v7, v3, v8, v4}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v3, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v6, v3}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    new-instance v3, Labcd/Ur;

    invoke-direct {v3, v5}, Labcd/Ur;-><init>(I)V

    new-instance v5, Labcd/ks;

    sget-object v6, Labcd/gs;->GK:Labcd/es;

    invoke-static {v2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v2

    sget-object v7, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v5, v6, v0, v2, v7}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    invoke-virtual {v3, v1, v5}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v3}, Labcd/hu;->we()V

    new-instance v0, Labcd/Nr;

    sget-object v1, Labcd/au;->DW:Labcd/au;

    const/4 v2, -0x1

    invoke-direct {v0, v4, v3, v1, v2}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v1, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v0, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    return-void
.end method

.method private v5(I)V
    .registers 7

    invoke-direct {p0}, Labcd/Zm;->u7()I

    move-result v0

    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Nr;

    invoke-virtual {v1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v1

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v2

    iget-object v3, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_1f
    if-ge p1, v2, :cond_4f

    invoke-virtual {v1, p1}, Labcd/au;->get(I)I

    move-result v3

    if-lt v3, v0, :cond_4c

    invoke-direct {p0, v3}, Labcd/Zm;->Hw(I)I

    move-result v4

    if-ltz v4, :cond_31

    invoke-direct {p0, v4}, Labcd/Zm;->v5(I)V

    goto :goto_4c

    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid label "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    :goto_4c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_4f
    return-void
.end method

.method private we()Labcd/bs;
    .registers 3

    invoke-direct {p0}, Labcd/Zm;->tp()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    sget-object v1, Labcd/Qs;->QX:Labcd/Qs;

    invoke-static {v0, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method j6()I
    .registers 3

    invoke-direct {p0}, Labcd/Zm;->tp()I

    move-result v0

    invoke-direct {p0}, Labcd/Zm;->Ws()Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    return v0
.end method
