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
    .registers 4

    iget-object v0, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v0, v0

    new-array v1, v0, [Labcd/jK;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Labcd/cK$b;

    invoke-direct {v0, v1}, Labcd/cK$b;-><init>([Labcd/jK;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Labcd/cK$b;->FH:[Labcd/jK;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Labcd/jK;->clone()Labcd/jK;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j6()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Labcd/jK;->j6()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Labcd/jK;->j6(Labcd/YJ;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Labcd/cK$b;->FH:[Labcd/jK;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Labcd/cK$b;->FH:[Labcd/jK;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Labcd/jK;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
