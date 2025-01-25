.class public final Labcd/Tp;
.super Labcd/Gp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Labcd/Gp;",
        ">",
        "Labcd/Gp;"
    }
.end annotation


# instance fields
.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final v5:Labcd/wp;


# direct methods
.method public constructor <init>(Labcd/wp;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/wp;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p2}, Labcd/Tp;->j6(Ljava/util/List;)I

    move-result v0

    invoke-static {p2}, Labcd/Tp;->DW(Ljava/util/List;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_12

    iput-object p2, p0, Labcd/Tp;->Zo:Ljava/util/List;

    iput-object p1, p0, Labcd/Tp;->v5:Labcd/wp;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "itemType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static DW(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Labcd/Gp;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Labcd/Gp;->VH()I

    move-result v0

    mul-int v1, v1, v0

    invoke-static {p0}, Labcd/Tp;->j6(Ljava/util/List;)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private Mr()I
    .registers 2

    invoke-virtual {p0}, Labcd/Gp;->J8()I

    move-result v0

    return v0
.end method

.method private static j6(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Labcd/Gp;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/Gp;

    invoke-virtual {p0}, Labcd/Gp;->J8()I

    move-result p0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "items == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1a
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "items.size() == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected DW(Labcd/Kp;I)V
    .registers 10

    invoke-direct {p0}, Labcd/Tp;->Mr()I

    move-result v0

    iget-object v1, p0, Labcd/Tp;->Zo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    add-int/2addr p2, v0

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Gp;

    invoke-virtual {v4}, Labcd/Gp;->VH()I

    move-result v5

    if-eqz v3, :cond_2a

    invoke-virtual {v4}, Labcd/Gp;->J8()I

    move-result v0

    const/4 v2, 0x0

    move v2, v0

    move v0, v5

    const/4 v3, 0x0

    goto :goto_32

    :cond_2a
    if-ne v5, v0, :cond_40

    invoke-virtual {v4}, Labcd/Gp;->J8()I

    move-result v6

    if-ne v6, v2, :cond_38

    :goto_32
    invoke-virtual {v4, p1, p2}, Labcd/Gp;->j6(Labcd/Kp;I)I

    move-result p2

    add-int/2addr p2, v5

    goto :goto_f

    :cond_38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "item alignment mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "item size mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    return-void
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 6

    iget-object v0, p0, Labcd/Tp;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/vp;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_45
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    iget-object v0, p0, Labcd/Tp;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Gp;

    invoke-virtual {v1, p1, p2}, Labcd/Gp;->j6(Labcd/jp;Labcd/Lt;)V

    goto :goto_4e

    :cond_5e
    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    iget-object v0, p0, Labcd/Tp;->v5:Labcd/wp;

    return-object v0
.end method

.method public final aM()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/Tp;->Zo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Gp;

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    goto :goto_28

    :cond_23
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_28
    invoke-virtual {v3}, Labcd/Gp;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    :cond_30
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j3()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Tp;->Zo:Ljava/util/List;

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    iget-object v0, p0, Labcd/Tp;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Gp;

    invoke-virtual {v1, p1}, Labcd/vp;->j6(Labcd/jp;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Labcd/Tp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/Tp;->Zo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
