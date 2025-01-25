.class public Lorg/a/a/a/a/bg;
.super Lorg/a/a/a/a/ax;


# static fields
.field static final c:Z


# instance fields
.field public final a:Lorg/a/a/a/a/ax;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/a/bg;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/a/a/a/a/bg;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lorg/a/a/a/a/ax;I)V
    .registers 4

    if-eqz p1, :cond_16

    invoke-static {p1, p2}, Lorg/a/a/a/a/bg;->a(Lorg/a/a/a/a/ax;I)I

    move-result v0

    :goto_6
    invoke-direct {p0, v0}, Lorg/a/a/a/a/ax;-><init>(I)V

    sget-boolean v0, Lorg/a/a/a/a/bg;->c:Z

    if-nez v0, :cond_1b

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    invoke-static {}, Lorg/a/a/a/a/bg;->d()I

    move-result v0

    goto :goto_6

    :cond_1b
    iput-object p1, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    iput p2, p0, Lorg/a/a/a/a/bg;->b:I

    return-void
.end method

.method public static b(Lorg/a/a/a/a/ax;I)Lorg/a/a/a/a/bg;
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    if-nez p0, :cond_a

    sget-object v0, Lorg/a/a/a/a/bg;->d:Lorg/a/a/a/a/y;

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lorg/a/a/a/a/bg;

    invoke-direct {v0, p0, p1}, Lorg/a/a/a/a/bg;-><init>(Lorg/a/a/a/a/ax;I)V

    goto :goto_9
.end method


# virtual methods
.method public a(I)Lorg/a/a/a/a/ax;
    .registers 3

    sget-boolean v0, Lorg/a/a/a/a/bg;->c:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    return-object v0
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)I
    .registers 3

    sget-boolean v0, Lorg/a/a/a/a/bg;->c:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

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
    instance-of v2, p1, Lorg/a/a/a/a/bg;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/a/a/a/a/bg;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_5

    check-cast p1, Lorg/a/a/a/a/bg;

    iget v2, p0, Lorg/a/a/a/a/bg;->b:I

    iget v3, p1, Lorg/a/a/a/a/bg;->b:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    iget-object v3, p1, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    invoke-virtual {v2, v3}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/a/a/a/a/bg;->a:Lorg/a/a/a/a/ax;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1d

    const-string v0, "$"

    :goto_19
    return-object v0

    :cond_1a
    const-string v0, ""

    goto :goto_a

    :cond_1d
    iget v0, p0, Lorg/a/a/a/a/bg;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/a/a/a/a/bg;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method
