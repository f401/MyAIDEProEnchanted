.class public Labcd/u;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private final j6:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_a

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Labcd/u;->j6:[Ljava/lang/Object;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Labcd/u;->DW:I

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Labcd/u;->j6:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method


# virtual methods
.method public j6(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Labcd/u;->DW(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Labcd/u;->DW:I

    iget-object v1, p0, Labcd/u;->j6:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    aput-object p1, v1, v0

    const/4 p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Labcd/u;->DW:I

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
