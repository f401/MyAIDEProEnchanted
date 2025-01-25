.class public final Labcd/ds;
.super Labcd/hu;


# static fields
.field public static final DW:Labcd/ds;


# instance fields
.field private final FH:[Labcd/bs;

.field private Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/ds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/ds;-><init>(I)V

    sput-object v0, Labcd/ds;->DW:Labcd/ds;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-direct {p0, v1}, Labcd/hu;-><init>(Z)V

    new-array p1, p1, [Labcd/bs;

    iput-object p1, p0, Labcd/ds;->FH:[Labcd/bs;

    iput v0, p0, Labcd/ds;->Hw:I

    return-void
.end method


# virtual methods
.method public DW(Labcd/bs;)Labcd/bs;
    .registers 2

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object p1

    return-object p1
.end method

.method public DW(I)Labcd/ds;
    .registers 6

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    new-instance v1, Labcd/ds;

    add-int v2, v0, p1

    invoke-direct {v1, v2}, Labcd/ds;-><init>(I)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1d

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1a

    invoke-virtual {v3, p1}, Labcd/bs;->DW(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    iget p1, p0, Labcd/ds;->Hw:I

    iput p1, v1, Labcd/ds;->Hw:I

    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_2a
    return-object v1
.end method

.method public FH(Labcd/bs;)V
    .registers 7

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_3a

    const/4 v0, -0x1

    iput v0, p0, Labcd/ds;->Hw:I

    :try_start_8
    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/ds;->FH:[Labcd/bs;

    aput-object p1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_24

    add-int/lit8 v4, v0, -0x1

    aget-object v1, v1, v4

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Labcd/bs;->Hw()I

    move-result v1

    if-ne v1, v3, :cond_24

    iget-object v1, p0, Labcd/ds;->FH:[Labcd/bs;

    aput-object v2, v1, v4

    :cond_24
    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result p1

    if-ne p1, v3, :cond_30

    iget-object p1, p0, Labcd/ds;->FH:[Labcd/bs;

    add-int/lit8 v0, v0, 0x1

    aput-object v2, p1, v0
    :try_end_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_30} :catch_31

    :cond_30
    return-void

    :catch_31
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spec.getReg() out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw(Labcd/bs;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/4 p1, -0x1

    iput p1, p0, Labcd/ds;->Hw:I
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Labcd/ds;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/ds;

    iget-object v0, p1, Labcd/ds;->FH:[Labcd/bs;

    iget-object v2, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v2, v2

    array-length v3, v0

    if-ne v2, v3, :cond_36

    invoke-virtual {p0}, Labcd/ds;->size()I

    move-result v3

    invoke-virtual {p1}, Labcd/ds;->size()I

    move-result p1

    if-eq v3, p1, :cond_1b

    goto :goto_36

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-ge p1, v2, :cond_34

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v3, v3, p1

    aget-object v4, v0, p1

    if-ne v3, v4, :cond_27

    goto :goto_30

    :cond_27
    if-eqz v3, :cond_33

    invoke-virtual {v3, v4}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_33

    :cond_30
    :goto_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_33
    :goto_33
    return v1

    :cond_34
    const/4 p1, 0x1

    return p1

    :cond_36
    :goto_36
    return v1
.end method

.method public get(I)Labcd/bs;
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    iget-object v4, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v4, v4, v2

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v4}, Labcd/bs;->hashCode()I

    move-result v4

    :goto_14
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v3
.end method

.method public j6(Labcd/Vr;)Labcd/bs;
    .registers 6

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v3

    invoke-virtual {p1, v3}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    return-object v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 6

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_14

    :cond_d
    invoke-virtual {p1, v2}, Labcd/bs;->FH(Labcd/bs;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-object v2

    :cond_14
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Labcd/ds;)V
    .registers 5

    invoke-virtual {p1}, Labcd/ds;->lg()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-virtual {p1, v1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v2}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public j6(Labcd/ds;Z)V
    .registers 8

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object p1, p1, Labcd/ds;->FH:[Labcd/bs;

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x1

    iput v2, p0, Labcd/ds;->Hw:I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_29

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v3, v3, v2

    if-nez v3, :cond_1a

    goto :goto_26

    :cond_1a
    aget-object v4, p1, v2

    invoke-virtual {v3, v4, p2}, Labcd/bs;->j6(Labcd/bs;Z)Labcd/bs;

    move-result-object v4

    if-eq v4, v3, :cond_26

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aput-object v4, v3, v2

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    :goto_29
    if-ge v1, v0, :cond_33

    iget-object p1, p0, Labcd/ds;->FH:[Labcd/bs;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_33
    return-void
.end method

.method public lg()I
    .registers 2

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    return v0
.end method

.method public rN()Labcd/ds;
    .registers 5

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    new-instance v1, Labcd/ds;

    invoke-direct {v1, v0}, Labcd/ds;-><init>(I)V

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_17

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v3, v3, v2

    if-eqz v3, :cond_14

    invoke-virtual {v1, v3}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    iget v0, p0, Labcd/ds;->Hw:I

    iput v0, v1, Labcd/ds;->Hw:I

    return-object v1
.end method

.method public size()I
    .registers 5

    iget v0, p0, Labcd/ds;->Hw:I

    if-gez v0, :cond_19

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_16

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v3, v3, v2

    if-eqz v3, :cond_13

    add-int/lit8 v1, v1, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    iput v1, p0, Labcd/ds;->Hw:I

    move v0, v1

    :cond_19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v0, :cond_28

    iget-object v4, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v4, v4, v2

    if-eqz v4, :cond_25

    if-eqz v3, :cond_21

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22

    :cond_21
    const/4 v3, 0x1

    :goto_22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
