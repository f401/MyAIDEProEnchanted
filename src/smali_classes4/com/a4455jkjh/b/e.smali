.class public Lcom/a4455jkjh/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/na;


# instance fields
.field private final a:Labcd/qa;

.field private final b:Labcd/pa;


# direct methods
.method public constructor <init>(Labcd/La;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a4455jkjh/b/f;

    invoke-direct {v0, p1}, Lcom/a4455jkjh/b/f;-><init>(Labcd/La;)V

    iput-object v0, p0, Lcom/a4455jkjh/b/e;->b:Labcd/pa;

    new-instance v0, Lcom/a4455jkjh/b/g;

    invoke-direct {v0, p1}, Lcom/a4455jkjh/b/g;-><init>(Labcd/La;)V

    iput-object v0, p0, Lcom/a4455jkjh/b/e;->a:Labcd/qa;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    return-void
.end method

.method public FH()Labcd/ra;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public Hw()Labcd/ga;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public VH()Labcd/oa;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public Zo()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public gn()Labcd/ia;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "Smali"

    return-object v0
.end method

.method public j6(C)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public u7()Labcd/qa;
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/b/e;->a:Labcd/qa;

    return-object v0
.end method

.method public v5()Labcd/pa;
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/b/e;->b:Labcd/pa;

    return-object v0
.end method
