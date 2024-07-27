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
        "Ljava/util/Comparator",
        "<",
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
    .registers 4

    check-cast p1, Labcd/Vo;

    check-cast p2, Labcd/Vo;

    invoke-virtual {p0, p1, p2}, Labcd/Vo$a;->j6(Labcd/Vo;Labcd/Vo;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Vo;Labcd/Vo;)I
    .registers 5

    invoke-static {p1}, Labcd/Vo;->j6(Labcd/Vo;)Labcd/Pp;

    move-result-object v0

    invoke-virtual {v0}, Labcd/up;->we()I

    move-result v0

    invoke-static {p2}, Labcd/Vo;->j6(Labcd/Vo;)Labcd/Pp;

    move-result-object v1

    invoke-virtual {v1}, Labcd/up;->we()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
