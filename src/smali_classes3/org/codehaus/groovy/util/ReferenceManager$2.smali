.class final Lorg/codehaus/groovy/util/ReferenceManager$2;
.super Lorg/codehaus/groovy/util/ReferenceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/util/ReferenceManager;->j6(Ljava/lang/ref/ReferenceQueue;Lorg/codehaus/groovy/util/ReferenceManager;I)Lorg/codehaus/groovy/util/ReferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private Hw:Ljava/util/concurrent/atomic/AtomicInteger;

.field final VH:Lorg/codehaus/groovy/util/ReferenceManager;

.field final Zo:Ljava/lang/ref/ReferenceQueue;

.field final gn:I

.field private volatile v5:Lorg/codehaus/groovy/util/ReferenceManager;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lorg/codehaus/groovy/util/ReferenceManager;I)V
    .registers 5

    iput-object p2, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->Zo:Ljava/lang/ref/ReferenceQueue;

    iput-object p3, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->VH:Lorg/codehaus/groovy/util/ReferenceManager;

    iput p4, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->gn:I

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/ReferenceManager;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p2}, Lorg/codehaus/groovy/util/ReferenceManager;->DW(Ljava/lang/ref/ReferenceQueue;)Lorg/codehaus/groovy/util/ReferenceManager;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->v5:Lorg/codehaus/groovy/util/ReferenceManager;

    return-void
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/util/Reference;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->v5:Lorg/codehaus/groovy/util/ReferenceManager;

    iget-object v1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->VH:Lorg/codehaus/groovy/util/ReferenceManager;

    if-ne v0, v1, :cond_a

    invoke-virtual {v1, p1}, Lorg/codehaus/groovy/util/ReferenceManager;->j6(Lorg/codehaus/groovy/util/Reference;)V

    return-void

    :cond_a
    iget-object p1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->gn:I

    if-gt p1, v0, :cond_16

    if-gez p1, :cond_1a

    :cond_16
    iget-object p1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->VH:Lorg/codehaus/groovy/util/ReferenceManager;

    iput-object p1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->v5:Lorg/codehaus/groovy/util/ReferenceManager;

    :cond_1a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReferenceManager(thresholded, current manager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->v5:Lorg/codehaus/groovy/util/ReferenceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/util/ReferenceManager$2;->gn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
