.class Labcd/Or$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Tr$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Or$a;->j6:I

    return-void
.end method

.method private j6(Labcd/Tr;)V
    .registers 5

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Labcd/Or$a;->j6(Labcd/bs;)V

    :cond_9
    invoke-virtual {p1}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_1e

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Or$a;->j6(Labcd/bs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1e
    return-void
.end method

.method private j6(Labcd/bs;)V
    .registers 3

    invoke-virtual {p1}, Labcd/bs;->VH()I

    move-result p1

    iget v0, p0, Labcd/Or$a;->j6:I

    if-le p1, v0, :cond_a

    iput p1, p0, Labcd/Or$a;->j6:I

    :cond_a
    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Or$a;->j6:I

    return v0
.end method

.method public j6(Labcd/Sr;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Or$a;->j6(Labcd/Tr;)V

    return-void
.end method

.method public j6(Labcd/Yr;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Or$a;->j6(Labcd/Tr;)V

    return-void
.end method

.method public j6(Labcd/Zr;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Or$a;->j6(Labcd/Tr;)V

    return-void
.end method

.method public j6(Labcd/is;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Or$a;->j6(Labcd/Tr;)V

    return-void
.end method

.method public j6(Labcd/js;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Or$a;->j6(Labcd/Tr;)V

    return-void
.end method

.method public j6(Labcd/ks;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Or$a;->j6(Labcd/Tr;)V

    return-void
.end method
