.class Labcd/MK$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/MK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Labcd/ME;",
        ">;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private j6:I

.field final v5:Labcd/MK;


# direct methods
.method constructor <init>(Labcd/MK;)V
    .registers 4

    iput-object p1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/MK;->DW(Labcd/MK;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    invoke-static {p1}, Labcd/MK;->FH(Labcd/MK;)Labcd/KK;

    move-result-object v0

    invoke-static {p1}, Labcd/MK;->DW(Labcd/MK;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iput v0, p0, Labcd/MK$b;->j6:I

    invoke-static {p1}, Labcd/MK;->Hw(Labcd/MK;)Labcd/KK;

    move-result-object v0

    invoke-static {p1}, Labcd/MK;->DW(Labcd/MK;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iput v0, p0, Labcd/MK$b;->DW:I

    invoke-static {p1}, Labcd/MK;->v5(Labcd/MK;)Labcd/KK;

    move-result-object v0

    invoke-static {p1}, Labcd/MK;->DW(Labcd/MK;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    iput p1, p0, Labcd/MK$b;->FH:I

    :cond_42
    return-void
.end method

.method private DW(Labcd/ME;)Labcd/MK$a;
    .registers 4

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->DW(Labcd/MK;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Labcd/MK$a;

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-direct {v0, v1, p1}, Labcd/MK$a;-><init>(Labcd/MK;Labcd/ME;)V

    return-object v0

    :cond_18
    iget-object p1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {p1}, Labcd/MK;->FH(Labcd/MK;)Labcd/KK;

    move-result-object p1

    invoke-virtual {p1}, Labcd/KK;->size()I

    move-result p1

    iput p1, p0, Labcd/MK$b;->j6:I

    iget-object p1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {p1}, Labcd/MK;->Hw(Labcd/MK;)Labcd/KK;

    move-result-object p1

    invoke-virtual {p1}, Labcd/KK;->size()I

    move-result p1

    iput p1, p0, Labcd/MK$b;->DW:I

    iget-object p1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {p1}, Labcd/MK;->v5(Labcd/MK;)Labcd/KK;

    move-result-object p1

    invoke-virtual {p1}, Labcd/KK;->size()I

    move-result p1

    iput p1, p0, Labcd/MK$b;->FH:I

    const/4 p1, 0x0

    return-object p1
.end method

.method private j6(Labcd/ME;)Labcd/ME;
    .registers 4

    iget v0, p0, Labcd/MK$b;->FH:I

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->v5(Labcd/MK;)Labcd/KK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v0, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->v5(Labcd/MK;)Labcd/KK;

    move-result-object v0

    iget v1, p0, Labcd/MK$b;->FH:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/NE;->DW(Labcd/ME;Labcd/ME;)I

    move-result v1

    if-nez v1, :cond_27

    iget p1, p0, Labcd/MK$b;->FH:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/MK$b;->FH:I

    return-object v0

    :cond_27
    if-gtz v1, :cond_2a

    goto :goto_30

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_30
    :goto_30
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Labcd/MK$b;->Hw:Ljava/util/Map$Entry;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Labcd/MK$b;->j6()Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Labcd/MK$b;->Hw:Ljava/util/Map$Entry;

    :cond_a
    iget-object v0, p0, Labcd/MK$b;->Hw:Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public j6()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    iget v0, p0, Labcd/MK$b;->j6:I

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->FH(Labcd/MK;)Labcd/KK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    iget v0, p0, Labcd/MK$b;->DW:I

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->Hw(Labcd/MK;)Labcd/KK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    iget-object v0, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->FH(Labcd/MK;)Labcd/KK;

    move-result-object v0

    iget v1, p0, Labcd/MK$b;->j6:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->Hw(Labcd/MK;)Labcd/KK;

    move-result-object v1

    iget v2, p0, Labcd/MK$b;->DW:I

    invoke-virtual {v1, v2}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/NE;->DW(Labcd/ME;Labcd/ME;)I

    move-result v2

    if-gez v2, :cond_45

    iget v1, p0, Labcd/MK$b;->j6:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/MK$b;->j6:I

    :goto_40
    invoke-direct {p0, v0}, Labcd/MK$b;->DW(Labcd/ME;)Labcd/MK$a;

    move-result-object v0

    return-object v0

    :cond_45
    if-nez v2, :cond_4d

    iget v0, p0, Labcd/MK$b;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/MK$b;->j6:I

    :cond_4d
    iget v0, p0, Labcd/MK$b;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/MK$b;->DW:I

    invoke-direct {p0, v1}, Labcd/MK$b;->j6(Labcd/ME;)Labcd/ME;

    move-result-object v0

    goto :goto_40

    :cond_58
    iget v0, p0, Labcd/MK$b;->DW:I

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->Hw(Labcd/MK;)Labcd/KK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    iget-object v0, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->Hw(Labcd/MK;)Labcd/KK;

    move-result-object v0

    iget v1, p0, Labcd/MK$b;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/MK$b;->DW:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/MK$b;->j6(Labcd/ME;)Labcd/ME;

    move-result-object v0

    goto :goto_40

    :cond_7b
    iget v0, p0, Labcd/MK$b;->j6:I

    iget-object v1, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->FH(Labcd/MK;)Labcd/KK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v1

    if-ge v0, v1, :cond_9a

    iget-object v0, p0, Labcd/MK$b;->v5:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->FH(Labcd/MK;)Labcd/KK;

    move-result-object v0

    iget v1, p0, Labcd/MK$b;->j6:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/MK$b;->j6:I

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    goto :goto_40

    :cond_9a
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/MK$b;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/MK$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Labcd/MK$b;->Hw:Ljava/util/Map$Entry;

    invoke-virtual {p0}, Labcd/MK$b;->j6()Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Labcd/MK$b;->Hw:Ljava/util/Map$Entry;

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
