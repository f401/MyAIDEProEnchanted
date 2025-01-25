.class Labcd/Vo$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/Vo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/Uo;)V
    .registers 2

    invoke-direct {p0}, Labcd/Vo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/Vo;

    check-cast p2, Labcd/Vo;

    invoke-virtual {p0, p1, p2}, Labcd/Vo$a;->j6(Labcd/Vo;Labcd/Vo;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/Vo;Labcd/Vo;)I
    .registers 3

    invoke-static {p1}, Labcd/Vo;->j6(Labcd/Vo;)Labcd/Pp;

    move-result-object p1

    invoke-virtual {p1}, Labcd/up;->we()I

    move-result p1

    invoke-static {p2}, Labcd/Vo;->j6(Labcd/Vo;)Labcd/Pp;

    move-result-object p2

    invoke-virtual {p2}, Labcd/up;->we()I

    move-result p2

    if-ge p1, p2, :cond_14

    const/4 p1, -0x1

    return p1

    :cond_14
    if-le p1, p2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method
