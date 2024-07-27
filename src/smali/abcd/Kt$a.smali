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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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

    move-result-object v2

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v2, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    iget-object v0, p0, Labcd/Kt$a;->j6:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Labcd/ot;->FH(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0, v3, v5}, Labcd/tt;->DW(Labcd/bs;Labcd/bs;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
