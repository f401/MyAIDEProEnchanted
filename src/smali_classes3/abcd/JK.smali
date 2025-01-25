.class Labcd/JK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/KK;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/KK;

.field private j6:I


# direct methods
.method constructor <init>(Labcd/KK;)V
    .registers 2

    iput-object p1, p0, Labcd/JK;->DW:Labcd/KK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Labcd/JK;->j6:I

    iget-object v1, p0, Labcd/JK;->DW:Labcd/KK;

    invoke-static {v1}, Labcd/KK;->j6(Labcd/KK;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public next()Labcd/ME;
    .registers 4

    iget v0, p0, Labcd/JK;->j6:I

    iget-object v1, p0, Labcd/JK;->DW:Labcd/KK;

    invoke-static {v1}, Labcd/KK;->j6(Labcd/KK;)I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Labcd/JK;->DW:Labcd/KK;

    invoke-static {v0}, Labcd/KK;->DW(Labcd/KK;)[Labcd/ME;

    move-result-object v0

    iget v1, p0, Labcd/JK;->j6:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/JK;->j6:I

    aget-object v0, v0, v1

    return-object v0

    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/JK;->next()Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
