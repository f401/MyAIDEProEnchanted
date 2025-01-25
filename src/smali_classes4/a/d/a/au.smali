.class public La/d/a/au;
.super La/d/a/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/d/a/bd;)La/d/a/bd;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_b

    :goto_a
    return-object p0

    :cond_b
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "T"

    return-object v0
.end method
