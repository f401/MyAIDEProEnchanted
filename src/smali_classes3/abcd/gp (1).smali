.class Labcd/gp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/hp;->v5()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/co$b;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/hp;


# direct methods
.method constructor <init>(Labcd/hp;)V
    .registers 2

    iput-object p1, p0, Labcd/gp;->j6:Labcd/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/co$b;

    check-cast p2, Labcd/co$b;

    invoke-virtual {p0, p1, p2}, Labcd/gp;->j6(Labcd/co$b;Labcd/co$b;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public j6(Labcd/co$b;Labcd/co$b;)I
    .registers 3

    invoke-virtual {p1}, Labcd/co$b;->we()I

    move-result p1

    invoke-virtual {p2}, Labcd/co$b;->we()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
