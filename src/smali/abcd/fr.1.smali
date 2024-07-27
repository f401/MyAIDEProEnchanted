.class public final Labcd/fr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
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

    const/4 v2, 0x0

    new-array v2, v2, [S

    invoke-direct {v0, v1, v2}, Labcd/fr;-><init>(Labcd/iq;[S)V

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
    .registers 3

    check-cast p1, Labcd/fr;

    invoke-virtual {p0, p1}, Labcd/fr;->j6(Labcd/fr;)I

    move-result v0

    return v0
.end method

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
    const-class v2, Labcd/fr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Labcd/fr;

    iget-object v2, p0, Labcd/fr;->FH:[S

    iget-object v3, p1, Labcd/fr;->FH:[S

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
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
    .registers 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/fr;->FH:[S

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Labcd/fr;->FH:[S

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-short v3, v1, v0

    aget-short v4, v2, v0

    if-eq v3, v4, :cond_0

    aget-short v1, v1, v0

    aget-short v0, v2, v0

    invoke-static {v1, v0}, Labcd/nu;->j6(SS)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/fr;->FH:[S

    array-length v0, v0

    iget-object v1, p1, Labcd/fr;->FH:[S

    array-length v1, v1

    invoke-static {v0, v1}, Labcd/nu;->j6(II)I

    move-result v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/fr;->FH:[S

    array-length v3, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Labcd/fr;->DW:Labcd/iq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/iq;->Hw()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Labcd/fr;->FH:[S

    aget-short v4, v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/fr;->FH:[S

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
