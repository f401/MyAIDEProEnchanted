.class Labcd/gK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/hK$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/fK;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/fK;

    check-cast p2, Labcd/fK;

    invoke-virtual {p0, p1, p2}, Labcd/gK;->j6(Labcd/fK;Labcd/fK;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/fK;Labcd/fK;)I
    .registers 3

    iget-object p1, p1, Labcd/fK;->FH:Ljava/lang/String;

    iget-object p2, p2, Labcd/fK;->FH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
