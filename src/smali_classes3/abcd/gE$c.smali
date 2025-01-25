.class Labcd/gE$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/gE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final FH:Labcd/gE$c;

.field final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/gE$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Labcd/gE$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/gE$a;",
            ">;",
            "Labcd/gE$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/gE$c;->j6:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f400000  # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p1, v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Labcd/gE$c;->DW:Ljava/util/Map;

    iput-object p2, p0, Labcd/gE$c;->FH:Labcd/gE$c;

    return-void
.end method
