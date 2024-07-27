.class Labcd/LK;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/MK;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Labcd/ME;",
        ">;>;"
    }
.end annotation


# instance fields
.field final j6:Labcd/MK;


# direct methods
.method constructor <init>(Labcd/MK;)V
    .registers 2

    iput-object p1, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/MK;->j6(Labcd/MK;Labcd/KK;)V

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/MK;->DW(Labcd/MK;Labcd/KK;)V

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/MK;->FH(Labcd/MK;Labcd/KK;)V

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/MK;->j6(Labcd/MK;I)V

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Labcd/MK;->j6(Labcd/MK;Z)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->Zo(Labcd/MK;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->j6(Labcd/MK;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Labcd/LK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Labcd/MK$b;

    iget-object v1, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-direct {v0, v1}, Labcd/MK$b;-><init>(Labcd/MK;)V

    return-object v0
.end method

.method public size()I
    .registers 4

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->Zo(Labcd/MK;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/MK;->j6(Labcd/MK;I)V

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-virtual {v0}, Labcd/MK;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Labcd/MK;->j6(Labcd/MK;Z)V

    :cond_0
    iget-object v0, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {v0}, Labcd/MK;->j6(Labcd/MK;)I

    move-result v0

    return v0

    :cond_1
    iget-object v1, p0, Labcd/LK;->j6:Labcd/MK;

    invoke-static {v1}, Labcd/MK;->j6(Labcd/MK;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Labcd/MK;->j6(Labcd/MK;I)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method
