.class Labcd/zE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/AE;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:Labcd/AE$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private j6:I

.field final v5:Labcd/AE;


# direct methods
.method constructor <init>(Labcd/AE;)V
    .registers 2

    iput-object p1, p0, Labcd/zE;->v5:Labcd/AE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6(Labcd/AE$a;)Labcd/AE$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget v0, p0, Labcd/zE;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/zE;->j6:I

    iget-object v0, p1, Labcd/AE$a;->tp:Labcd/AE$a;

    iput-object v0, p0, Labcd/zE;->Hw:Labcd/AE$a;

    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Labcd/zE;->j6:I

    iget-object v1, p0, Labcd/zE;->v5:Labcd/AE;

    invoke-static {v1}, Labcd/AE;->j6(Labcd/AE;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public next()Labcd/AE$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Labcd/zE;->Hw:Labcd/AE$a;

    if-eqz v0, :cond_8

    invoke-direct {p0, v0}, Labcd/zE;->j6(Labcd/AE$a;)Labcd/AE$a;

    return-object v0

    :cond_8
    :goto_8
    iget-object v0, p0, Labcd/zE;->v5:Labcd/AE;

    invoke-static {v0}, Labcd/AE;->DW(Labcd/AE;)[[Labcd/AE$a;

    move-result-object v0

    iget v1, p0, Labcd/zE;->DW:I

    aget-object v0, v0, v1

    iget v2, p0, Labcd/zE;->FH:I

    array-length v3, v0

    if-ne v2, v3, :cond_3a

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/zE;->DW:I

    iget-object v0, p0, Labcd/zE;->v5:Labcd/AE;

    invoke-static {v0}, Labcd/AE;->FH(Labcd/AE;)I

    move-result v0

    const/4 v2, 0x1

    shl-int v0, v2, v0

    if-ge v1, v0, :cond_34

    iget-object v0, p0, Labcd/zE;->v5:Labcd/AE;

    invoke-static {v0}, Labcd/AE;->DW(Labcd/AE;)[[Labcd/AE$a;

    move-result-object v0

    iget v1, p0, Labcd/zE;->DW:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, p0, Labcd/zE;->FH:I

    goto :goto_3a

    :cond_34
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3a
    :goto_3a
    iget v1, p0, Labcd/zE;->FH:I

    array-length v2, v0

    if-lt v1, v2, :cond_40

    goto :goto_8

    :cond_40
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/zE;->FH:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_3a

    invoke-direct {p0, v1}, Labcd/zE;->j6(Labcd/AE$a;)Labcd/AE$a;

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/zE;->next()Labcd/AE$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
