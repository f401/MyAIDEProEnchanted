.class public final Labcd/sp;
.super Labcd/Sp;


# instance fields
.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/rp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/jp;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Labcd/Sp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    new-instance p1, Labcd/rp;

    invoke-direct {p1}, Labcd/rp;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/up;->j6(I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Labcd/sp;->Zo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Labcd/vp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/sp;->Zo:Ljava/util/List;

    return-object v0
.end method

.method protected tp()V
    .registers 1

    return-void
.end method
