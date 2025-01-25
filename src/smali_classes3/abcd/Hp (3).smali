.class public final Labcd/Hp;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lu;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Labcd/lu;",
        "Ljava/lang/Comparable<",
        "Labcd/Hp;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Kr;

.field private final FH:Labcd/Tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTp<",
            "Labcd/Xo;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/Gs;


# direct methods
.method public constructor <init>(Labcd/Gs;Labcd/Kr;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3d

    if-eqz p2, :cond_35

    iput-object p1, p0, Labcd/Hp;->j6:Labcd/Gs;

    iput-object p2, p0, Labcd/Hp;->DW:Labcd/Kr;

    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_2b

    new-instance v2, Labcd/Xo;

    new-instance v3, Labcd/Wo;

    invoke-virtual {p2, v1}, Labcd/Kr;->get(I)Labcd/Jr;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/Wo;-><init>(Labcd/Jr;)V

    invoke-direct {v2, v3}, Labcd/Xo;-><init>(Labcd/Wo;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2b
    new-instance p1, Labcd/Tp;

    sget-object p2, Labcd/wp;->tp:Labcd/wp;

    invoke-direct {p1, p2, v0}, Labcd/Tp;-><init>(Labcd/wp;Ljava/util/List;)V

    iput-object p1, p0, Labcd/Hp;->FH:Labcd/Tp;

    return-void

    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotationsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_46

    :goto_45
    throw p1

    :goto_46
    goto :goto_45
.end method


# virtual methods
.method public aM()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v1}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Hp;->FH:Labcd/Tp;

    invoke-virtual {v1}, Labcd/Tp;->j3()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Xo;

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    invoke-virtual {v3}, Labcd/Xo;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Hp;

    invoke-virtual {p0, p1}, Labcd/Hp;->j6(Labcd/Hp;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/Hp;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    check-cast p1, Labcd/Hp;

    iget-object p1, p1, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0, p1}, Labcd/Fs;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0}, Labcd/Fs;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Hp;)I
    .registers 3

    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    iget-object p1, p1, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object p1

    iget-object v1, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0, v1}, Labcd/Cp;->DW(Labcd/qs;)Labcd/Bp;

    iget-object v0, p0, Labcd/Hp;->FH:Labcd/Tp;

    invoke-virtual {p1, v0}, Labcd/Fp;->j6(Labcd/Gp;)V

    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 7

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object p1

    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {p1, v0}, Labcd/Cp;->j6(Labcd/qs;)I

    move-result p1

    iget-object v0, p0, Labcd/Hp;->FH:Labcd/Tp;

    invoke-virtual {v0}, Labcd/Gp;->we()I

    move-result v0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v2}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      method_idx:      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_62
    invoke-interface {p2, p1}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    return-void
.end method
