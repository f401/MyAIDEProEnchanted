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
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Lc$f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private DW:Z

.field final FH:Labcd/c;

.field private j6:Labcd/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Labcd/c;)V
    .registers 3

    iput-object p1, p0, Labcd/c$d;->FH:Labcd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/c$d;->DW:Z

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Labcd/c$d;->DW:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Labcd/c$d;->FH:Labcd/c;

    invoke-static {v2}, Labcd/c;->j6(Labcd/c;)Labcd/c$c;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Labcd/c$d;->j6:Labcd/c$c;

    if-eqz v2, :cond_3

    iget-object v2, v2, Labcd/c$c;->j6:Labcd/c$c;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
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
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/c$d;->DW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/c$d;->DW:Z

    iget-object v0, p0, Labcd/c$d;->FH:Labcd/c;

    invoke-static {v0}, Labcd/c;->j6(Labcd/c;)Labcd/c$c;

    move-result-object v0

    iput-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    :goto_0
    iget-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Labcd/c$c;->j6:Labcd/c$c;

    :goto_1
    iput-object v0, p0, Labcd/c$d;->j6:Labcd/c$c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
