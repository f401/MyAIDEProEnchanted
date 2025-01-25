.class public Lcom/a4455jkjh/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/la;


# instance fields
.field private final a:Labcd/na;

.field private b:Lcom/a4455jkjh/b/d;


# direct methods
.method public constructor <init>(Labcd/La;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a4455jkjh/b/e;

    invoke-direct {v0, p1}, Lcom/a4455jkjh/b/e;-><init>(Labcd/La;)V

    iput-object v0, p0, Lcom/a4455jkjh/b/j;->a:Labcd/na;

    if-eqz p1, :cond_17

    new-instance v0, Lcom/a4455jkjh/b/d;

    iget-object v1, p1, Labcd/La;->rN:Labcd/Ca;

    iget-object v2, p0, Lcom/a4455jkjh/b/j;->a:Labcd/na;

    invoke-direct {v0, v1, v2}, Lcom/a4455jkjh/b/d;-><init>(Labcd/Ca;Labcd/na;)V

    iput-object v0, p0, Lcom/a4455jkjh/b/j;->b:Lcom/a4455jkjh/b/d;

    :cond_17
    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public DW()V
    .registers 1

    return-void
.end method

.method public EQ()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public FH()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public Hw()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*.smali"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public VH()V
    .registers 1

    return-void
.end method

.method public Zo()Labcd/ka;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public gn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "Smali"

    return-object v0
.end method

.method public j6(Labcd/Da;Labcd/na;)V
    .registers 3

    return-void
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;)V
    .registers 6

    iget-object v1, p0, Lcom/a4455jkjh/b/j;->b:Lcom/a4455jkjh/b/d;

    iget-object v0, p0, Lcom/a4455jkjh/b/j;->a:Labcd/na;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Wa;

    invoke-virtual {v1, p1, p2, v0}, Lcom/a4455jkjh/b/d;->a(Labcd/Da;Ljava/io/Reader;Labcd/Wa;)V

    return-void
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;Z)V
    .registers 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a4455jkjh/b/j;->a:Labcd/na;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/a4455jkjh/b/j;->a:Labcd/na;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    new-array v3, v1, [I

    move v4, v1

    move v5, v1

    move v6, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Sa;->DW(I)V

    :cond_1f
    return-void
.end method

.method public j6(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public tp()Labcd/ma;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public u7()Labcd/ja;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public v5()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/a4455jkjh/b/j;->a:Labcd/na;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
