.class public abstract Labcd/qt;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j6()I
.end method

.method public abstract j6(Labcd/bs;)Labcd/bs;
.end method

.method public final j6(Labcd/cs;)Labcd/cs;
    .registers 6

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Labcd/cs;

    invoke-direct {v1, v0}, Labcd/cs;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1a

    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {p0, v3}, Labcd/qt;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    invoke-virtual {v1}, Labcd/hu;->we()V

    invoke-virtual {v1, p1}, Labcd/Xt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move-object p1, v1

    :goto_25
    return-object p1
.end method
