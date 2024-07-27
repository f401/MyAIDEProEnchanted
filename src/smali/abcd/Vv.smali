.class final Labcd/Vv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Wv;->j6()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/Wv$a;",
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
    .registers 4

    check-cast p1, Labcd/Wv$a;

    check-cast p2, Labcd/Wv$a;

    invoke-virtual {p0, p1, p2}, Labcd/Vv;->j6(Labcd/Wv$a;Labcd/Wv$a;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Wv$a;Labcd/Wv$a;)I
    .registers 7

    iget-wide v0, p1, Labcd/Wv$a;->Hw:J

    iget-wide v2, p2, Labcd/Wv$a;->Hw:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
