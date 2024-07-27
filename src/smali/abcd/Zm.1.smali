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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-static {p1}, Labcd/Gm;->j6(Labcd/Mm;)Labcd/Im;

    move-result-object v0

    iput-object v0, p0, Labcd/Zm;->DW:Labcd/Im;

    iget-object v0, p0, Labcd/Zm;->DW:Labcd/Im;

    invoke-virtual {v0}, Labcd/du;->rN()I

    move-result v0

    iput v0, p0, Labcd/Zm;->Hw:I

    invoke-virtual {p1}, Labcd/Mm;->tp()I

    move-result v0

    iput v0, p0, Labcd/Zm;->FH:I

    new-instance v0, Labcd/_m;

    invoke-direct {v0, p0, p1, p2}, Labcd/_m;-><init>(Labcd/Zm;Labcd/Mm;Labcd/ls;)V

    iput-object v0, p0, Labcd/Zm;->v5:Labcd/_m;

    new-instance v0, Labcd/bn;

    iget-object v1, p0, Labcd/Zm;->v5:Labcd/_m;

    invoke-direct {v0, v1, p1}, Labcd/bn;-><init>(Labcd/Tm;Labcd/Mm;)V

    iput-object v0, p0, Labcd/Zm;->Zo:Labcd/bn;

    iget v0, p0, Labcd/Zm;->Hw:I

    new-array v1, v0, [Labcd/Om;

    iput-object v1, p0, Labcd/Zm;->VH:[Labcd/Om;

    new-array v0, v0, [Labcd/Zm$b;

    iput-object v0, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/Zm;->DW:Labcd/Im;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/Zm;->DW:Labcd/Im;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    iget v0, p0, Labcd/Zm;->Hw:I

    new-array v0, v0, [Labcd/Qs;

    iput-object v0, p0, Labcd/Zm;->tp:[Labcd/Qs;

    iput-boolean v4, p0, Labcd/Zm;->EQ:Z

    iget-object v0, p0, Labcd/Zm;->VH:[Labcd/Om;

    new-instance v1, Labcd/Om;

    iget v2, p0, Labcd/Zm;->FH:I

    invoke-virtual {p1}, Labcd/Mm;->EQ()I

    move-result v3

    invoke-direct {v1, v2, v3}, Labcd/Om;-><init>(II)V

    aput-object v1, v0, v4

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(I)I
    .registers 4

    iget v0, p0, Labcd/Zm;->Hw:I

    mul-int/lit8 v0, v0, 0x2

    xor-int/lit8 v1, p1, -0x1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic DW(Labcd/Zm;I)Labcd/Zm$b;
    .registers 3

    invoke-direct {p0, p1}, Labcd/Zm;->Zo(I)Labcd/Zm$b;

    move-result-object v0

    return-object v0
.end method

.method private DW()V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Zm;->tp:[Labcd/Qs;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Labcd/Zm;->tp:[Labcd/Qs;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Labcd/Zm;->FH(I)Labcd/Nr;

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

    const/4 v3, 0x1

    new-instance v6, Labcd/Zr;

    sget-object v7, Labcd/gs;->j3:Labcd/es;

    const/4 v8, 0x0

    sget-object v9, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v6, v7, v4, v8, v9}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v5, v3, v6}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v5}, Labcd/hu;->we()V

    new-instance v3, Labcd/Nr;

    invoke-direct {p0, v0}, Labcd/Zm;->j6(I)I

    move-result v4

    invoke-static {v0}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object v4, p0, Labcd/Zm;->VH:[Labcd/Om;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Labcd/Om;->Hw()Labcd/au;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic DW(Labcd/Zm;Labcd/Nr;Labcd/au;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    return-void
.end method

.method private DW(Labcd/Nr;Labcd/au;)Z
    .registers 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Zm;->Hw(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    iget-object v1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    invoke-direct {p0, v0}, Labcd/Zm;->v5(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private EQ()Labcd/fs;
    .registers 5

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Labcd/Or;

    invoke-direct {v3, v2}, Labcd/Or;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    invoke-virtual {v3, v1, v0}, Labcd/Or;->j6(ILabcd/Nr;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Labcd/hu;->we()V

    new-instance v0, Labcd/fs;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Labcd/Zm;->DW(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Labcd/fs;-><init>(Labcd/Or;I)V

    return-object v0
.end method

.method private FH(I)Labcd/Nr;
    .registers 4

    invoke-direct {p0, p1}, Labcd/Zm;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such label "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private FH()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v0}, Labcd/_m;->aM()Labcd/es;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v0}, Labcd/_m;->j3()Labcd/hs;

    move-result-object v3

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Labcd/Zm;->DW(I)I

    move-result v1

    invoke-direct {p0}, Labcd/Zm;->Ws()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Labcd/Ur;

    invoke-direct {v4, v9}, Labcd/Ur;-><init>(I)V

    new-instance v0, Labcd/ks;

    sget-object v5, Labcd/gs;->Yi:Labcd/es;

    invoke-direct {p0}, Labcd/Zm;->we()Labcd/bs;

    move-result-object v6

    invoke-static {v6}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v6

    sget-object v7, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v0, v5, v3, v6, v7}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    invoke-virtual {v4, v8, v0}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v4}, Labcd/hu;->we()V

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Labcd/Zm;->DW(I)I

    move-result v0

    new-instance v5, Labcd/Nr;

    invoke-static {v0}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v6

    invoke-direct {v5, v1, v4, v6, v0}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v1, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v5, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    :goto_1
    new-instance v4, Labcd/Ur;

    invoke-direct {v4, v9}, Labcd/Ur;-><init>(I)V

    invoke-virtual {v2}, Labcd/es;->Zo()Labcd/Ss;

    move-result-object v1

    invoke-interface {v1}, Labcd/Ss;->size()I

    move-result v5

    if-nez v5, :cond_1

    sget-object v1, Labcd/cs;->FH:Labcd/cs;

    :goto_2
    new-instance v5, Labcd/Zr;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6, v1}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v4, v8, v5}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v4}, Labcd/hu;->we()V

    new-instance v1, Labcd/Nr;

    sget-object v2, Labcd/au;->DW:Labcd/au;

    const/4 v3, -0x1

    invoke-direct {v1, v0, v4, v2, v3}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v0, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v1, v0}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v8}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v1

    invoke-static {v8, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v1

    invoke-static {v1}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private FH(Labcd/Nr;Labcd/au;)Z
    .registers 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Zm;->Hw(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    iget-object v1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Hw(I)I
    .registers 5

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private Hw()V
    .registers 14

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->u7()Labcd/Qm;

    move-result-object v8

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Mm;->j6(I)Labcd/hs;

    move-result-object v2

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->v5()Labcd/Os;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object v9

    invoke-virtual {v9}, Labcd/Xt;->size()I

    move-result v10

    new-instance v11, Labcd/Ur;

    add-int/lit8 v0, v10, 0x1

    invoke-direct {v11, v0}, Labcd/Ur;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v6, v0

    move v7, v1

    :goto_0
    if-ge v6, v10, :cond_1

    invoke-virtual {v9, v6}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v12

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v7}, Labcd/Qm;->j6(II)Labcd/Qm$a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v7, v12}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v3

    :goto_1
    new-instance v0, Labcd/Yr;

    invoke-static {v12}, Labcd/gs;->EQ(Labcd/Rs;)Labcd/es;

    move-result-object v1

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    invoke-static {v7}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {v11, v6, v0}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v12}, Labcd/Qs;->Zo()I

    move-result v0

    add-int v1, v7, v0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Labcd/Qm$a;->j6()Labcd/Vr;

    move-result-object v0

    invoke-static {v7, v12, v0}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v0, Labcd/Zr;

    sget-object v1, Labcd/gs;->j3:Labcd/es;

    const/4 v3, 0x0

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v11, v10, v0}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v11}, Labcd/hu;->we()V

    invoke-direct {p0}, Labcd/Zm;->Ws()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, -0x4

    invoke-direct {p0, v0}, Labcd/Zm;->DW(I)I

    move-result v0

    move v6, v0

    :goto_2
    new-instance v0, Labcd/Nr;

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Labcd/Zm;->DW(I)I

    move-result v3

    invoke-static {v6}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v4

    invoke-direct {v0, v3, v11, v4, v6}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v3, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v0, v3}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Labcd/Zm;->we()Labcd/bs;

    move-result-object v9

    invoke-direct {p0}, Labcd/Zm;->J8()Z

    move-result v0

    const/4 v8, 0x2

    if-eqz v0, :cond_5

    new-instance v0, Labcd/js;

    sget-object v1, Labcd/gs;->XL:Labcd/es;

    sget-object v3, Labcd/cs;->FH:Labcd/cs;

    sget-object v4, Labcd/Ps;->FH:Labcd/Ps;

    iget-object v5, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v5}, Labcd/Mm;->DW()Labcd/Ks;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Labcd/js;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;Labcd/ms;)V

    new-instance v1, Labcd/Ur;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Labcd/Ur;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Labcd/Ur;->j6(ILabcd/Tr;)V

    move-object v0, v1

    :goto_3
    const/4 v1, -0x5

    invoke-direct {p0, v1}, Labcd/Zm;->DW(I)I

    move-result v1

    invoke-virtual {v0}, Labcd/hu;->we()V

    new-instance v3, Labcd/Nr;

    invoke-static {v1}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v4

    invoke-direct {v3, v6, v0, v4, v1}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v0, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v3, v0}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    invoke-direct {p0}, Labcd/Zm;->J8()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    :goto_4
    new-instance v3, Labcd/Ur;

    invoke-direct {v3, v0}, Labcd/Ur;-><init>(I)V

    invoke-direct {p0}, Labcd/Zm;->J8()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-instance v4, Labcd/Zr;

    invoke-static {v9}, Labcd/gs;->J0(Labcd/Rs;)Labcd/es;

    move-result-object v5

    sget-object v6, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v4, v5, v2, v9, v6}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v3, v0, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    :cond_2
    new-instance v0, Labcd/ks;

    sget-object v4, Labcd/gs;->dW:Labcd/es;

    invoke-static {v9}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v5

    sget-object v6, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v0, v4, v2, v5, v6}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    invoke-direct {p0}, Labcd/Zm;->J8()Z

    move-result v2

    invoke-virtual {v3, v2, v0}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v3}, Labcd/hu;->we()V

    new-instance v0, Labcd/Nr;

    const/4 v2, 0x0

    invoke-static {v2}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v1, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v0, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_2

    :cond_5
    new-instance v7, Labcd/Ur;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Labcd/Ur;-><init>(I)V

    const/4 v10, 0x0

    new-instance v0, Labcd/Yr;

    sget-object v1, Labcd/gs;->we:Labcd/es;

    sget-object v4, Labcd/cs;->FH:Labcd/cs;

    sget-object v5, Labcd/ys;->Hw:Labcd/ys;

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Labcd/Yr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;Labcd/ms;)V

    invoke-virtual {v7, v10, v0}, Labcd/Ur;->j6(ILabcd/Tr;)V

    const/4 v0, 0x1

    new-instance v1, Labcd/Zr;

    sget-object v3, Labcd/gs;->j3:Labcd/es;

    const/4 v4, 0x0

    sget-object v5, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v1, v3, v2, v4, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v7, v0, v1}, Labcd/Ur;->j6(ILabcd/Tr;)V

    move-object v0, v7

    goto/16 :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private J0()V
    .registers 9

    const/4 v3, 0x0

    new-instance v4, Labcd/au;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Labcd/au;-><init>(I)V

    new-instance v0, Labcd/Xm;

    invoke-direct {v0, p0, v4}, Labcd/Xm;-><init>(Labcd/Zm;Labcd/au;)V

    invoke-direct {p0, v3, v0}, Labcd/Zm;->j6(ILabcd/Nr$a;)V

    invoke-direct {p0}, Labcd/Zm;->gn()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    if-nez v0, :cond_1

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/au;

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Labcd/au;->size()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_3

    invoke-virtual {v4, v3}, Labcd/au;->get(I)I

    move-result v1

    new-instance v2, Labcd/Zm$c;

    new-instance v6, Labcd/Zm$a;

    invoke-direct {p0}, Labcd/Zm;->gn()I

    move-result v7

    invoke-direct {v6, v7}, Labcd/Zm$a;-><init>(I)V

    invoke-direct {v2, p0, v6, v5}, Labcd/Zm$c;-><init>(Labcd/Zm;Labcd/Zm$a;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Labcd/Zm;->FH(I)Labcd/Nr;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/Zm$c;->j6(Labcd/Nr;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Labcd/Zm;->Zo()V

    return-void
.end method

.method private J8()Z
    .registers 2

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->j6()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private QX()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->v5()Labcd/Os;

    move-result-object v0

    iget-object v1, p0, Labcd/Zm;->VH:[Labcd/Om;

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

    const/4 v4, 0x0

    iget v0, p0, Labcd/Zm;->Hw:I

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    invoke-static {v0, v4}, Labcd/Ot;->Hw([II)V

    invoke-direct {p0}, Labcd/Zm;->Hw()V

    invoke-direct {p0}, Labcd/Zm;->QX()V

    :goto_0
    invoke-static {v0, v4}, Labcd/Ot;->DW([II)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0}, Labcd/Zm;->FH()V

    invoke-direct {p0}, Labcd/Zm;->v5()V

    invoke-direct {p0}, Labcd/Zm;->DW()V

    iget-boolean v0, p0, Labcd/Zm;->J0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/Zm;->J0()V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0, v1}, Labcd/Ot;->j6([II)V

    iget-object v2, p0, Labcd/Zm;->DW:Labcd/Im;

    invoke-virtual {v2, v1}, Labcd/Im;->v5(I)Labcd/Hm;

    move-result-object v2

    iget-object v3, p0, Labcd/Zm;->VH:[Labcd/Om;

    aget-object v3, v3, v1

    :try_start_0
    invoke-direct {p0, v2, v3, v0}, Labcd/Zm;->j6(Labcd/Hm;Labcd/Om;[I)V
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while working on block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0
.end method

.method private Ws()Z
    .registers 2

    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0}, Labcd/Mm;->j6()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Zo(I)Labcd/Zm$b;
    .registers 5

    iget-object v0, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-static {v0}, Labcd/Zm$b;->j6(Labcd/Zm$b;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private Zo()V
    .registers 4

    new-instance v2, Labcd/au;

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Labcd/au;-><init>(I)V

    iget-object v0, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Labcd/Zm;->DW(I)I

    move-result v0

    new-instance v1, Labcd/Ym;

    invoke-direct {v1, p0, v2}, Labcd/Ym;-><init>(Labcd/Zm;Labcd/au;)V

    invoke-direct {p0, v0, v1}, Labcd/Zm;->j6(ILabcd/Nr$a;)V

    invoke-virtual {v2}, Labcd/au;->er()V

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {v2, v0}, Labcd/au;->v5(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private gn()I
    .registers 4

    invoke-direct {p0}, Labcd/Zm;->u7()I

    move-result v0

    iget-object v1, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->DW()I

    move-result v0

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private j6(I)I
    .registers 3

    iget v0, p0, Labcd/Zm;->Hw:I

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic j6(Labcd/Zm;)I
    .registers 2

    iget v0, p0, Labcd/Zm;->Hw:I

    return v0
.end method

.method static synthetic j6(Labcd/Zm;I)Labcd/Nr;
    .registers 3

    invoke-direct {p0, p1}, Labcd/Zm;->FH(I)Labcd/Nr;

    move-result-object v0

    return-object v0
.end method

.method private j6(Labcd/Ur;)Labcd/Ur;
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v4

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p1, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v3

    sget-object v5, Labcd/gs;->VH:Labcd/es;

    if-eq v3, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    :goto_1
    return-object p1

    :cond_2
    new-instance v1, Labcd/Ur;

    invoke-direct {v1, v0}, Labcd/Ur;-><init>(I)V

    move v0, v2

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v5

    sget-object v6, Labcd/gs;->VH:Labcd/es;

    if-eq v5, v6, :cond_3

    invoke-virtual {v1, v0, v2}, Labcd/Ur;->j6(ILabcd/Tr;)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Labcd/hu;->we()V

    move-object p1, v1

    goto :goto_1
.end method

.method static synthetic j6(Labcd/Zm;Labcd/Ur;)Labcd/Ur;
    .registers 3

    invoke-direct {p0, p1}, Labcd/Zm;->j6(Labcd/Ur;)Labcd/Ur;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/Mm;Labcd/ls;)Labcd/fs;
    .registers 5

    :try_start_0
    new-instance v0, Labcd/Zm;

    invoke-direct {v0, p0, p1}, Labcd/Zm;-><init>(Labcd/Mm;Labcd/ls;)V

    invoke-direct {v0}, Labcd/Zm;->VH()V

    invoke-direct {v0}, Labcd/Zm;->EQ()Labcd/fs;
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while working on method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Mm;->FH()Labcd/Hs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Hs;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(IILabcd/Zm$b;Labcd/Om;[I)V
    .registers 8

    iget-object v0, p0, Labcd/Zm;->VH:[Labcd/Om;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Labcd/Zm$b;->j6()I

    move-result v0

    invoke-virtual {v1, p4, v0, p2}, Labcd/Om;->j6(Labcd/Om;II)Labcd/Om;

    move-result-object v0

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Labcd/Zm;->VH:[Labcd/Om;

    aput-object v0, v1, p1

    invoke-static {p5, p1}, Labcd/Ot;->Hw([II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1, p4}, Labcd/Om;->j6(Labcd/Om;)Labcd/Om;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p4, p1, p2}, Labcd/Om;->j6(II)Labcd/Om;

    move-result-object v1

    aput-object v1, v0, p1

    :goto_2
    invoke-static {p5, p1}, Labcd/Ot;->Hw([II)V

    goto :goto_1

    :cond_3
    aput-object p4, v0, p1

    goto :goto_2
.end method

.method private j6(ILabcd/Nr$a;)V
    .registers 6

    invoke-direct {p0, p1}, Labcd/Zm;->FH(I)Labcd/Nr;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Labcd/Zm;->Hw:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v0, p2, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/Nr$a;Ljava/util/BitSet;)V

    return-void
.end method

.method private j6(Labcd/Hm;Labcd/Om;[I)V
    .registers 24

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->j6()Labcd/Jm;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual/range {v17 .. v17}, Labcd/Jm;->rN()Labcd/Ss;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/_m;->j6(Labcd/Ss;)V

    invoke-virtual/range {p2 .. p2}, Labcd/Om;->j6()Labcd/Om;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->Zo:Labcd/bn;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5}, Labcd/bn;->j6(Labcd/Hm;Labcd/Om;)V

    invoke-virtual {v5}, Labcd/Om;->v5()V

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->J8()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->Ws()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Labcd/Xt;->size()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->v5()Labcd/au;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->Mr()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Labcd/au;->get(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    new-instance v4, Labcd/Zm$b;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Labcd/Zm$b;-><init>(Labcd/Zm;I)V

    aput-object v4, v3, v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v3, v3, v1

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/Zm$b;->j6(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v4, v3, v1

    const/4 v1, 0x1

    move-object v7, v2

    :goto_0
    invoke-virtual {v7}, Labcd/au;->size()I

    move-result v8

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_5

    invoke-virtual {v7, v9}, Labcd/au;->get(I)I

    move-result v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Labcd/Zm;->j6(IILabcd/Zm$b;Labcd/Om;[I)V
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->U2()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->XL()Labcd/Wm;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Wm;->j6()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    new-instance v3, Labcd/Zm$b;

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v4}, Labcd/Zm$b;-><init>(Labcd/Zm;II)V

    aput-object v3, v2, v1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Labcd/Zm$b;->DW()Labcd/au;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Zm;->we:[Labcd/Zm$b;

    aget-object v1, v3, v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v5, v0}, Labcd/Zm$b;->j6(Labcd/Om;[I)V

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v1

    :goto_3
    const/4 v4, 0x0

    move-object v7, v2

    goto :goto_0

    :cond_2
    aget-object v2, v2, v1

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v3

    invoke-virtual {v2, v3}, Labcd/Zm$b;->DW(I)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->lg()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v12

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...while merging to block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-nez v8, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->a8()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Labcd/Zm;->DW(I)I

    move-result v1

    invoke-static {v1}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v3

    const/4 v1, 0x1

    move v4, v1

    :goto_4
    if-nez v4, :cond_9

    const/4 v1, -0x1

    move v2, v1

    :goto_5
    invoke-direct/range {p0 .. p0}, Labcd/Zm;->Ws()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->J0()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move/from16 v16, v1

    :goto_6
    if-nez v16, :cond_6

    if-eqz v12, :cond_b

    :cond_6
    new-instance v3, Labcd/au;

    invoke-direct {v3, v4}, Labcd/au;-><init>(I)V

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v4, v1

    move v15, v6

    :goto_7
    if-ge v4, v12, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Labcd/Jm;->get(I)Labcd/Jm$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Jm$a;->DW()Labcd/Ks;

    move-result-object v19

    invoke-virtual {v1}, Labcd/Jm$a;->FH()I

    move-result v7

    sget-object v1, Labcd/Ks;->DW:Labcd/Ks;

    move-object/from16 v0, v19

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Labcd/Om;->j6(Labcd/Ks;)Labcd/Om;

    move-result-object v10

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I
    :try_end_1
    .catch Labcd/an; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p3

    :try_start_2
    invoke-direct/range {v6 .. v11}, Labcd/Zm;->j6(IILabcd/Zm$b;Labcd/Om;[I)V
    :try_end_2
    .catch Labcd/an; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v0, p0

    iget-object v6, v0, Labcd/Zm;->tp:[Labcd/Qs;

    aget-object v8, v6, v7

    if-nez v8, :cond_d

    invoke-virtual/range {v19 .. v19}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v8

    aput-object v8, v6, v7

    :cond_7
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Labcd/Zm;->j6(I)I

    move-result v6

    invoke-virtual {v3, v6}, Labcd/au;->DW(I)V

    add-int/lit8 v4, v4, 0x1

    or-int/2addr v1, v15

    move v15, v1

    goto :goto_7

    :cond_8
    move v4, v8

    move-object v3, v7

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Labcd/Zm;->v5:Labcd/_m;

    invoke-virtual {v1}, Labcd/_m;->QX()I

    move-result v1

    if-ltz v1, :cond_1b

    invoke-virtual {v3, v1}, Labcd/au;->get(I)I

    move-result v1

    move v2, v1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_6

    :cond_b
    move-object v1, v3

    :goto_a
    invoke-virtual {v1, v2}, Labcd/au;->v5(I)I

    move-result v9

    move v6, v13

    move v7, v2

    move v4, v14

    move-object v3, v1

    :goto_b
    if-lez v6, :cond_15

    add-int/lit8 v8, v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Tr;

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    move v4, v2

    :goto_c
    if-eqz v4, :cond_13

    const/4 v2, 0x2

    :goto_d
    new-instance v10, Labcd/Ur;

    invoke-direct {v10, v2}, Labcd/Ur;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v1}, Labcd/Ur;->j6(ILabcd/Tr;)V

    if-eqz v4, :cond_14

    const/4 v2, 0x1

    new-instance v4, Labcd/Zr;

    sget-object v11, Labcd/gs;->j3:Labcd/es;

    invoke-virtual {v1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    const/4 v12, 0x0

    sget-object v13, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v4, v11, v1, v12, v13}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v10, v2, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-static {v7}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v1

    :goto_e
    invoke-virtual {v10}, Labcd/hu;->we()V

    invoke-direct/range {p0 .. p0}, Labcd/Zm;->gn()I

    move-result v2

    new-instance v4, Labcd/Nr;

    invoke-direct {v4, v2, v10, v1, v7}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    invoke-virtual {v5}, Labcd/Om;->Hw()Labcd/au;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    invoke-virtual {v3}, Labcd/au;->lg()Labcd/au;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Labcd/au;->FH(II)V

    invoke-virtual {v3}, Labcd/hu;->we()V

    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move v7, v2

    move v4, v8

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_d
    invoke-virtual/range {v19 .. v19}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v6

    if-eq v8, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Labcd/Zm;->tp:[Labcd/Qs;

    sget-object v8, Labcd/Qs;->QX:Labcd/Qs;

    aput-object v8, v6, v7

    goto/16 :goto_9

    :catch_1
    move-exception v1

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while merging exception to block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-eqz v16, :cond_10

    if-nez v15, :cond_10

    const/4 v1, -0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Labcd/Zm;->DW(I)I

    move-result v1

    invoke-virtual {v3, v1}, Labcd/au;->DW(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Labcd/Zm;->EQ:Z

    sub-int v1, v14, v13

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_10
    if-ge v4, v14, :cond_10

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Tr;

    invoke-virtual {v1}, Labcd/Tr;->j6()Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Labcd/Qs;->QX:Labcd/Qs;

    invoke-virtual {v1, v6}, Labcd/Tr;->j6(Labcd/Qs;)Labcd/Tr;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_10

    :cond_10
    if-ltz v2, :cond_11

    invoke-virtual {v3, v2}, Labcd/au;->DW(I)V

    :cond_11
    invoke-virtual {v3}, Labcd/hu;->we()V

    move-object v1, v3

    goto/16 :goto_a

    :cond_12
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_c

    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_14
    move-object v1, v3

    goto/16 :goto_e

    :cond_15
    const/4 v6, 0x0

    if-nez v4, :cond_17

    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    :cond_16
    if-nez v1, :cond_18

    sget-object v1, Labcd/hs;->j6:Labcd/hs;

    :goto_12
    new-instance v2, Labcd/Zr;

    sget-object v8, Labcd/gs;->j3:Labcd/es;

    const/4 v9, 0x0

    sget-object v10, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v2, v8, v1, v9, v10}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v2, v1

    :goto_13
    new-instance v8, Labcd/Ur;

    invoke-direct {v8, v2}, Labcd/Ur;-><init>(I)V

    move v4, v6

    :goto_14
    if-ge v4, v2, :cond_19

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Tr;

    invoke-virtual {v8, v4, v1}, Labcd/Ur;->j6(ILabcd/Tr;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_14

    :cond_17
    add-int/lit8 v1, v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Tr;

    goto :goto_11

    :cond_18
    invoke-virtual {v1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    goto :goto_12

    :cond_19
    invoke-virtual {v8}, Labcd/hu;->we()V

    new-instance v1, Labcd/Nr;

    invoke-virtual/range {p1 .. p1}, Labcd/Hm;->DW()I

    move-result v2

    invoke-direct {v1, v2, v8, v3, v7}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    invoke-virtual {v5}, Labcd/Om;->Hw()Labcd/au;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Labcd/Zm;->DW(Labcd/Nr;Labcd/au;)Z

    return-void

    :catch_2
    move-exception v1

    goto/16 :goto_f

    :cond_1a
    move v2, v4

    goto :goto_13

    :cond_1b
    move v2, v1

    goto/16 :goto_5
.end method

.method private j6(Labcd/Nr;Labcd/Nr$a;Ljava/util/BitSet;)V
    .registers 9

    invoke-interface {p2, p1}, Labcd/Nr$a;->j6(Labcd/Nr;)V

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v2

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Labcd/au;->get(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Labcd/Zm;->j6(Labcd/Nr;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-gtz v1, :cond_0

    :cond_2
    invoke-direct {p0, v0}, Labcd/Zm;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v4, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    invoke-direct {p0, v0, p2, p3}, Labcd/Zm;->j6(Labcd/Nr;Labcd/Nr$a;Ljava/util/BitSet;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private j6(Labcd/Nr;Labcd/au;)V
    .registers 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    iget-object v0, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic j6(Labcd/Zm;IILabcd/Zm$b;Labcd/Om;[I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Labcd/Zm;->j6(IILabcd/Zm$b;Labcd/Om;[I)V

    return-void
.end method

.method private j6(Labcd/Nr;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v2

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v2, v0}, Labcd/au;->get(I)I

    move-result v2

    iget-object v3, p0, Labcd/Zm;->we:[Labcd/Zm$b;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v2, v3, v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic j6(Labcd/Zm;Labcd/Nr;)Z
    .registers 3

    invoke-direct {p0, p1}, Labcd/Zm;->j6(Labcd/Nr;)Z

    move-result v0

    return v0
.end method

.method static synthetic j6(Labcd/Zm;Labcd/Nr;Labcd/au;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/Zm;->FH(Labcd/Nr;Labcd/au;)Z

    move-result v0

    return v0
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

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Labcd/Zm;->EQ:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/Zm;->j6:Labcd/Mm;

    invoke-virtual {v0, v7}, Labcd/Mm;->j6(I)Labcd/hs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->j3:Labcd/Qs;

    invoke-static {v7, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v1

    new-instance v2, Labcd/Ur;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Labcd/Ur;-><init>(I)V

    new-instance v3, Labcd/Zr;

    sget-object v4, Labcd/Qs;->j3:Labcd/Qs;

    invoke-static {v4}, Labcd/gs;->tp(Labcd/Rs;)Labcd/es;

    move-result-object v4

    sget-object v5, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {v3, v4, v0, v1, v5}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    invoke-virtual {v2, v7, v3}, Labcd/Ur;->j6(ILabcd/Tr;)V

    new-instance v3, Labcd/ks;

    sget-object v4, Labcd/gs;->Yi:Labcd/es;

    invoke-direct {p0}, Labcd/Zm;->we()Labcd/bs;

    move-result-object v5

    invoke-static {v5}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v5

    sget-object v6, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v3, v4, v0, v5, v6}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    invoke-virtual {v2, v8, v3}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v2}, Labcd/hu;->we()V

    const/4 v3, -0x7

    invoke-direct {p0, v3}, Labcd/Zm;->DW(I)I

    move-result v3

    new-instance v4, Labcd/Nr;

    const/4 v5, -0x6

    invoke-direct {p0, v5}, Labcd/Zm;->DW(I)I

    move-result v5

    invoke-static {v3}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6, v3}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v2, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v4, v2}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    new-instance v2, Labcd/Ur;

    invoke-direct {v2, v8}, Labcd/Ur;-><init>(I)V

    new-instance v4, Labcd/ks;

    sget-object v5, Labcd/gs;->GK:Labcd/es;

    invoke-static {v1}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v1

    sget-object v6, Labcd/Ps;->FH:Labcd/Ps;

    invoke-direct {v4, v5, v0, v1, v6}, Labcd/ks;-><init>(Labcd/es;Labcd/hs;Labcd/cs;Labcd/Ss;)V

    invoke-virtual {v2, v7, v4}, Labcd/Ur;->j6(ILabcd/Tr;)V

    invoke-virtual {v2}, Labcd/hu;->we()V

    new-instance v0, Labcd/Nr;

    sget-object v1, Labcd/au;->DW:Labcd/au;

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v1, v4}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    sget-object v1, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, v0, v1}, Labcd/Zm;->j6(Labcd/Nr;Labcd/au;)V

    goto :goto_0
.end method

.method private v5(I)V
    .registers 8

    invoke-direct {p0}, Labcd/Zm;->u7()I

    move-result v1

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v2

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v3

    iget-object v0, p0, Labcd/Zm;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Labcd/Zm;->u7:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Labcd/au;->get(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    invoke-direct {p0, v4}, Labcd/Zm;->Hw(I)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-direct {p0, v5}, Labcd/Zm;->v5(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid label "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private we()Labcd/bs;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Labcd/Zm;->tp()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    sget-object v1, Labcd/Qs;->QX:Labcd/Qs;

    invoke-static {v0, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method j6()I
    .registers 3

    invoke-direct {p0}, Labcd/Zm;->tp()I

    move-result v0

    invoke-direct {p0}, Labcd/Zm;->Ws()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
