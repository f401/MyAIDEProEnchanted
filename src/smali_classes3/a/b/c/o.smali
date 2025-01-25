.class public La/b/c/o;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/j;
.implements La/b/d/a/d;
.implements La/b/g/aq;
.implements La/b/g/s;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:[I

.field private final c:La/b/c/l;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La/b/c/o;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, La/b/c/o;->b:[I

    new-instance v0, La/b/c/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La/b/c/l;-><init>(Z)V

    iput-object v0, p0, La/b/c/o;->c:La/b/c/l;

    const/4 v0, -0x1

    iput v0, p0, La/b/c/o;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/c/o;->e:Z

    return-void
.end method

.method private a([La/b/a/b;I)I
    .registers 7

    iget-object v0, p0, La/b/c/o;->b:[I

    array-length v0, v0

    if-ge v0, p2, :cond_9

    new-array v0, p2, [I

    iput-object v0, p0, La/b/c/o;->b:[I

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v0, p2, :cond_27

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, La/b/c/o;->a(La/b/o;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, La/b/c/o;->b:[I

    aput v1, v3, v0

    add-int/lit8 v3, v1, 0x1

    aput-object v2, p1, v1

    move v1, v3

    goto :goto_24

    :cond_1f
    iget-object v2, p0, La/b/c/o;->b:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return v1
.end method

.method private a(La/b/a/b;)V
    .registers 3

    sget-object v0, La/b/c/o;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, La/b/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(La/b/o;)Z
    .registers 3

    invoke-interface {p1}, La/b/o;->f()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, La/b/c/o;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/b;)V
    .registers 3

    invoke-direct {p0, p2}, La/b/c/o;->a(La/b/a/b;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/c;)V
    .registers 5

    iget v0, p0, La/b/c/o;->d:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_9

    invoke-virtual {p2, p1, v0, p0}, La/b/a/c;->a(La/b/c;ILa/b/a/d/j;)V

    goto :goto_41

    :cond_9
    iget-object v0, p2, La/b/a/c;->d:[La/b/a/b;

    iget v1, p2, La/b/a/c;->c:I

    invoke-direct {p0, v0, v1}, La/b/c/o;->a([La/b/a/b;I)I

    move-result v0

    iget v1, p2, La/b/a/c;->c:I

    if-ge v0, v1, :cond_41

    const/4 v1, 0x1

    iput-boolean v1, p0, La/b/c/o;->e:Z

    iput v0, p2, La/b/a/c;->c:I

    iget p2, p2, La/b/a/c;->c:I

    if-nez p2, :cond_35

    new-instance p2, La/b/c/j;

    move-object v0, p1

    check-cast v0, La/b/k;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, La/b/c/j;-><init>(La/b/k;Z)V

    const-string v0, "BootstrapMethods"

    invoke-virtual {p2, v0}, La/b/c/j;->b(Ljava/lang/String;)V

    new-instance v0, La/b/c/p;

    invoke-direct {v0, p0, p2}, La/b/c/p;-><init>(La/b/c/o;La/b/c/j;)V

    invoke-interface {p1, v0}, La/b/c;->a(La/b/a/d/i;)V

    goto :goto_41

    :cond_35
    iget-object p2, p0, La/b/c/o;->c:La/b/c/l;

    iget-object v0, p0, La/b/c/o;->b:[I

    invoke-virtual {p2, v0}, La/b/c/l;->a([I)V

    iget-object p2, p0, La/b/c/o;->c:La/b/c/l;

    invoke-interface {p1, p2}, La/b/c;->a(La/b/b/a/f;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 4

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 6

    iget-byte p2, p5, La/b/d/b;->c:B

    const/16 p3, -0x46

    if-ne p2, p3, :cond_1c

    check-cast p1, La/b/k;

    iget p2, p5, La/b/d/b;->a:I

    invoke-virtual {p1, p2}, La/b/k;->l(I)La/b/b/b;

    move-result-object p2

    check-cast p2, La/b/b/h;

    invoke-virtual {p2}, La/b/b/h;->b()I

    move-result p2

    iput p2, p0, La/b/c/o;->d:I

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    const/4 p1, -0x1

    iput p1, p0, La/b/c/o;->d:I

    :cond_1c
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/c/o;->e:Z

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, La/b/c/o;->b:[I

    new-instance v0, La/b/g/g;

    invoke-direct {v0}, La/b/g/g;-><init>()V

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/g/s;)V

    invoke-virtual {p1, p0}, La/b/k;->b(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    iget-boolean v0, p0, La/b/c/o;->e:Z

    if-eqz v0, :cond_23

    new-instance v0, La/b/c/ag;

    invoke-direct {v0}, La/b/c/ag;-><init>()V

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/g/s;)V

    :cond_23
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    return-void
.end method
