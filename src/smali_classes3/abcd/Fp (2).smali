.class public final Labcd/Fp;
.super Labcd/Kp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Fp$a;
    }
.end annotation


# static fields
.field private static final Zo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Labcd/Gp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Gp;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Labcd/Gp;",
            "Labcd/Gp;",
            ">;"
        }
    .end annotation
.end field

.field private tp:I

.field private final u7:Labcd/Fp$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Dp;

    invoke-direct {v0}, Labcd/Dp;-><init>()V

    sput-object v0, Labcd/Fp;->Zo:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/Kp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Labcd/Fp;->gn:Ljava/util/HashMap;

    iput-object p4, p0, Labcd/Fp;->u7:Labcd/Fp$a;

    const/4 p1, -0x1

    iput p1, p0, Labcd/Fp;->tp:I

    return-void
.end method


# virtual methods
.method public DW(Labcd/Gp;)Labcd/Gp;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/Gp;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    iget-object v0, p0, Labcd/Fp;->gn:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    invoke-virtual {p0, p1}, Labcd/Fp;->j6(Labcd/Gp;)V

    iget-object v0, p0, Labcd/Fp;->gn:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected FH(Labcd/Lt;)V
    .registers 12

    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v0

    invoke-virtual {p0}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v1

    iget-object v2, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/Gp;

    if-eqz v0, :cond_29

    if-eqz v6, :cond_24

    const/4 v6, 0x0

    goto :goto_29

    :cond_24
    const-string v8, "\n"

    invoke-interface {p1, v3, v8}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_29
    :goto_29
    invoke-virtual {v7}, Labcd/Gp;->J8()I

    move-result v8

    sub-int/2addr v8, v4

    xor-int/lit8 v9, v8, -0x1

    add-int/2addr v8, v5

    and-int/2addr v8, v9

    if-eq v5, v8, :cond_3a

    sub-int v5, v8, v5

    invoke-interface {p1, v5}, Labcd/ku;->j6(I)V

    move v5, v8

    :cond_3a
    invoke-virtual {v7, v1, p1}, Labcd/Gp;->j6(Labcd/jp;Labcd/Lt;)V

    invoke-virtual {v7}, Labcd/Gp;->VH()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_12

    :cond_43
    iget p1, p0, Labcd/Fp;->tp:I

    if-ne v5, p1, :cond_48

    return-void

    :cond_48
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "output size mismatch"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_51

    :goto_50
    throw p1

    :goto_51
    goto :goto_50
.end method

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

    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected Zo()V
    .registers 5

    invoke-virtual {p0}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    iget-object v2, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    return-void

    :cond_e
    :goto_e
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Gp;

    invoke-virtual {v3, v0}, Labcd/vp;->j6(Labcd/jp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public j6(Labcd/vp;)I
    .registers 2

    check-cast p1, Labcd/Gp;

    invoke-virtual {p1}, Labcd/Gp;->we()I

    move-result p1

    return p1
.end method

.method public j6(Labcd/Gp;)V
    .registers 4

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    :try_start_3
    invoke-virtual {p1}, Labcd/Gp;->J8()I

    move-result v0

    invoke-virtual {p0}, Labcd/Kp;->j6()I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_b} :catch_1b

    if-gt v0, v1, :cond_13

    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_13
    :try_start_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible item alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "item == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Lt;Labcd/wp;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Gp;

    invoke-virtual {v2}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v3

    if-ne v3, p2, :cond_e

    invoke-virtual {v2}, Labcd/Gp;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_28
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result p2

    if-nez p2, :cond_2f

    return-void

    :cond_2f
    const/4 p2, 0x0

    invoke-interface {p1, p2, p3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_3b

    :cond_74
    return-void
.end method

.method public tp()V
    .registers 6

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    sget-object v0, Labcd/Ep;->j6:[I

    iget-object v1, p0, Labcd/Fp;->u7:Labcd/Fp$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    goto :goto_21

    :cond_14
    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    sget-object v1, Labcd/Fp;->Zo:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_21

    :cond_1c
    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_21
    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_29
    if-ge v1, v0, :cond_6f

    iget-object v3, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Gp;

    :try_start_33
    invoke-virtual {v3, p0, v2}, Labcd/Gp;->j6(Labcd/Kp;I)I

    move-result v4

    if-lt v4, v2, :cond_41

    invoke-virtual {v3}, Labcd/Gp;->VH()I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus place() result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_58} :catch_58

    :catch_58
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while placing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v0

    throw v0

    :cond_6f
    iput v2, p0, Labcd/Fp;->tp:I

    return-void
.end method

.method public u7()I
    .registers 2

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget v0, p0, Labcd/Fp;->tp:I

    return v0
.end method
