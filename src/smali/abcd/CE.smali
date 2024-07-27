.class Labcd/CE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/DE;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field final FH:Labcd/DE;

.field private j6:I


# direct methods
.method constructor <init>(Labcd/DE;)V
    .registers 2

    iput-object p1, p0, Labcd/CE;->FH:Labcd/DE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Labcd/CE;->j6:I

    iget-object v1, p0, Labcd/CE;->FH:Labcd/DE;

    invoke-static {v1}, Labcd/DE;->j6(Labcd/DE;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Labcd/yE;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    :cond_0
    iget v0, p0, Labcd/CE;->DW:I

    iget-object v1, p0, Labcd/CE;->FH:Labcd/DE;

    invoke-static {v1}, Labcd/DE;->DW(Labcd/DE;)[Labcd/yE;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Labcd/CE;->FH:Labcd/DE;

    invoke-static {v0}, Labcd/DE;->DW(Labcd/DE;)[Labcd/yE;

    move-result-object v0

    iget v1, p0, Labcd/CE;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/CE;->DW:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget v1, p0, Labcd/CE;->j6:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/CE;->j6:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/CE;->next()Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
