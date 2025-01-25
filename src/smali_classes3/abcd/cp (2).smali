.class public final Labcd/cp;
.super Labcd/Sp;


# instance fields
.field private VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/bp;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Labcd/Qs;",
            "Labcd/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/jp;)V
    .registers 4

    const-string v0, "class_defs"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/Sp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/cp;->VH:Ljava/util/ArrayList;

    return-void
.end method

.method private j6(Labcd/Qs;II)I
    .registers 8

    iget-object v0, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bp;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Labcd/up;->J8()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_5b

    :cond_11
    if-ltz p3, :cond_44

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0}, Labcd/bp;->j3()Labcd/Ks;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Labcd/cp;->j6(Labcd/Qs;II)I

    move-result p2

    :cond_23
    invoke-virtual {v0}, Labcd/bp;->aM()Labcd/Ss;

    move-result-object p1

    invoke-interface {p1}, Labcd/Ss;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_39

    invoke-interface {p1, v2}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Labcd/cp;->j6(Labcd/Qs;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_39
    invoke-virtual {v0, p2}, Labcd/up;->j6(I)V

    iget-object p1, p0, Labcd/cp;->VH:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "class circularity with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    :goto_5b
    return p2
.end method


# virtual methods
.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Labcd/vp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/cp;->VH:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public Hw(Labcd/Lt;)V
    .registers 7

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget-object v0, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Labcd/Kp;->FH()I

    move-result v1

    :goto_11
    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class_defs_size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class_defs_off:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_48
    invoke-interface {p1, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p1, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method

.method public j6(Labcd/bp;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Labcd/bp;->Mr()Labcd/Ks;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_30

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    iget-object v1, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    iget-object v1, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already added: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_30
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "clazz == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected tp()V
    .registers 6

    iget-object v0, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Labcd/cp;->VH:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/cp;->Zo:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Qs;

    sub-int v4, v0, v2

    invoke-direct {p0, v3, v2, v4}, Labcd/cp;->j6(Labcd/Qs;II)I

    move-result v2

    goto :goto_18

    :cond_2b
    return-void
.end method
