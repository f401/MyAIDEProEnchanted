.class Labcd/c$a;
.super Labcd/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Labcd/c$c;Labcd/c$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc$c<",
            "TK;TV;>;",
            "Lc$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Labcd/c$e;-><init>(Labcd/c$c;Labcd/c$c;)V

    return-void
.end method


# virtual methods
.method j6(Labcd/c$c;)Labcd/c$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc$c<",
            "TK;TV;>;)",
            "Lc$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Labcd/c$c;->j6:Labcd/c$c;

    return-object p1
.end method
