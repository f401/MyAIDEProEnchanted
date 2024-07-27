.class public final Lorg/a/a/a/a/e;
.super Lorg/a/a/a/c/a;


# static fields
.field public static final a:Lorg/a/a/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/a/a/a/a/e;

    invoke-direct {v0}, Lorg/a/a/a/a/e;-><init>()V

    sput-object v0, Lorg/a/a/a/a/e;->a:Lorg/a/a/a/a/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/a/a/a/a/b;

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/e;->a(Lorg/a/a/a/a/b;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/a/a/a/a/b;)I
    .registers 4

    iget-object v0, p1, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v0, v0, Lorg/a/a/a/a/n;->c:I

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p1, Lorg/a/a/a/a/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p1, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lorg/a/a/a/a/b;

    check-cast p2, Lorg/a/a/a/a/b;

    invoke-virtual {p0, p1, p2}, Lorg/a/a/a/a/e;->a(Lorg/a/a/a/a/b;Lorg/a/a/a/a/b;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/a/a/a/a/b;Lorg/a/a/a/a/b;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v2, v2, Lorg/a/a/a/a/n;->c:I

    iget-object v3, p2, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v3, v3, Lorg/a/a/a/a/n;->c:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lorg/a/a/a/a/b;->b:I

    iget v3, p2, Lorg/a/a/a/a/b;->b:I

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    iget-object v3, p2, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
