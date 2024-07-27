.class Labcd/MK$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/MK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/MK;

.field private j6:Labcd/ME;


# direct methods
.method constructor <init>(Labcd/MK;Labcd/ME;)V
    .registers 3

    iput-object p1, p0, Labcd/MK$a;->DW:Labcd/MK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/MK$a;->j6:Labcd/ME;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    instance-of v1, v0, Labcd/ME;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/MK$a;->j6:Labcd/ME;

    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/MK$a;->j6:Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/MK$a;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/MK$a;->DW:Labcd/MK;

    iget-object v1, p0, Labcd/MK$a;->j6:Labcd/ME;

    invoke-static {v0, v1}, Labcd/MK;->j6(Labcd/MK;Labcd/ME;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Labcd/ME;
    .registers 2

    iget-object v0, p0, Labcd/MK$a;->j6:Labcd/ME;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/MK$a;->getValue()Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Labcd/MK$a;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/ME;)Labcd/ME;
    .registers 4

    iget-object v0, p0, Labcd/MK$a;->DW:Labcd/MK;

    invoke-virtual {p0}, Labcd/MK$a;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Labcd/MK;->j6(Ljava/lang/String;Labcd/ME;)Labcd/ME;

    move-result-object v0

    iput-object p1, p0, Labcd/MK$a;->j6:Labcd/ME;

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Labcd/ME;

    invoke-virtual {p0, p1}, Labcd/MK$a;->j6(Labcd/ME;)Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/MK$a;->j6:Labcd/ME;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
