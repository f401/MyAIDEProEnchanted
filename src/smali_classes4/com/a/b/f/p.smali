.class Lcom/a/b/f/p;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/BitSet;

.field b:Lcom/a/b/f/q;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:Z


# direct methods
.method constructor <init>(IILcom/a/b/f/q;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/f/p;->a:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    iput-object p3, p0, Lcom/a/b/f/p;->b:Lcom/a/b/f/q;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/p;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/f/p;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/f/p;->e:Z

    return-void
.end method
