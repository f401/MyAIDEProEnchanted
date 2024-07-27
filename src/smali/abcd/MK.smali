.class public Labcd/MK;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/MK$a;,
        Labcd/MK$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:Labcd/KK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Labcd/KK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Labcd/KK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKK",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;>;"
        }
    .end annotation
.end field

.field private Zo:Z

.field private final j6:Ljava/lang/String;

.field private v5:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/KK;Labcd/KK;Labcd/KK;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LKK",
            "<+",
            "Labcd/ME;",
            ">;",
            "LKK",
            "<+",
            "Labcd/ME;",
            ">;",
            "LKK",
            "<+",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Labcd/MK;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/MK;->DW:Labcd/KK;

    iput-object p3, p0, Labcd/MK;->FH:Labcd/KK;

    iput-object p4, p0, Labcd/MK;->Hw:Labcd/KK;

    return-void
.end method

.method static synthetic DW(Labcd/MK;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/MK;->j6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic DW(Labcd/MK;Labcd/KK;)V
    .registers 2

    iput-object p1, p0, Labcd/MK;->FH:Labcd/KK;

    return-void
.end method

.method static synthetic FH(Labcd/MK;)Labcd/KK;
    .registers 2

    iget-object v0, p0, Labcd/MK;->DW:Labcd/KK;

    return-object v0
.end method

.method static synthetic FH(Labcd/MK;Labcd/KK;)V
    .registers 2

    iput-object p1, p0, Labcd/MK;->Hw:Labcd/KK;

    return-void
.end method

.method static synthetic Hw(Labcd/MK;)Labcd/KK;
    .registers 2

    iget-object v0, p0, Labcd/MK;->FH:Labcd/KK;

    return-object v0
.end method

.method static synthetic Zo(Labcd/MK;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/MK;->Zo:Z

    return v0
.end method

.method static synthetic j6(Labcd/MK;)I
    .registers 2

    iget v0, p0, Labcd/MK;->v5:I

    return v0
.end method

.method private j6(Labcd/ME;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/MK;->j6:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Labcd/MK;->j6:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic j6(Labcd/MK;Labcd/ME;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Labcd/MK;->j6(Labcd/ME;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/MK;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/MK;->j6:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic j6(Labcd/MK;I)V
    .registers 2

    iput p1, p0, Labcd/MK;->v5:I

    return-void
.end method

.method static synthetic j6(Labcd/MK;Labcd/KK;)V
    .registers 2

    iput-object p1, p0, Labcd/MK;->DW:Labcd/KK;

    return-void
.end method

.method static synthetic j6(Labcd/MK;Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/MK;->Zo:Z

    return-void
.end method

.method static synthetic v5(Labcd/MK;)Labcd/KK;
    .registers 2

    iget-object v0, p0, Labcd/MK;->Hw:Labcd/KK;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Labcd/MK;->get(Ljava/lang/Object;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/MK;->VH:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Labcd/LK;

    invoke-direct {v0, p0}, Labcd/LK;-><init>(Labcd/MK;)V

    iput-object v0, p0, Labcd/MK;->VH:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Labcd/MK;->VH:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Labcd/ME;
    .registers 4

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Labcd/MK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Labcd/MK;->Hw:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/MK;->DW:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/MK;->get(Ljava/lang/Object;)Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Labcd/MK;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;Labcd/ME;)Labcd/ME;
    .registers 7

    invoke-direct {p0, p1}, Labcd/MK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/MK;->Hw:Labcd/KK;

    invoke-virtual {v0}, Labcd/KK;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/MK;->Hw:Labcd/KK;

    invoke-virtual {v0}, Labcd/KK;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object v0

    iput-object v0, p0, Labcd/MK;->Hw:Labcd/KK;

    :cond_0
    iget-object v0, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v0, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    iget-object v1, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v1, v2, p2}, Labcd/KK;->DW(ILabcd/ME;)Labcd/KK;

    move-result-object v1

    iput-object v1, p0, Labcd/MK;->FH:Labcd/KK;

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    iget-object v3, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v3, v0}, Labcd/KK;->j6(Labcd/ME;)Labcd/KK;

    move-result-object v0

    iput-object v0, p0, Labcd/MK;->FH:Labcd/KK;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Labcd/MK;->get(Ljava/lang/Object;)Labcd/ME;

    move-result-object v0

    iget-object v1, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v1, v2, p2}, Labcd/KK;->j6(ILabcd/ME;)Labcd/KK;

    move-result-object v1

    iput-object v1, p0, Labcd/MK;->FH:Labcd/KK;

    const/4 v1, 0x0

    iput-boolean v1, p0, Labcd/MK;->Zo:Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Labcd/ME;

    invoke-virtual {p0, p1, p2}, Labcd/MK;->j6(Ljava/lang/String;Labcd/ME;)Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Labcd/ME;
    .registers 7

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Labcd/MK;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Labcd/MK;->DW:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v0, p0, Labcd/MK;->DW:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    iget-object v3, p0, Labcd/MK;->DW:Labcd/KK;

    invoke-virtual {v3, v2}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v2

    iput-object v2, p0, Labcd/MK;->DW:Labcd/KK;

    iput-boolean v4, p0, Labcd/MK;->Zo:Z

    :goto_0
    iget-object v2, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v2, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    iget-object v3, p0, Labcd/MK;->FH:Labcd/KK;

    invoke-virtual {v3, v2}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v2

    iput-object v2, p0, Labcd/MK;->FH:Labcd/KK;

    iput-boolean v4, p0, Labcd/MK;->Zo:Z

    :cond_0
    iget-object v2, p0, Labcd/MK;->Hw:Labcd/KK;

    invoke-virtual {v2, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v0, p0, Labcd/MK;->Hw:Labcd/KK;

    invoke-virtual {v0, v1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    iget-object v1, p0, Labcd/MK;->Hw:Labcd/KK;

    invoke-virtual {v1, v2}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v1

    iput-object v1, p0, Labcd/MK;->Hw:Labcd/KK;

    iput-boolean v4, p0, Labcd/MK;->Zo:Z

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/MK;->remove(Ljava/lang/Object;)Labcd/ME;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
