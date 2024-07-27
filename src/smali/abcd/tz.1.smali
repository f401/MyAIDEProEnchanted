.class Labcd/tz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/uz;->DW()V
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
        "Labcd/uz$a;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/uz;


# direct methods
.method constructor <init>(Labcd/uz;)V
    .registers 2

    iput-object p1, p0, Labcd/tz;->j6:Labcd/uz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/uz$a;

    check-cast p2, Labcd/uz$a;

    invoke-virtual {p0, p1, p2}, Labcd/tz;->j6(Labcd/uz$a;Labcd/uz$a;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/uz$a;Labcd/uz$a;)I
    .registers 7

    iget-wide v0, p1, Labcd/uz$a;->DW:J

    iget-wide v2, p2, Labcd/uz$a;->DW:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
