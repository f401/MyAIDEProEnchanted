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
            "Ljava/util/HashSet",
            "<",
            "Labcd/vt;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
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
    .registers 6

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

    move-result-object v0

    invoke-virtual {p2}, Labcd/tt;->DW()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private DW()V
    .registers 5

    new-instance v2, Labcd/At;

    invoke-direct {v2, p0}, Labcd/At;-><init>(Labcd/Bt$a;)V

    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->Ws()Ljava/util/BitSet;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v0}, Labcd/Bt;->Hw(Labcd/Bt;)Labcd/yt;

    move-result-object v0

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0, v2}, Labcd/tt;->j6(Labcd/ot$b;)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic DW(Labcd/Bt$a;)[Labcd/bs;
    .registers 2

    iget-object v0, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    return-object v0
.end method

.method static synthetic j6(Labcd/Bt$a;)Labcd/tt;
    .registers 2

    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    return-object v0
.end method

.method private j6(ILabcd/bs;)V
    .registers 9

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {p2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    iget-object v0, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aput-object p2, v0, p1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aput-object p2, v3, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v0, p2}, Labcd/Bt;->j6(Labcd/Bt;Labcd/bs;)V

    iget-object v0, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v4

    if-eq v1, v4, :cond_4

    invoke-virtual {v3}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Labcd/bs;->j6(Labcd/Vr;)Labcd/bs;

    move-result-object v3

    aput-object v3, v4, v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
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
    .registers 6

    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v0, p0}, Labcd/tt;->j6(Labcd/vt$a;)V

    invoke-direct {p0}, Labcd/Bt$a;->DW()V

    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    iget-object v1, p0, Labcd/Bt$a;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/vt;

    if-eqz v1, :cond_1

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Labcd/vt;->QX()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/Bt$a;->FH:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->j6()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    iget-object v2, p0, Labcd/Bt$a;->j6:Labcd/tt;

    if-eq v0, v2, :cond_3

    if-eqz v1, :cond_4

    iget-object v1, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    :goto_3
    iget-object v2, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v2}, Labcd/Bt;->j6(Labcd/Bt;)[[Labcd/bs;

    move-result-object v2

    invoke-virtual {v0}, Labcd/tt;->DW()I

    move-result v0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    invoke-static {v1}, Labcd/Bt;->j6([Labcd/bs;)[Labcd/bs;

    move-result-object v1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public j6(Labcd/mt;)V
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/Bt$a;->v5:Labcd/Bt$a$a;

    invoke-virtual {p1, v1}, Labcd/mt;->DW(Labcd/qt;)V

    invoke-virtual {p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v5

    iget-object v1, p0, Labcd/Bt$a;->DW:[Labcd/bs;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    invoke-virtual {v3}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v6, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v6, v5}, Labcd/Bt;->j6(Labcd/Bt;I)Labcd/Vr;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v3

    invoke-static {v5, v3, v0}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v3

    invoke-static {}, Labcd/nt;->DW()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_4

    invoke-static {v0, v1}, Labcd/Bt;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v5}, Labcd/Bt;->v5(Labcd/Bt;)I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-direct {p0, v4, v3}, Labcd/Bt$a;->j6(ILabcd/bs;)V

    :goto_0
    return-void

    :cond_4
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    iget-object v1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v1}, Labcd/Bt;->v5(Labcd/Bt;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-static {v1, v2, v0}, Labcd/bs;->DW(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    invoke-static {v0}, Labcd/cs;->j6(Labcd/bs;)Labcd/cs;

    move-result-object v0

    new-instance v1, Labcd/Zr;

    invoke-static {v3}, Labcd/gs;->gn(Labcd/Rs;)Labcd/es;

    move-result-object v2

    sget-object v5, Labcd/hs;->j6:Labcd/hs;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6, v0}, Labcd/Zr;-><init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V

    iget-object v0, p0, Labcd/Bt$a;->j6:Labcd/tt;

    invoke-static {v1, v0}, Labcd/vt;->j6(Labcd/Tr;Labcd/tt;)Labcd/vt;

    move-result-object v0

    iget-object v1, p0, Labcd/Bt$a;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4, v3}, Labcd/Bt$a;->j6(ILabcd/bs;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Labcd/Bt$a;->j6(Labcd/vt;)V

    iget-object v0, p0, Labcd/Bt$a;->FH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v1, v0}, Labcd/Bt;->DW(Labcd/Bt;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v1}, Labcd/Bt;->DW(Labcd/Bt;)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/vt;->j6(I)V

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/Bt$a;->j6(ILabcd/bs;)V

    iget-object v0, p0, Labcd/Bt$a;->Zo:Labcd/Bt;

    invoke-static {v0}, Labcd/Bt;->FH(Labcd/Bt;)I

    goto :goto_0
.end method
