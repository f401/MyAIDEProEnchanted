.class public final Lcom/a/b/e/a/c;
.super Lcom/a/b/g/t;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/a/b/e/a/c;


# instance fields
.field private final b:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/e/a/c;

    invoke-direct {v0}, Lcom/a/b/e/a/c;-><init>()V

    sput-object v0, Lcom/a/b/e/a/c;->a:Lcom/a/b/e/a/c;

    sget-object v0, Lcom/a/b/e/a/c;->a:Lcom/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/a/b/e/a/c;->c_()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/a/b/g/t;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public static a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/a;)Lcom/a/b/e/a/c;
    .registers 3

    new-instance v0, Lcom/a/b/e/a/c;

    invoke-direct {v0}, Lcom/a/b/e/a/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/a/b/e/a/c;->b(Lcom/a/b/e/a/c;)V

    invoke-virtual {v0, p1}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/a;)V

    invoke-virtual {v0}, Lcom/a/b/e/a/c;->c_()V

    return-object v0
.end method

.method public static a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/c;)Lcom/a/b/e/a/c;
    .registers 3

    new-instance v0, Lcom/a/b/e/a/c;

    invoke-direct {v0}, Lcom/a/b/e/a/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/a/b/e/a/c;->b(Lcom/a/b/e/a/c;)V

    invoke-virtual {v0, p1}, Lcom/a/b/e/a/c;->b(Lcom/a/b/e/a/c;)V

    invoke-virtual {v0}, Lcom/a/b/e/a/c;->c_()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/b/e/a/c;)I
    .registers 6

    iget-object v0, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v0, p1, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/a;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/a/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/a/a;->a(Lcom/a/b/e/a/a;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/a/b/e/a/a;)V
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/e/a/c;->l()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/b/e/a/a;->b()Lcom/a/b/e/c/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public b(Lcom/a/b/e/a/c;)V
    .registers 4

    invoke-virtual {p0}, Lcom/a/b/e/a/c;->l()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "toAdd == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/a;

    invoke-virtual {p0, v0}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/a;)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/a/c;

    invoke-virtual {p0, p1}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/a/b/e/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/a/b/e/a/c;

    iget-object v0, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "annotations{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/a;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/a/b/e/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
