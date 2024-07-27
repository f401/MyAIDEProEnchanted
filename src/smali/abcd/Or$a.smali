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
    .registers 6

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Labcd/Or$a;->j6(Labcd/bs;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/Or$a;->j6(Labcd/bs;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j6(Labcd/bs;)V
    .registers 4

    invoke-virtual {p1}, Labcd/bs;->VH()I

    move-result v0

    iget v1, p0, Labcd/Or$a;->j6:I

    if-le v0, v1, :cond_0

    iput v0, p0, Labcd/Or$a;->j6:I

    :cond_0
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
