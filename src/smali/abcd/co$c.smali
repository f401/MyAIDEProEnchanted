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
            "Ljava/util/ArrayList",
            "<",
            "Labcd/co$b;",
            ">;"
        }
    .end annotation
.end field

.field private v5:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    iput v1, p0, Labcd/co$c;->DW:I

    iput-object v2, p0, Labcd/co$c;->FH:Labcd/ds;

    iput-object v2, p0, Labcd/co$c;->Hw:[I

    iput v1, p0, Labcd/co$c;->v5:I

    return-void
.end method

.method private DW(ILabcd/co$a;Labcd/bs;)V
    .registers 7

    sget-object v0, Labcd/co$a;->j6:Labcd/co$a;

    if-eq p2, v0, :cond_1

    invoke-virtual {p3}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/co$c;->Hw:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    invoke-virtual {v0}, Labcd/co$b;->Hw()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Labcd/co$b;->J8()Labcd/bs;

    move-result-object v2

    invoke-virtual {v2, p3}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Labcd/co$b;->j6(Labcd/co$a;)Labcd/co$b;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v0, p3}, Labcd/ds;->Hw(Labcd/bs;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Labcd/co$c;->j6(ILabcd/bs;Labcd/co$a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH(ILabcd/bs;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Labcd/co$b;->Hw()I

    move-result v5

    if-eq v5, p1, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-virtual {v0, p2}, Labcd/co$b;->j6(Labcd/bs;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v0, p2}, Labcd/ds;->Hw(Labcd/bs;)V

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Labcd/co$c;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/co$c;->DW:I

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v5

    move-object v0, v4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Labcd/co$b;->J8()Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->we()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Labcd/co$c;->Hw:[I

    aput v3, v1, v5

    invoke-virtual {v0}, Labcd/co$b;->Hw()I

    move-result v1

    if-ne v1, p1, :cond_6

    iget-object v1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    sget-object v4, Labcd/co$a;->DW:Labcd/co$a;

    invoke-virtual {v0, v4}, Labcd/co$b;->j6(Labcd/co$a;)Labcd/co$b;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private static j6(Labcd/bs;)Labcd/bs;
    .registers 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->EQ:Labcd/Qs;

    if-ne v0, v1, :cond_0

    sget-object v0, Labcd/Qs;->QX:Labcd/Qs;

    invoke-virtual {p0, v0}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private j6(II)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/co$c;->Hw:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Labcd/co$c;->v5:I

    if-ne p1, v2, :cond_2

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Labcd/co$c;->v5:I

    if-lt p1, v2, :cond_5

    if-nez v0, :cond_3

    iget-object v2, p0, Labcd/co$c;->Hw:[I

    array-length v2, v2

    if-lt p2, v2, :cond_0

    :cond_3
    add-int/lit8 v2, p2, 0x1

    new-instance v3, Labcd/ds;

    invoke-direct {v3, v2}, Labcd/ds;-><init>(I)V

    new-array v2, v2, [I

    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v3, v0}, Labcd/ds;->j6(Labcd/ds;)V

    iget-object v0, p0, Labcd/co$c;->Hw:[I

    array-length v4, v0

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v3, p0, Labcd/co$c;->FH:Labcd/ds;

    iput-object v2, p0, Labcd/co$c;->Hw:[I

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(ILabcd/co$a;Labcd/bs;)V
    .registers 7

    invoke-virtual {p3}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    new-instance v2, Labcd/co$b;

    invoke-direct {v2, p1, p2, p3}, Labcd/co$b;-><init>(ILabcd/co$a;Labcd/bs;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Labcd/co$a;->j6:Labcd/co$a;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v1, p3}, Labcd/ds;->FH(Labcd/bs;)V

    iget-object v1, p0, Labcd/co$c;->Hw:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v1, p3}, Labcd/ds;->Hw(Labcd/bs;)V

    iget-object v1, p0, Labcd/co$c;->Hw:[I

    iget-object v2, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public DW(ILabcd/bs;)V
    .registers 8

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v1

    invoke-static {p2}, Labcd/co$c;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Labcd/co$c;->j6(II)V

    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v0, v1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/bs;->DW(Labcd/bs;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v3, v2}, Labcd/ds;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Labcd/co$a;->Hw:Labcd/co$a;

    invoke-direct {p0, p1, v4, v3}, Labcd/co$c;->DW(ILabcd/co$a;Labcd/bs;)V

    :cond_1
    iget-object v3, p0, Labcd/co$c;->Hw:[I

    aget v3, v3, v1

    if-eqz v0, :cond_5

    sget-object v3, Labcd/co$a;->FH:Labcd/co$a;

    invoke-direct {p0, p1, v3, v0}, Labcd/co$c;->j6(ILabcd/co$a;Labcd/bs;)V

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Labcd/bs;->Ws()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Labcd/co$a;->Zo:Labcd/co$a;

    invoke-direct {p0, p1, v3, v0}, Labcd/co$c;->DW(ILabcd/co$a;Labcd/bs;)V

    :cond_3
    invoke-virtual {v2}, Labcd/bs;->Ws()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Labcd/co$a;->v5:Labcd/co$a;

    invoke-direct {p0, p1, v1, v0}, Labcd/co$c;->DW(ILabcd/co$a;Labcd/bs;)V

    :cond_4
    sget-object v0, Labcd/co$a;->j6:Labcd/co$a;

    invoke-direct {p0, p1, v0, v2}, Labcd/co$c;->j6(ILabcd/co$a;Labcd/bs;)V

    goto :goto_0

    :cond_5
    if-ltz v3, :cond_2

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    invoke-virtual {v0}, Labcd/co$b;->Hw()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0, v2}, Labcd/co$b;->j6(Labcd/bs;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Labcd/co$c;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/co$c;->DW:I

    iget-object v0, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v0, v2}, Labcd/ds;->FH(Labcd/bs;)V

    iget-object v0, p0, Labcd/co$c;->Hw:[I

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    :cond_6
    sget-object v4, Labcd/co$a;->FH:Labcd/co$a;

    invoke-virtual {v0, v4}, Labcd/co$b;->j6(Labcd/co$a;)Labcd/co$b;

    move-result-object v0

    iget-object v4, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public j6()Labcd/co;
    .registers 7

    const/4 v2, 0x0

    const v0, 0x7fffffff

    invoke-direct {p0, v0, v2}, Labcd/co$c;->j6(II)V

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Labcd/co$c;->DW:I

    sub-int v3, v0, v1

    if-nez v3, :cond_0

    sget-object v0, Labcd/co;->FH:Labcd/co;

    :goto_0
    return-object v0

    :cond_0
    new-array v4, v3, [Labcd/co$b;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Labcd/co;

    invoke-direct {v0, v3}, Labcd/co;-><init>(I)V

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v4, v2

    invoke-virtual {v0, v2, v1}, Labcd/co;->j6(ILabcd/co$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Labcd/co$c;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    if-eqz v0, :cond_3

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Labcd/hu;->we()V

    goto :goto_0
.end method

.method public j6(ILabcd/bs;)V
    .registers 4

    sget-object v0, Labcd/co$a;->DW:Labcd/co$a;

    invoke-virtual {p0, p1, p2, v0}, Labcd/co$c;->j6(ILabcd/bs;Labcd/co$a;)V

    return-void
.end method

.method public j6(ILabcd/bs;Labcd/co$a;)V
    .registers 7

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v0

    invoke-static {p2}, Labcd/co$c;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Labcd/co$c;->j6(II)V

    iget-object v2, p0, Labcd/co$c;->Hw:[I

    aget v0, v2, v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Labcd/co$c;->FH(ILabcd/bs;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p3, v1}, Labcd/co$c;->j6(ILabcd/co$a;Labcd/bs;)V

    goto :goto_0
.end method

.method public j6(ILabcd/ds;)V
    .registers 8

    invoke-virtual {p2}, Labcd/ds;->lg()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, p1, v0}, Labcd/co$c;->j6(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Labcd/co$c;->FH:Labcd/ds;

    invoke-virtual {v2, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {p2, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v3

    invoke-static {v3}, Labcd/co$c;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v3}, Labcd/co$c;->DW(ILabcd/bs;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0, p1, v2}, Labcd/co$c;->j6(ILabcd/bs;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Labcd/bs;->DW(Labcd/bs;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, v2}, Labcd/co$c;->j6(ILabcd/bs;)V

    invoke-virtual {p0, p1, v3}, Labcd/co$c;->DW(ILabcd/bs;)V

    goto :goto_1

    :cond_3
    return-void
.end method
