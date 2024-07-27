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

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Labcd/hu;-><init>(Z)V

    new-array v0, p1, [Labcd/bs;

    iput-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    iput v1, p0, Labcd/ds;->Hw:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/bs;)Labcd/bs;
    .registers 3

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v0

    return-object v0
.end method

.method public DW(I)Labcd/ds;
    .registers 6

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v1, v0

    new-instance v2, Labcd/ds;

    add-int v0, v1, p1

    invoke-direct {v2, v0}, Labcd/ds;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Labcd/bs;->DW(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/ds;->Hw:I

    iput v0, v2, Labcd/ds;->Hw:I

    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Labcd/hu;->we()V

    :cond_2
    return-object v2
.end method

.method public FH(Labcd/bs;)V
    .registers 7

    const/4 v4, 0x2

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Labcd/ds;->Hw:I

    :try_start_0
    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/ds;->FH:[Labcd/bs;

    aput-object p1, v1, v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Labcd/bs;->Hw()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Labcd/ds;->FH:[Labcd/bs;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Labcd/ds;->FH:[Labcd/bs;

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spec.getReg() out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw(Labcd/bs;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v0, -0x1

    iput v0, p0, Labcd/ds;->Hw:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/ds;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/ds;

    iget-object v2, p1, Labcd/ds;->FH:[Labcd/bs;

    iget-object v1, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v3, v1

    array-length v1, v2

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Labcd/ds;->size()I

    move-result v1

    invoke-virtual {p1}, Labcd/ds;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    if-ne v4, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Labcd/bs;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get(I)Labcd/bs;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v4, v0

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Labcd/bs;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v3
.end method

.method public j6(Labcd/Vr;)Labcd/bs;
    .registers 6

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v3

    invoke-virtual {p1, v3}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 6

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Labcd/bs;->FH(Labcd/bs;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j6(Labcd/ds;)V
    .registers 5

    invoke-virtual {p1}, Labcd/ds;->lg()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j6(Labcd/ds;Z)V
    .registers 9

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object v2, p1, Labcd/ds;->FH:[Labcd/bs;

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v3, v0

    array-length v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Labcd/ds;->Hw:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v4, v4, v1

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v5, v2, v1

    invoke-virtual {v4, v5, p2}, Labcd/bs;->j6(Labcd/bs;Z)Labcd/bs;

    move-result-object v5

    if-eq v5, v4, :cond_0

    iget-object v4, p0, Labcd/ds;->FH:[Labcd/bs;

    aput-object v5, v4, v1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v1, p0, Labcd/ds;->FH:[Labcd/bs;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
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

    array-length v1, v0

    new-instance v2, Labcd/ds;

    invoke-direct {v2, v1}, Labcd/ds;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Labcd/ds;->FH(Labcd/bs;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/ds;->Hw:I

    iput v0, v2, Labcd/ds;->Hw:I

    return-object v2
.end method

.method public size()I
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Labcd/ds;->Hw:I

    if-gez v0, :cond_2

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v3, v0

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v2, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Labcd/ds;->Hw:I

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/ds;->FH:[Labcd/bs;

    array-length v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v3, 0x19

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v2, p0, Labcd/ds;->FH:[Labcd/bs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
