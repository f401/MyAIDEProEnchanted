.class public Labcd/Yp;
.super Ljava/lang/Object;


# instance fields
.field private final j6:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Yp;->j6:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-class v2, Labcd/Yp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Labcd/Yp;

    iget-object v2, p0, Labcd/Yp;->j6:[I

    iget-object v3, p1, Labcd/Yp;->j6:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Yp;->j6:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public j6(Labcd/hr$a;)V
    .registers 5

    iget-object v0, p0, Labcd/Yp;->j6:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Yp;->j6:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Labcd/hr$a;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6()[I
    .registers 2

    iget-object v0, p0, Labcd/Yp;->j6:[I

    return-object v0
.end method
