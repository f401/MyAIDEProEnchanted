.class Labcd/cK$b;
.super Labcd/cK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final FH:[Labcd/jK;


# direct methods
.method constructor <init>([Labcd/jK;)V
    .registers 2

    invoke-direct {p0}, Labcd/cK;-><init>()V

    iput-object p1, p0, Labcd/cK$b;->FH:[Labcd/jK;

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .registers 5

    iget-object v0, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v0, v0

    new-array v1, v0, [Labcd/jK;

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v0, :cond_e

    new-instance v0, Labcd/cK$b;

    invoke-direct {v0, v1}, Labcd/cK$b;-><init>([Labcd/jK;)V

    return-object v0

    :cond_e
    iget-object v3, p0, Labcd/cK$b;->FH:[Labcd/jK;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Labcd/jK;->clone()Labcd/jK;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public j6()Z
    .registers 6

    iget-object v0, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-object v4, v0, v3

    invoke-virtual {v4}, Labcd/jK;->j6()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public j6(Labcd/YJ;)Z
    .registers 7

    iget-object v0, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Labcd/jK;->j6(Labcd/YJ;)Z

    move-result v4

    if-nez v4, :cond_12

    return v2

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v2, v2

    if-lt v1, v2, :cond_1a

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    if-lez v1, :cond_21

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v2, p0, Labcd/cK$b;->FH:[Labcd/jK;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Labcd/jK;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
