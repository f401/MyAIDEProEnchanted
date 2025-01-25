.class public abstract Labcd/Fm;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Tm;


# instance fields
.field private DW:[Labcd/Rs;

.field private EQ:Z

.field private FH:I

.field private Hw:Labcd/Qs;

.field private J0:[Labcd/Rs;

.field private J8:I

.field private VH:I

.field private Zo:Labcd/ms;

.field private gn:Labcd/cn;

.field private final j6:Labcd/Os;

.field private tp:I

.field private u7:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation
.end field

.field private v5:I

.field private we:Labcd/bs;


# direct methods
.method public constructor <init>(Labcd/Os;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    iput-object p1, p0, Labcd/Fm;->j6:Labcd/Os;

    const/16 p1, 0xa

    new-array p1, p1, [Labcd/Rs;

    iput-object p1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    const/4 p1, 0x6

    new-array p1, p1, [Labcd/Rs;

    iput-object p1, p0, Labcd/Fm;->J0:[Labcd/Rs;

    invoke-virtual {p0}, Labcd/Fm;->j6()V

    return-void

    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Labcd/Rs;Labcd/Rs;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local variable type mismatch: attempt to set or access a value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using a local variable of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This is symptomatic of .class transformation tools "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "that ignore local variable information."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Labcd/an;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public DW()Labcd/Os;
    .registers 2

    iget-object v0, p0, Labcd/Fm;->j6:Labcd/Os;

    return-object v0
.end method

.method protected final DW(Z)Labcd/bs;
    .registers 6

    iget-object v0, p0, Labcd/Fm;->we:Labcd/bs;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget v0, p0, Labcd/Fm;->J8:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_30

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local target with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/Fm;->J8:I

    if-nez v0, :cond_1c

    const-string v0, "no"

    goto :goto_1e

    :cond_1c
    const-string v0, "multiple"

    :goto_1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " results"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iget-object v0, p0, Labcd/Fm;->J0:[Labcd/Rs;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v2

    iget-object v3, p0, Labcd/Fm;->we:Labcd/bs;

    invoke-virtual {v3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v3

    if-ne v2, v3, :cond_4d

    if-eqz p1, :cond_4a

    iget-object p1, p0, Labcd/Fm;->we:Labcd/bs;

    invoke-virtual {p1, v0}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object p1

    return-object p1

    :cond_4a
    iget-object p1, p0, Labcd/Fm;->we:Labcd/bs;

    return-object p1

    :cond_4d
    invoke-static {v3, v2}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p1

    if-eqz p1, :cond_62

    sget-object p1, Labcd/Qs;->QX:Labcd/Qs;

    if-ne v3, p1, :cond_5f

    iget-object p1, p0, Labcd/Fm;->we:Labcd/bs;

    invoke-virtual {p1, v0}, Labcd/bs;->j6(Labcd/Rs;)Labcd/bs;

    move-result-object p1

    iput-object p1, p0, Labcd/Fm;->we:Labcd/bs;

    :cond_5f
    iget-object p1, p0, Labcd/Fm;->we:Labcd/bs;

    return-object p1

    :cond_62
    invoke-static {v2, v3}, Labcd/Fm;->j6(Labcd/Rs;Labcd/Rs;)V

    throw v1
.end method

.method public final DW(I)V
    .registers 2

    iput p1, p0, Labcd/Fm;->v5:I

    return-void
.end method

.method public final DW(Labcd/Om;I)V
    .registers 5

    invoke-virtual {p0}, Labcd/Fm;->j6()V

    iget-object v0, p0, Labcd/Fm;->DW:[Labcd/Rs;

    invoke-virtual {p1}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object p1

    invoke-virtual {p1, p2}, Labcd/Rm;->get(I)Labcd/Rs;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Labcd/Fm;->FH:I

    iput p2, p0, Labcd/Fm;->tp:I

    return-void
.end method

.method protected final DW(Labcd/Rs;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Labcd/Fm;->J0:[Labcd/Rs;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Labcd/Fm;->J8:I

    return-void

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final EQ()I
    .registers 2

    iget v0, p0, Labcd/Fm;->tp:I

    return v0
.end method

.method protected final FH()I
    .registers 2

    iget v0, p0, Labcd/Fm;->FH:I

    return v0
.end method

.method protected final FH(I)Labcd/Rs;
    .registers 3

    iget v0, p0, Labcd/Fm;->FH:I

    if-ge p1, v0, :cond_12

    :try_start_4
    iget-object v0, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p1, v0, p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= argCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final Hw(I)Labcd/Rs;
    .registers 3

    iget v0, p0, Labcd/Fm;->J8:I

    if-ge p1, v0, :cond_12

    :try_start_4
    iget-object v0, p0, Labcd/Fm;->J0:[Labcd/Rs;

    aget-object p1, v0, p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= resultCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final Hw()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fm;->J8:I

    return-void
.end method

.method protected final VH()I
    .registers 2

    iget v0, p0, Labcd/Fm;->v5:I

    return v0
.end method

.method protected final Zo()Labcd/ms;
    .registers 2

    iget-object v0, p0, Labcd/Fm;->Zo:Labcd/ms;

    return-object v0
.end method

.method protected final gn()I
    .registers 2

    iget v0, p0, Labcd/Fm;->VH:I

    return v0
.end method

.method public final j6()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fm;->FH:I

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/Fm;->Hw:Labcd/Qs;

    iput v0, p0, Labcd/Fm;->v5:I

    iput-object v1, p0, Labcd/Fm;->Zo:Labcd/ms;

    iput v0, p0, Labcd/Fm;->VH:I

    iput-object v1, p0, Labcd/Fm;->gn:Labcd/cn;

    iput-object v1, p0, Labcd/Fm;->u7:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Labcd/Fm;->tp:I

    iput-boolean v0, p0, Labcd/Fm;->EQ:Z

    iput-object v1, p0, Labcd/Fm;->we:Labcd/bs;

    iput v2, p0, Labcd/Fm;->J8:I

    return-void
.end method

.method public final j6(I)V
    .registers 2

    iput p1, p0, Labcd/Fm;->VH:I

    return-void
.end method

.method public final j6(ILabcd/Qs;Labcd/Vr;)V
    .registers 4

    invoke-static {p1, p2, p3}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p1

    iput-object p1, p0, Labcd/Fm;->we:Labcd/bs;

    return-void
.end method

.method protected final j6(Labcd/Om;)V
    .registers 4

    iget v0, p0, Labcd/Fm;->J8:I

    if-ltz v0, :cond_32

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Labcd/Fm;->we:Labcd/bs;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Labcd/Om;->DW()Labcd/Rm;

    move-result-object p1

    invoke-virtual {p0, v1}, Labcd/Fm;->DW(Z)Labcd/bs;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/Rm;->j6(Labcd/bs;)V

    goto :goto_31

    :cond_18
    invoke-virtual {p1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p1

    :goto_1c
    iget v0, p0, Labcd/Fm;->J8:I

    if-ge v1, v0, :cond_31

    iget-boolean v0, p0, Labcd/Fm;->EQ:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Labcd/Nm;->yS()V

    :cond_27
    iget-object v0, p0, Labcd/Fm;->J0:[Labcd/Rs;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Labcd/Nm;->j6(Labcd/Rs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    :goto_31
    return-void

    :cond_32
    new-instance p1, Labcd/an;

    const-string v0, "results never set"

    invoke-direct {p1, v0}, Labcd/an;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method

.method public final j6(Labcd/Om;I)V
    .registers 6

    invoke-virtual {p1}, Labcd/Om;->FH()Labcd/Nm;

    move-result-object p1

    invoke-virtual {p0}, Labcd/Fm;->j6()V

    iget-object v0, p0, Labcd/Fm;->DW:[Labcd/Rs;

    array-length v0, v0

    if-le p2, v0, :cond_12

    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [Labcd/Rs;

    iput-object v0, p0, Labcd/Fm;->DW:[Labcd/Rs;

    :cond_12
    add-int/lit8 v0, p2, -0x1

    :goto_14
    if-ltz v0, :cond_21

    iget-object v1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    invoke-virtual {p1}, Labcd/Nm;->er()Labcd/Rs;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_21
    iput p2, p0, Labcd/Fm;->FH:I

    return-void
.end method

.method public j6(Labcd/Om;Labcd/Os;)V
    .registers 6

    invoke-virtual {p2}, Labcd/Os;->VH()Labcd/Ps;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Labcd/Fm;->j6(Labcd/Om;I)V

    const/4 p1, 0x0

    :goto_c
    if-ge p1, v0, :cond_5d

    invoke-virtual {p2, p1}, Labcd/Ps;->getType(I)Labcd/Qs;

    move-result-object v1

    iget-object v2, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at stack depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Labcd/Ps;->getType(I)Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p1, p2, p1

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/an;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    return-void
.end method

.method public final j6(Labcd/Om;Labcd/Qs;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Labcd/Fm;->j6(Labcd/Om;I)V

    iget-object p1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p2, p2, v0

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j6(Labcd/Om;Labcd/Qs;Labcd/Qs;)V
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Labcd/Fm;->j6(Labcd/Om;I)V

    iget-object p1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_4a

    iget-object p1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p2, p3, p2

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p2, p2, v0

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j6(Labcd/Om;Labcd/Qs;Labcd/Qs;Labcd/Qs;)V
    .registers 8

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Labcd/Fm;->j6(Labcd/Om;I)V

    iget-object p1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_80

    iget-object p1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Labcd/Fm;->DW:[Labcd/Rs;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p4, p1}, Labcd/Um;->j6(Labcd/Rs;Labcd/Rs;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return-void

    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p2, p3, p2

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p2, p3, p2

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Labcd/Fm;->DW:[Labcd/Rs;

    aget-object p2, p2, v0

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/an;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j6(Labcd/Qs;)V
    .registers 2

    iput-object p1, p0, Labcd/Fm;->Hw:Labcd/Qs;

    return-void
.end method

.method protected final j6(Labcd/Rs;)V
    .registers 4

    if-eqz p1, :cond_d

    iget-object v0, p0, Labcd/Fm;->J0:[Labcd/Rs;

    iget v1, p0, Labcd/Fm;->J8:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Fm;->J8:I

    return-void

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Labcd/cn;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Labcd/Fm;->gn:Labcd/cn;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cases == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Labcd/ms;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Labcd/Fm;->Zo:Labcd/ms;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/Fm;->u7:Ljava/util/ArrayList;

    return-void
.end method

.method public final j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/Fm;->EQ:Z

    return-void
.end method

.method protected final tp()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Fm;->u7:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final u7()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/Fm;->Hw:Labcd/Qs;

    return-object v0
.end method

.method protected final v5()Labcd/cn;
    .registers 2

    iget-object v0, p0, Labcd/Fm;->gn:Labcd/cn;

    return-object v0
.end method

.method protected final we()I
    .registers 3

    iget v0, p0, Labcd/Fm;->J8:I

    if-ltz v0, :cond_5

    return v0

    :cond_5
    new-instance v0, Labcd/an;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0
.end method
