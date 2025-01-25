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
        "Ljava/util/Comparator<",
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
    .registers 3

    check-cast p1, Labcd/ME;

    check-cast p2, Labcd/ME;

    invoke-virtual {p0, p1, p2}, Labcd/fB;->j6(Labcd/ME;Labcd/ME;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/ME;Labcd/ME;)I
    .registers 3

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
