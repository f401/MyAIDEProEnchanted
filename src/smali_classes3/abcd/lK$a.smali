.class Labcd/lK$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private j6:I

.field final v5:Labcd/lK;


# direct methods
.method private constructor <init>(Labcd/lK;)V
    .registers 3

    iput-object p1, p0, Labcd/lK$a;->v5:Labcd/lK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/lK;->j6(Labcd/lK;)[[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Labcd/lK$a;->Hw:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Labcd/lK;Labcd/lK$a;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/lK$a;-><init>(Labcd/lK;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Labcd/lK$a;->j6:I

    iget-object v1, p0, Labcd/lK$a;->v5:Labcd/lK;

    invoke-static {v1}, Labcd/lK;->DW(Labcd/lK;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/lK$a;->v5:Labcd/lK;

    invoke-static {v0}, Labcd/lK;->DW(Labcd/lK;)I

    move-result v0

    iget v1, p0, Labcd/lK$a;->j6:I

    if-le v0, v1, :cond_41

    iget-object v0, p0, Labcd/lK$a;->Hw:[Ljava/lang/Object;

    iget v1, p0, Labcd/lK$a;->FH:I

    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/lK$a;->FH:I

    const/16 v2, 0x400

    if-ne v1, v2, :cond_3a

    iget v1, p0, Labcd/lK$a;->DW:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/lK$a;->DW:I

    iget-object v2, p0, Labcd/lK$a;->v5:Labcd/lK;

    invoke-static {v2}, Labcd/lK;->j6(Labcd/lK;)[[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_34

    iget-object v1, p0, Labcd/lK$a;->v5:Labcd/lK;

    invoke-static {v1}, Labcd/lK;->j6(Labcd/lK;)[[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Labcd/lK$a;->DW:I

    aget-object v1, v1, v2

    iput-object v1, p0, Labcd/lK$a;->Hw:[Ljava/lang/Object;

    goto :goto_37

    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Labcd/lK$a;->Hw:[Ljava/lang/Object;

    :goto_37
    const/4 v1, 0x0

    iput v1, p0, Labcd/lK$a;->FH:I

    :cond_3a
    iget v1, p0, Labcd/lK$a;->j6:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/lK$a;->j6:I

    return-object v0

    :cond_41
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget v0, p0, Labcd/lK$a;->j6:I

    if-eqz v0, :cond_2a

    iget-object v1, p0, Labcd/lK$a;->v5:Labcd/lK;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/lK$a;->j6:I

    invoke-virtual {v1, v0}, Labcd/lK;->remove(I)Ljava/lang/Object;

    iget v0, p0, Labcd/lK$a;->j6:I

    invoke-static {v0}, Labcd/lK;->v5(I)I

    move-result v0

    iput v0, p0, Labcd/lK$a;->DW:I

    iget v0, p0, Labcd/lK$a;->j6:I

    invoke-static {v0}, Labcd/lK;->Zo(I)I

    move-result v0

    iput v0, p0, Labcd/lK$a;->FH:I

    iget-object v0, p0, Labcd/lK$a;->v5:Labcd/lK;

    invoke-static {v0}, Labcd/lK;->j6(Labcd/lK;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Labcd/lK$a;->DW:I

    aget-object v0, v0, v1

    iput-object v0, p0, Labcd/lK$a;->Hw:[Ljava/lang/Object;

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
