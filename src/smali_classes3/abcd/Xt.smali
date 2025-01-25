.class public Labcd/Xt;
.super Labcd/hu;

# interfaces
.implements Labcd/lu;


# instance fields
.field private DW:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Labcd/hu;-><init>(Z)V

    :try_start_8
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Labcd/Xt;->DW:[Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_8 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Hw(I)Ljava/lang/Object;
    .registers 3

    if-gez p1, :cond_a

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "n >= size()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p1, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    const/4 p1, 0x0

    :goto_12
    if-ge p1, v0, :cond_33

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    iget-object v2, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    if-eqz p4, :cond_2b

    aget-object v2, v2, p1

    check-cast v2, Labcd/lu;

    invoke-interface {v2}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30

    :cond_2b
    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_33
    if-eqz p3, :cond_38

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final DW(I)Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    invoke-direct {p0, p1}, Labcd/Xt;->Hw(I)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/Xt;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final FH(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public aM()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2, v3}, Labcd/Xt;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    :cond_11
    check-cast p1, Labcd/Xt;

    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    iget-object p1, p1, Labcd/Xt;->DW:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Labcd/Xt;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final j6(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    :try_start_3
    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    aput-object p2, v0, p1
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p2

    invoke-direct {p0, p1}, Labcd/Xt;->Hw(I)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public lg()V
    .registers 7

    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v0, :cond_13

    iget-object v4, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eqz v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    if-ne v0, v3, :cond_16

    return-void

    :cond_16
    invoke-virtual {p0}, Labcd/hu;->J8()V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1c
    if-ge v1, v0, :cond_2b

    iget-object v5, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    aget-object v5, v5, v1

    if-eqz v5, :cond_28

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2b
    iput-object v2, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    if-nez v3, :cond_32

    invoke-virtual {p0}, Labcd/hu;->we()V

    :cond_32
    return-void
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Labcd/Xt;->DW:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    const/4 v2, 0x0

    const-string v3, ", "

    invoke-direct {p0, v0, v3, v1, v2}, Labcd/Xt;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
