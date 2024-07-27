.class public Labcd/NE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# static fields
.field public static final j6:Labcd/NE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/NE;

    invoke-direct {v0}, Labcd/NE;-><init>()V

    sput-object v0, Labcd/NE;->j6:Labcd/NE;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DW(Labcd/ME;Labcd/ME;)I
    .registers 4

    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static j6(Labcd/ME;Ljava/lang/String;)I
    .registers 3

    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static j6(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Labcd/NE;->j6:Labcd/NE;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/ME;

    check-cast p2, Labcd/ME;

    invoke-virtual {p0, p1, p2}, Labcd/NE;->j6(Labcd/ME;Labcd/ME;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/ME;Labcd/ME;)I
    .registers 4

    invoke-static {p1, p2}, Labcd/NE;->DW(Labcd/ME;Labcd/ME;)I

    move-result v0

    return v0
.end method
