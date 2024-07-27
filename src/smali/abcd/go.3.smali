.class public final Labcd/go;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Vn;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/ho;


# direct methods
.method public constructor <init>(Labcd/Fn;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/ho;

    invoke-direct {v0, p1, p2, p4}, Labcd/ho;-><init>(Labcd/Fn;II)V

    iput-object v0, p0, Labcd/go;->j6:Labcd/ho;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/go;->DW:Ljava/util/ArrayList;

    return-void
.end method

.method private DW()V
    .registers 5

    iget-object v0, p0, Labcd/go;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Labcd/go;->j6:Labcd/ho;

    iget-object v0, p0, Labcd/go;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-virtual {v3, v0}, Labcd/ho;->j6(Labcd/Vn;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/go;->DW:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public DW(Labcd/Vn;)V
    .registers 3

    iget-object v0, p0, Labcd/go;->DW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6()Labcd/ho;
    .registers 3

    iget-object v0, p0, Labcd/go;->DW:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/go;->DW()V

    iget-object v0, p0, Labcd/go;->j6:Labcd/ho;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(ILabcd/Sn;)V
    .registers 4

    iget-object v0, p0, Labcd/go;->j6:Labcd/ho;

    invoke-virtual {v0, p1, p2}, Labcd/ho;->j6(ILabcd/Sn;)V

    return-void
.end method

.method public j6(Labcd/Vn;)V
    .registers 3

    iget-object v0, p0, Labcd/go;->j6:Labcd/ho;

    invoke-virtual {v0, p1}, Labcd/ho;->j6(Labcd/Vn;)V

    return-void
.end method
