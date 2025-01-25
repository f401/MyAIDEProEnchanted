.class Labcd/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Labcd/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lc$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private DW:Z

.field final FH:Labcd/c;

.field private j6:Labcd/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/c;)V
    .registers 2

    iput-object p1, p0, Labcd/c$d;->FH:Labcd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/c$d;->DW:Z

    return-void
.end method

.method synthetic constructor <init>(Labcd/c;Labcd/b;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/c$d;-><init>(Labcd/c;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    iget-boolean v0, p0, Labcd/c$d;->DW:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Labcd/c$d;->FH:Labcd/c;

    invoke-static {v0}, Labcd/c;->j6(Labcd/c;)Labcd/c$c;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    :cond_10
    iget-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    if-eqz v0, :cond_19

    iget-object v0, v0, Labcd/c$c;->j6:Labcd/c$c;

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/c$d;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/c$d;->DW:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/c$d;->DW:Z

    iget-object v0, p0, Labcd/c$d;->FH:Labcd/c;

    invoke-static {v0}, Labcd/c;->j6(Labcd/c;)Labcd/c$c;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    goto :goto_19

    :cond_10
    iget-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    if-eqz v0, :cond_17

    iget-object v0, v0, Labcd/c$c;->j6:Labcd/c$c;

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    goto :goto_d

    :goto_19
    iget-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    return-object v0
.end method
