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
            "Ljava/util/Comparator",
            "<",
            "Labcd/Gp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Gp;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
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
    .registers 7

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, p3}, Labcd/Kp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Labcd/Fp;->gn:Ljava/util/HashMap;

    iput-object p4, p0, Labcd/Fp;->u7:Labcd/Fp$a;

    const/4 v0, -0x1

    iput v0, p0, Labcd/Fp;->tp:I

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

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Fp;->j6(Labcd/Gp;)V

    iget-object v0, p0, Labcd/Fp;->gn:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_0
.end method

.method protected FH(Labcd/Lt;)V
    .registers 11

    const/4 v3, 0x0

    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v5

    invoke-virtual {p0}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v6

    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_2

    move v1, v3

    :cond_0
    :goto_1
    invoke-virtual {v0}, Labcd/Gp;->J8()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    xor-int/lit8 v8, v4, -0x1

    add-int/2addr v4, v2

    and-int/2addr v4, v8

    if-eq v2, v4, :cond_1

    sub-int v2, v4, v2

    invoke-interface {p1, v2}, Labcd/ku;->j6(I)V

    move v2, v4

    :cond_1
    invoke-virtual {v0, v6, p1}, Labcd/Gp;->j6(Labcd/jp;Labcd/Lt;)V

    invoke-virtual {v0}, Labcd/Gp;->VH()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v4, "\n"

    invoke-interface {p1, v3, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Labcd/Fp;->tp:I

    if-ne v2, v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "output size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
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

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-void

    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    invoke-virtual {v0, v2}, Labcd/vp;->j6(Labcd/jp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public j6(Labcd/vp;)I
    .registers 3

    check-cast p1, Labcd/Gp;

    invoke-virtual {p1}, Labcd/Gp;->we()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Gp;)V
    .registers 4

    invoke-virtual {p0}, Labcd/Kp;->gn()V

    :try_start_0
    invoke-virtual {p1}, Labcd/Gp;->J8()I

    move-result v0

    invoke-virtual {p0}, Labcd/Kp;->j6()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible item alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/Lt;Labcd/wp;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    invoke-virtual {v0}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v0}, Labcd/Gp;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1, v4, p3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public tp()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    sget-object v1, Labcd/Ep;->j6:[I

    iget-object v2, p0, Labcd/Fp;->u7:Labcd/Fp$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Gp;

    :try_start_0
    invoke-virtual {v0, p0, v1}, Labcd/Gp;->j6(Labcd/Kp;I)I

    move-result v4

    if-lt v4, v1, :cond_2

    invoke-virtual {v0}, Labcd/Gp;->VH()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    sget-object v2, Labcd/Fp;->Zo:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Labcd/Fp;->VH:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bogus place() result for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while placing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v0

    throw v0

    :cond_3
    iput v1, p0, Labcd/Fp;->tp:I

    return-void
.end method

.method public u7()I
    .registers 2

    invoke-virtual {p0}, Labcd/Kp;->VH()V

    iget v0, p0, Labcd/Fp;->tp:I

    return v0
.end method
