.class Labcd/Bt$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Bt$a$a;
    }
.end annotation


# instance fields
.field private final DW:[Labcd/bs;

.field private final FH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Labcd/vt;",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field final Zo:Labcd/Bt;

.field private final j6:Labcd/tt;

.field private final v5:Labcd/Bt$a$a;


# direct methods
.method constructor <init>(Labcd/Bt;Labcd/tt;)V
    .registers 5

    iput-object p1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-static {p1}, Labcd/Bt;->j6(Labcd/Bt;)[[Labcd/bs;

    move-result-object v0

    invoke-virtual {p2}, Labcd/tt;->DW()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/Bt$a;->FH:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Bt$a;->Hw:Ljava/util/HashMap;

    new-instance v0, Labcd/Bt$a$a;

    invoke-direct {v0, p0}, Labcd/Bt$a$a;-><init>(Labcd/Bt$a;)V

    iput-object v0, p0, Labcd/Bt$a;->v5:Labcd/Bt$a$a;

    invoke-static {p1}, Labcd/Bt;->j6(Labcd/Bt;)[[Labcd/bs;

    move-result-object p1

    invoke-virtual {p2}, Labcd/tt;->DW()I

    move-result p2

    const/4 v0, 0x0

    aput-object v0, p1, p2

    return-void
.end method

.method private DW()V
    .registers 5

    new-instance v0, Labcd/At;

    invoke-direct {v0, p0}, Labcd/At;-><init>(Labcd/Bt$a;)V

    iget-object v1, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    if-ltz v2, :cond_28

    iget-object v3, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v3}, Labcd/Bt;->Hw(Labcd/Bt;)Labcd/yt;

    move-result-object v3

    invoke-virtual {v3}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/tt;

    invoke-virtual {v3, v0}, Labcd/tt;->j6(Labcd/ot$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    return-void
.end method

.method static synthetic DW(Labcd/Bt$a;)[Labcd/bs;
    .registers 1

    iget-object p0, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    return-object p0
.end method

.method static synthetic j6(Labcd/Bt$a;)Labcd/tt;
    .registers 1

    iget-object p0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    return-object p0
.end method

.method private j6(ILabcd/bs;)V
    .registers 7

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    iget-object v2, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aput-object p2, v2, p1

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    :goto_f
    if-ltz p1, :cond_22

    iget-object v2, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    if-ne v0, v2, :cond_1f

    iget-object v2, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aput-object p2, v2, p1

    :cond_1f
    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :cond_22
    if-nez v1, :cond_25

    return-void

    :cond_25
    iget-object p1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {p1, p2}, Labcd/Bt;->j6(Labcd/Bt;Labcd/bs;)V

    iget-object p1, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_2f
    if-ltz p1, :cond_51

    iget-object p2, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v2

    if-eq v0, v2, :cond_4e

    invoke-virtual {p2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Labcd/bs;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object p2

    aput-object p2, v2, p1

    :cond_4e
    add-int/lit8 p1, p1, -0x1

    goto :goto_2f

    :cond_51
    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .registers 3

    iget-object v0, p0, Labcd/Bt$a;->v5:Labcd/Bt$a$a;

    invoke-virtual {p1, v0}, Labcd/mt;->DW(Labcd/qt;)V

    invoke-virtual {p0, p1}, Labcd/Bt$a;->j6(Labcd/vt;)V

    return-void
.end method

.method public j6()V
    .registers 5

    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v0, p0}, Labcd/tt;->j6(Labcd/vt$a;)V

    invoke-direct {p0}, Labcd/Bt$a;->DW()V

    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_12
    :goto_12
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/vt;

    iget-object v3, p0, Labcd/Bt$a;->Hw:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/vt;

    if-eqz v3, :cond_2a

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    invoke-virtual {v2}, Labcd/vt;->QX()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Labcd/Bt$a;->FH:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_3c
    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->j6()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    iget-object v3, p0, Labcd/Bt$a;->j6:Labcd/tt;

    if-eq v2, v3, :cond_47

    if-eqz v1, :cond_5c

    iget-object v1, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    goto :goto_62

    :cond_5c
    iget-object v1, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    invoke-static {v1}, Labcd/Bt;->j6([Labcd/bs;)[Labcd/bs;

    move-result-object v1

    :goto_62
    iget-object v3, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v3}, Labcd/Bt;->j6(Labcd/Bt;)[[Labcd/bs;

    move-result-object v3

    invoke-virtual {v2}, Labcd/tt;->DW()I

    move-result v2

    aput-object v1, v3, v2

    const/4 v1, 0x0

    goto :goto_47

    :cond_70
    return-void
.end method

.method public j6(Labcd/mt;)V
    .registers 9

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    iget-object v4, p0, Labcd/Bt$a;->v5:Labcd/Bt$a$a;

    invoke-virtual {p1, v4}, Labcd/mt;->DW(Labcd/qt;)V

    invoke-virtual {p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v4

    iget-object v5, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v5

    if-nez v5, :cond_35

    move-object v5, v2

    :cond_35
    iget-object v6, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v6, v4}, Labcd/Bt;->j6(Labcd/Bt;I)Labcd/Vr;

    move-result-object v6

    if-eqz v6, :cond_45

    if-eqz v5, :cond_45

    invoke-virtual {v5, v6}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    :cond_45
    const/4 v3, 0x1

    :cond_46
    invoke-virtual {v0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-static {v4, v0, v5}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    invoke-static {}, Labcd/nt;->DW()Z

    move-result v4

    if-eqz v4, :cond_a2

    if-eqz v3, :cond_65

    invoke-static {v5, v2}, Labcd/Bt;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v4}, Labcd/Bt;->v5(Labcd/Bt;)I

    move-result v4

    if-nez v4, :cond_65

    goto :goto_a2

    :cond_65
    if-eqz v3, :cond_99

    if-nez v2, :cond_99

    iget-object v2, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v2}, Labcd/Bt;->v5(Labcd/Bt;)I

    move-result v2

    if-nez v2, :cond_99

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {v0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v3

    invoke-static {v2, v3, v5}, Labcd/bs;->DW(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v2

    invoke-static {v2}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v2

    new-instance v3, Labcd/Zr;

    invoke-static {v0}, Labcd/gs;->gn(Labcd/Rs;)Labcd/es;

    move-result-object v4

    sget-object v5, Labcd/hs;->j6:Labcd/hs;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v2}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    iget-object v2, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-static {v3, v2}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v2

    iget-object v3, p0, Labcd/Bt$a;->Hw:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :cond_99
    invoke-virtual {p0, p1}, Labcd/Bt$a;->j6(Labcd/vt;)V

    iget-object v0, p0, Labcd/Bt$a;->FH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    :cond_a2
    :goto_a2
    invoke-direct {p0, v1, v0}, Labcd/Bt$a;->j6(ILabcd/bs;)V

    :goto_a5
    return-void
.end method

.method public j6(Labcd/ot;)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Bt$a;->j6(Labcd/vt;)V

    return-void
.end method

.method j6(Labcd/vt;)V
    .registers 4

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v1, v0}, Labcd/Bt;->DW(Labcd/Bt;I)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    iget-object v1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v1}, Labcd/Bt;->DW(Labcd/Bt;)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/vt;->j6(I)V

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Labcd/Bt$a;->j6(ILabcd/bs;)V

    iget-object p1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {p1}, Labcd/Bt;->FH(Labcd/Bt;)I

    return-void
.end method
