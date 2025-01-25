.class abstract Labcd/c$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Labcd/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lc$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field DW:Labcd/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field j6:Labcd/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/c$e;->j6:Labcd/c$c;

    iput-object p1, p0, Labcd/c$e;->DW:Labcd/c$c;

    return-void
.end method

.method private j6()Labcd/c$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/c$e;->DW:Labcd/c$c;

    iget-object v1, p0, Labcd/c$e;->j6:Labcd/c$c;

    if-eq v0, v1, :cond_e

    if-nez v1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0, v0}, Labcd/c$e;->j6(Labcd/c$c;)Labcd/c$c;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Labcd/c$e;->DW:Labcd/c$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method abstract j6(Labcd/c$c;)Labcd/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc$c<",
            "TK;TV;>;)",
            "Lc$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/c$e;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/c$e;->DW:Labcd/c$c;

    invoke-direct {p0}, Labcd/c$e;->j6()Labcd/c$c;

    move-result-object v1

    iput-object v1, p0, Labcd/c$e;->DW:Labcd/c$c;

    return-object v0
.end method
