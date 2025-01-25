.class public final Labcd/fr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/fr;",
        ">;"
    }
.end annotation


# static fields
.field public static final j6:Labcd/fr;


# instance fields
.field private final DW:Labcd/iq;

.field private final FH:[S


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/fr;

    const/4 v1, 0x0

    new-array v1, v1, [S

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Labcd/fr;-><init>(Labcd/iq;[S)V

    sput-object v0, Labcd/fr;->j6:Labcd/fr;

    return-void
.end method

.method public constructor <init>(Labcd/iq;[S)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/fr;->DW:Labcd/iq;

    iput-object p2, p0, Labcd/fr;->FH:[S

    return-void
.end method


# virtual methods
.method public Hw()[S
    .registers 2

    iget-object v0, p0, Labcd/fr;->FH:[S

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/fr;

    invoke-virtual {p0, p1}, Labcd/fr;->j6(Labcd/fr;)I

    move-result p1

    return p1
.end method

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
    const-class v2, Labcd/fr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    check-cast p1, Labcd/fr;

    iget-object v2, p0, Labcd/fr;->FH:[S

    iget-object p1, p1, Labcd/fr;->FH:[S

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/fr;->FH:[S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public j6(Labcd/fr;)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Labcd/fr;->FH:[S

    array-length v2, v1

    if-ge v0, v2, :cond_19

    iget-object v2, p1, Labcd/fr;->FH:[S

    array-length v3, v2

    if-ge v0, v3, :cond_19

    aget-short v1, v1, v0

    aget-short v2, v2, v0

    if-eq v1, v2, :cond_16

    invoke-static {v1, v2}, Labcd/nu;->j6(SS)I

    move-result p1

    return p1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    array-length v0, v1

    iget-object p1, p1, Labcd/fr;->FH:[S

    array-length p1, p1

    invoke-static {v0, p1}, Labcd/nu;->j6(II)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/fr;->FH:[S

    array-length v1, v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2f

    iget-object v3, p0, Labcd/fr;->DW:Labcd/iq;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Labcd/iq;->Hw()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Labcd/fr;->FH:[S

    aget-short v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_29

    :cond_21
    iget-object v3, p0, Labcd/fr;->FH:[S

    aget-short v3, v3, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    :goto_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2f
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
