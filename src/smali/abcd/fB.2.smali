.class Labcd/fB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gB;->call()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/gB;


# direct methods
.method constructor <init>(Labcd/gB;)V
    .registers 2

    iput-object p1, p0, Labcd/fB;->j6:Labcd/gB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/ME;

    check-cast p2, Labcd/ME;

    invoke-virtual {p0, p1, p2}, Labcd/fB;->j6(Labcd/ME;Labcd/ME;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/ME;Labcd/ME;)I
    .registers 5

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
