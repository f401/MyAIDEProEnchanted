.class public final Labcd/Jr;
.super Labcd/hu;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/hu;",
        "Ljava/lang/Comparable<",
        "Labcd/Jr;",
        ">;"
    }
.end annotation


# static fields
.field public static final DW:Labcd/Jr;


# instance fields
.field private final FH:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Labcd/Ks;",
            "Labcd/Hr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Jr;

    invoke-direct {v0}, Labcd/Jr;-><init>()V

    sput-object v0, Labcd/Jr;->DW:Labcd/Jr;

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/hu;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    return-void
.end method

.method public static j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;
    .registers 3

    new-instance v0, Labcd/Jr;

    invoke-direct {v0}, Labcd/Jr;-><init>()V

    invoke-virtual {v0, p0}, Labcd/Jr;->j6(Labcd/Jr;)V

    invoke-virtual {v0, p1}, Labcd/Jr;->j6(Labcd/Hr;)V

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method

.method public static j6(Labcd/Jr;Labcd/Jr;)Labcd/Jr;
    .registers 3

    new-instance v0, Labcd/Jr;

    invoke-direct {v0}, Labcd/Jr;-><init>()V

    invoke-virtual {v0, p0}, Labcd/Jr;->j6(Labcd/Jr;)V

    invoke-virtual {v0, p1}, Labcd/Jr;->j6(Labcd/Jr;)V

    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method


# virtual methods
.method public DW(Labcd/Jr;)I
    .registers 5

    iget-object v0, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Hr;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Hr;

    invoke-virtual {v1, v2}, Labcd/Hr;->j6(Labcd/Hr;)I

    move-result v1

    if-eqz v1, :cond_14

    return v1

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 p1, 0x1

    return p1

    :cond_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, -0x1

    return p1

    :cond_43
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Jr;

    invoke-virtual {p0, p1}, Labcd/Jr;->DW(Labcd/Jr;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/Jr;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Labcd/Jr;

    iget-object v0, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    iget-object p1, p1, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Hr;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v0

    iget-object v1, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotation == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Jr;)V
    .registers 3

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_20

    iget-object p1, p1, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Hr;

    invoke-virtual {p0, v0}, Labcd/Jr;->j6(Labcd/Hr;)V

    goto :goto_f

    :cond_1f
    return-void

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "toAdd == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :goto_28
    throw p1

    :goto_29
    goto :goto_28
.end method

.method public lg()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/Hr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotations{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Jr;->FH:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Hr;

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_2a

    :cond_25
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    invoke-virtual {v3}, Labcd/Hr;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_32
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
