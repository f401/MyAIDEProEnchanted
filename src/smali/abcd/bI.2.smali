.class abstract Labcd/bI;
.super Labcd/aI;

# interfaces
.implements Labcd/nI;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Labcd/aI;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation
.end method

.method public Zo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/aI;->gn()V

    invoke-virtual {p0, p1, p2, p3}, Labcd/bI;->DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V

    return-void
.end method
