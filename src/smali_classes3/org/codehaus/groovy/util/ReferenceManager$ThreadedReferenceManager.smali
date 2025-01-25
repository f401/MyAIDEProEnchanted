.class Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;
.super Lorg/codehaus/groovy/util/ReferenceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/ReferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadedReferenceManager"
.end annotation


# instance fields
.field private final Hw:Ljava/lang/Thread;

.field private volatile v5:Z


# direct methods
.method static synthetic j6(Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;->v5:Z

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReferenceManager(threaded, thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/util/ReferenceManager$ThreadedReferenceManager;->Hw:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
