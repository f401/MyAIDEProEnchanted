.class public Lorg/c/a/a/c/a/a/c/ao;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/c/ao;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/ao;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 6

    const v0, 0x4b80413a  # 1.6810612E7f

    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/a/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Lorg/c/a/a/c/a/a/c/ap;

    invoke-direct {v0, p1, p2}, Lorg/c/a/a/c/a/a/c/ap;-><init>(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/ao;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CFG watchdog: parent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/ao;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3a
    return-void
.end method
