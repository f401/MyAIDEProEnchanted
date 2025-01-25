.class public Labcd/Xp;
.super Ljava/lang/Object;


# instance fields
.field private final j6:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Xp;->j6:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-class v2, Labcd/Xp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    check-cast p1, Labcd/Xp;

    iget-object v2, p0, Labcd/Xp;->j6:[I

    iget-object p1, p1, Labcd/Xp;->j6:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Xp;->j6:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public j6(Labcd/hr$a;)V
    .registers 5

    iget-object v0, p0, Labcd/Xp;->j6:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Labcd/Xp;->j6:[I

    array-length v2, v1

    if-ge v0, v2, :cond_14

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Labcd/hr$a;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public j6()[I
    .registers 2

    iget-object v0, p0, Labcd/Xp;->j6:[I

    return-object v0
.end method
