.class public abstract La/b/a/a/j;
.super La/b/a/a;


# instance fields
.field public c:I

.field public d:[I

.field public e:[[La/b/a/a/a;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(II[I[[La/b/a/a/a;)V
    .registers 5

    invoke-direct {p0, p1}, La/b/a/a;-><init>(I)V

    iput p2, p0, La/b/a/a/j;->c:I

    iput-object p3, p0, La/b/a/a/j;->d:[I

    iput-object p4, p0, La/b/a/a/j;->e:[[La/b/a/a/a;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/a/b/f;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, La/b/a/a/j;->c:I

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, La/b/a/a/j;->d:[I

    aget v2, v2, v1

    iget-object v3, p0, La/b/a/a/j;->e:[[La/b/a/a/a;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_19

    aget-object v5, v3, v4

    invoke-interface {p3, p1, p2, v1, v5}, La/b/a/a/b/f;->a(La/b/c;La/b/j;ILa/b/a/a/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method
