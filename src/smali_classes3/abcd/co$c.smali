.class public Labcd/co$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private DW:I

.field private FH:Labcd/ds;

.field private Hw:[I

.field private final j6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/co$b;",
            ">;"
        }
    .end annotation
.end field

.field private v5:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Labcd/co$c;->DW:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    iput-object v0, p0, Labcd/co$c;->Hw:[I

    iput p1, p0, Labcd/co$c;->v5:I

    return-void
.end method

.method private DW(ILabcd/co$a;Labcd/bs;)V
    .registers 7

    sget-object v0, Labcd/co$a;->j6:Labcd/co$a;

    if-eq p2, v0, :cond_39

    invoke-virtual {p3}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/co$c;->Hw:[I

    aget v0, v1, v0

    if-ltz v0, :cond_35

    iget-object v1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/co$b;

    invoke-virtual {v1}, Labcd/co$b;->Hw()I

    move-result v2

    if-ne v2, p1, :cond_35

    invoke-virtual {v1}, Labcd/co$b;->J8()Labcd/bs;

    move-result-object v2

    invoke-virtual {v2, p3}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object p1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Labcd/co$b;->j6(Labcd/co$a;)Labcd/co$b;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {p1, p3}, Labcd/ds;->Hw(Labcd/bs;)V

    return-void

    :cond_35
    invoke-virtual {p0, p1, p3, p2}, Labcd/co$c;->j6(ILabcd/bs;Labcd/co$a;)V

    return-void

    :cond_39
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private FH(ILabcd/bs;)Z
    .registers 8

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_27

    iget-object v3, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/co$b;

    if-nez v3, :cond_16

    goto :goto_24

    :cond_16
    invoke-virtual {v3}, Labcd/co$b;->Hw()I

    move-result v4

    if-eq v4, p1, :cond_1d

    return v2

    :cond_1d
    invoke-virtual {v3, p2}, Labcd/co$b;->j6(Labcd/bs;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_27

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_27
    :goto_27
    iget-object v3, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v3, p2}, Labcd/ds;->Hw(Labcd/bs;)V

    iget-object v3, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Labcd/co$c;->DW:I

    add-int/2addr v3, v1

    iput v3, p0, Labcd/co$c;->DW:I

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result p2

    :cond_3b
    :goto_3b
    sub-int/2addr v0, v1

    if-ltz v0, :cond_55

    iget-object v3, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Labcd/co$b;

    if-nez v4, :cond_4a

    goto :goto_3b

    :cond_4a
    invoke-virtual {v4}, Labcd/co$b;->J8()Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    if-ne v3, p2, :cond_3b

    const/4 v2, 0x1

    :cond_55
    if-eqz v2, :cond_6c

    iget-object v2, p0, Labcd/co$c;->Hw:[I

    aput v0, v2, p2

    invoke-virtual {v4}, Labcd/co$b;->Hw()I

    move-result p2

    if-ne p2, p1, :cond_6c

    iget-object p1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    sget-object p2, Labcd/co$a;->DW:Labcd/co$a;

    invoke-virtual {v4, p2}, Labcd/co$b;->j6(Labcd/co$a;)Labcd/co$b;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    return v1
.end method

.method private static j6(Labcd/bs;)Labcd/bs;
    .registers 3

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne v0, v1, :cond_10

    sget-object v0, Labcd/Qs;->QX:Labcd/Qs;

    invoke-virtual {p0, v0}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method private j6(II)V
    .registers 8

    iget-object v0, p0, Labcd/co$c;->Hw:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    iget v4, p0, Labcd/co$c;->v5:I

    if-ne p1, v4, :cond_10

    if-nez v3, :cond_10

    return-void

    :cond_10
    if-lt p1, v4, :cond_35

    if-nez v3, :cond_17

    array-length p1, v0

    if-lt p2, p1, :cond_34

    :cond_17
    add-int/2addr p2, v1

    new-instance p1, Labcd/ds;

    invoke-direct {p1, p2}, Labcd/ds;-><init>(I)V

    new-array p2, p2, [I

    const/4 v0, -0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    if-nez v3, :cond_30

    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {p1, v0}, Labcd/ds;->j6(Labcd/ds;)V

    iget-object v0, p0, Labcd/co$c;->Hw:[I

    array-length v1, v0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_30
    iput-object p1, p0, Labcd/co$c;->FH:Labcd/ds;

    iput-object p2, p0, Labcd/co$c;->Hw:[I

    :cond_34
    return-void

    :cond_35
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(ILabcd/co$a;Labcd/bs;)V
    .registers 7

    invoke-virtual {p3}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    new-instance v2, Labcd/co$b;

    invoke-direct {v2, p1, p2, p3}, Labcd/co$b;-><init>(ILabcd/co$a;Labcd/bs;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Labcd/co$a;->j6:Labcd/co$a;

    if-ne p2, p1, :cond_1d

    iget-object p1, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {p1, p3}, Labcd/ds;->FH(Labcd/bs;)V

    iget-object p1, p0, Labcd/co$c;->Hw:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    goto :goto_2e

    :cond_1d
    iget-object p1, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {p1, p3}, Labcd/ds;->Hw(Labcd/bs;)V

    iget-object p1, p0, Labcd/co$c;->Hw:[I

    iget-object p2, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    aput p2, p1, v0

    :goto_2e
    return-void
.end method


# virtual methods
.method public DW(ILabcd/bs;)V
    .registers 7

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v0

    invoke-static {p2}, Labcd/co$c;->j6(Labcd/bs;)Labcd/bs;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Labcd/co$c;->j6(II)V

    iget-object v1, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v1, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {p2, v1}, Labcd/bs;->DW(Labcd/bs;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-void

    :cond_18
    iget-object v2, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v2, p2}, Labcd/ds;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v2

    if-eqz v2, :cond_25

    sget-object v3, Labcd/co$a;->Hw:Labcd/co$a;

    invoke-direct {p0, p1, v3, v2}, Labcd/co$c;->DW(ILabcd/co$a;Labcd/bs;)V

    :cond_25
    iget-object v2, p0, Labcd/co$c;->Hw:[I

    aget v2, v2, v0

    if-eqz v1, :cond_31

    sget-object v2, Labcd/co$a;->FH:Labcd/co$a;

    invoke-direct {p0, p1, v2, v1}, Labcd/co$c;->j6(ILabcd/co$a;Labcd/bs;)V

    goto :goto_69

    :cond_31
    if-ltz v2, :cond_69

    iget-object v1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/co$b;

    invoke-virtual {v1}, Labcd/co$b;->Hw()I

    move-result v3

    if-ne v3, p1, :cond_69

    invoke-virtual {v1, p2}, Labcd/co$b;->j6(Labcd/bs;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object p1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Labcd/co$c;->DW:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/co$c;->DW:I

    iget-object p1, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {p1, p2}, Labcd/ds;->FH(Labcd/bs;)V

    iget-object p1, p0, Labcd/co$c;->Hw:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    return-void

    :cond_5e
    sget-object v3, Labcd/co$a;->FH:Labcd/co$a;

    invoke-virtual {v1, v3}, Labcd/co$b;->j6(Labcd/co$a;)Labcd/co$b;

    move-result-object v1

    iget-object v3, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_69
    :goto_69
    if-lez v0, :cond_80

    iget-object v1, p0, Labcd/co$c;->FH:Labcd/ds;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Labcd/bs;->Ws()Z

    move-result v2

    if-eqz v2, :cond_80

    sget-object v2, Labcd/co$a;->Zo:Labcd/co$a;

    invoke-direct {p0, p1, v2, v1}, Labcd/co$c;->DW(ILabcd/co$a;Labcd/bs;)V

    :cond_80
    invoke-virtual {p2}, Labcd/bs;->Ws()Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Labcd/co$c;->FH:Labcd/ds;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_95

    sget-object v1, Labcd/co$a;->v5:Labcd/co$a;

    invoke-direct {p0, p1, v1, v0}, Labcd/co$c;->DW(ILabcd/co$a;Labcd/bs;)V

    :cond_95
    sget-object v0, Labcd/co$a;->j6:Labcd/co$a;

    invoke-direct {p0, p1, v0, p2}, Labcd/co$c;->j6(ILabcd/co$a;Labcd/bs;)V

    return-void
.end method

.method public j6()Labcd/co;
    .registers 7

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Labcd/co$c;->j6(II)V

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Labcd/co$c;->DW:I

    sub-int v2, v0, v2

    if-nez v2, :cond_16

    sget-object v0, Labcd/co;->FH:Labcd/co;

    return-object v0

    :cond_16
    new-array v3, v2, [Labcd/co$b;

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3a

    :cond_20
    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/co$b;

    if-eqz v5, :cond_27

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_3a
    :goto_3a
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Labcd/co;

    invoke-direct {v0, v2}, Labcd/co;-><init>(I)V

    :goto_42
    if-ge v1, v2, :cond_4c

    aget-object v4, v3, v1

    invoke-virtual {v0, v1, v4}, Labcd/co;->j6(ILabcd/co$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_4c
    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method

.method public j6(ILabcd/bs;)V
    .registers 4

    sget-object v0, Labcd/co$a;->DW:Labcd/co$a;

    invoke-virtual {p0, p1, p2, v0}, Labcd/co$c;->j6(ILabcd/bs;Labcd/co$a;)V

    return-void
.end method

.method public j6(ILabcd/bs;Labcd/co$a;)V
    .registers 6

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v0

    invoke-static {p2}, Labcd/co$c;->j6(Labcd/bs;)Labcd/bs;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Labcd/co$c;->j6(II)V

    iget-object v1, p0, Labcd/co$c;->Hw:[I

    aget v0, v1, v0

    if-ltz v0, :cond_12

    return-void

    :cond_12
    invoke-direct {p0, p1, p2}, Labcd/co$c;->FH(ILabcd/bs;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    invoke-direct {p0, p1, p3, p2}, Labcd/co$c;->j6(ILabcd/co$a;Labcd/bs;)V

    return-void
.end method

.method public j6(ILabcd/ds;)V
    .registers 8

    invoke-virtual {p2}, Labcd/ds;->lg()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Labcd/co$c;->j6(II)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_35

    iget-object v2, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v2, v1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {p2, v1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v3

    invoke-static {v3}, Labcd/co$c;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v3

    if-nez v2, :cond_22

    if-eqz v3, :cond_32

    :goto_1e
    invoke-virtual {p0, p1, v3}, Labcd/co$c;->DW(ILabcd/bs;)V

    goto :goto_32

    :cond_22
    if-nez v3, :cond_28

    invoke-virtual {p0, p1, v2}, Labcd/co$c;->j6(ILabcd/bs;)V

    goto :goto_32

    :cond_28
    invoke-virtual {v3, v2}, Labcd/bs;->DW(Labcd/bs;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {p0, p1, v2}, Labcd/co$c;->j6(ILabcd/bs;)V

    goto :goto_1e

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_35
    return-void
.end method
