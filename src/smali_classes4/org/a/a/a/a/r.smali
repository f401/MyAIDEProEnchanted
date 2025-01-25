.class public Lorg/a/a/a/a/r;
.super Lorg/a/a/a/a/ax;


# static fields
.field static final c:Z


# instance fields
.field public final a:[Lorg/a/a/a/a/ax;

.field public final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/a/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/a/a/a/a/r;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/a/a/a/a/bg;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    iget v1, p1, Lorg/a/a/a/a/bg;->b:I

    new-array v2, v4, [Lorg/a/a/a/a/ax;

    aput-object v0, v2, v3

    new-array v0, v4, [I

    aput v1, v0, v3

    invoke-direct {p0, v2, v0}, Lorg/a/a/a/a/r;-><init>([Lorg/a/a/a/a/ax;[I)V

    return-void
.end method

.method public constructor <init>([Lorg/a/a/a/a/ax;[I)V
    .registers 4

    invoke-static {p1, p2}, Lorg/a/a/a/a/r;->a([Lorg/a/a/a/a/ax;[I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/a/a/a/a/ax;-><init>(I)V

    sget-boolean v0, Lorg/a/a/a/a/r;->c:Z

    if-nez v0, :cond_16

    if-eqz p1, :cond_10

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    sget-boolean v0, Lorg/a/a/a/a/r;->c:Z

    if-nez v0, :cond_25

    if-eqz p2, :cond_1f

    array-length v0, p2

    if-gtz v0, :cond_25

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_25
    iput-object p1, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    iput-object p2, p0, Lorg/a/a/a/a/r;->b:[I

    return-void
.end method


# virtual methods
.method public a(I)Lorg/a/a/a/a/ax;
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/a/a/a/a/r;->b:[I

    aget v1, v1, v0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v0, v0

    return v0
.end method

.method public b(I)I
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/r;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lorg/a/a/a/a/r;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/a/a/a/a/r;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_5

    check-cast p1, Lorg/a/a/a/a/r;

    iget-object v2, p0, Lorg/a/a/a/a/r;->b:[I

    iget-object v3, p1, Lorg/a/a/a/a/r;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    iget-object v3, p1, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lorg/a/a/a/a/r;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "[]"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_14
    iget-object v2, p0, Lorg/a/a/a/a/r;->b:[I

    array-length v2, v2

    if-lt v0, v2, :cond_23

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_23
    if-lez v0, :cond_2a

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v2, p0, Lorg/a/a/a/a/r;->b:[I

    aget v2, v2, v0

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_3b

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3b
    iget-object v2, p0, Lorg/a/a/a/a/r;->b:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v2, v2, v0

    if-eqz v2, :cond_59

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/a/a/a/a/r;->a:[Lorg/a/a/a/a/ax;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_59
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38
.end method
