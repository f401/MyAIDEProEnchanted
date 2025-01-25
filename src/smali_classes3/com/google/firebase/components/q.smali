.class final synthetic Lcom/google/firebase/components/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Labcd/wy;

.field private final j6:Ljava/util/Map$Entry;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;Labcd/wy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/q;->j6:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/q;->DW:Labcd/wy;

    return-void
.end method

.method public static j6(Ljava/util/Map$Entry;Labcd/wy;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Lcom/google/firebase/components/q;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/q;-><init>(Ljava/util/Map$Entry;Labcd/wy;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/components/q;->j6:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/q;->DW:Labcd/wy;

    invoke-static {v0, v1}, Lcom/google/firebase/components/p;->j6(Ljava/util/Map$Entry;Labcd/wy;)V

    return-void
.end method
