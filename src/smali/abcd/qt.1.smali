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

    move-result v2

    new-instance v0, Labcd/cs;

    invoke-direct {v0, v2}, Labcd/cs;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {p0, v3}, Labcd/qt;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Labcd/cs;->j6(ILabcd/bs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Labcd/hu;->we()V

    invoke-virtual {v0, p1}, Labcd/Xt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method
