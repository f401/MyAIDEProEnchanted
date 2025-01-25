.class public La/b/c/l;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field private a:[I

.field private final b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/b/c/l;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-boolean p1, p0, La/b/c/l;->b:Z

    return-void
.end method

.method private a(I)I
    .registers 5

    iget-object v0, p0, La/b/c/l;->a:[I

    aget v0, v0, p1

    if-gez v0, :cond_2a

    iget-boolean v0, p0, La/b/c/l;->b:Z

    if-eqz v0, :cond_b

    goto :goto_2b

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remap bootstrap method index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move p1, v0

    :goto_2b
    return p1
.end method


# virtual methods
.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 3

    iget p1, p2, La/b/b/h;->a:I

    invoke-direct {p0, p1}, La/b/c/l;->a(I)I

    move-result p1

    iput p1, p2, La/b/b/h;->a:I

    return-void
.end method

.method public a([I)V
    .registers 2

    iput-object p1, p0, La/b/c/l;->a:[I

    return-void
.end method
