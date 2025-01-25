.class Labcd/Kt$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ot$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final j6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Labcd/tt;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Kt$a;->j6:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public j6(Labcd/ot;)V
    .registers 9

    invoke-virtual {p1}, Labcd/ot;->tp()Labcd/cs;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_25

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    iget-object v5, p0, Labcd/Kt$a;->j6:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Labcd/ot;->FH(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/tt;

    invoke-virtual {v5, v1, v4}, Labcd/tt;->DW(Labcd/bs;Labcd/bs;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_25
    return-void
.end method
