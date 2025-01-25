.class public Labcd/lt;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/lt;->j6:Labcd/yt;

    return-void
.end method

.method static synthetic j6(Labcd/lt;Labcd/mt;)I
    .registers 2

    invoke-direct {p0, p1}, Labcd/lt;->j6(Labcd/mt;)I

    move-result p0

    return p0
.end method

.method private j6(Labcd/mt;)I
    .registers 2

    invoke-virtual {p1}, Labcd/mt;->gn()Labcd/Tr;

    move-result-object p1

    check-cast p1, Labcd/Pr;

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/ys;

    invoke-virtual {p1}, Labcd/ys;->rN()I

    move-result p1

    return p1
.end method

.method static synthetic j6(Labcd/lt;)Labcd/yt;
    .registers 1

    iget-object p0, p0, Labcd/lt;->j6:Labcd/yt;

    return-object p0
.end method

.method private j6()V
    .registers 5

    iget-object v0, p0, Labcd/lt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->gn()I

    move-result v0

    new-array v0, v0, [Labcd/bs;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Labcd/lt;->j6:Labcd/yt;

    new-instance v3, Labcd/kt;

    invoke-direct {v3, p0, v0, v1}, Labcd/kt;-><init>(Labcd/lt;[Labcd/bs;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Labcd/yt;->j6(Labcd/vt$a;)V

    iget-object v0, p0, Labcd/lt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Ljava/util/Set;)V

    return-void
.end method

.method public static j6(Labcd/yt;)V
    .registers 2

    new-instance v0, Labcd/lt;

    invoke-direct {v0, p0}, Labcd/lt;-><init>(Labcd/yt;)V

    invoke-direct {v0}, Labcd/lt;->j6()V

    return-void
.end method
