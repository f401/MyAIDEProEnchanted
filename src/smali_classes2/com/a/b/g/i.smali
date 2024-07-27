.class Lcom/a/b/g/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/a/b/g/i;->a:I

    iput p2, p0, Lcom/a/b/g/i;->b:I

    iput-object p3, p0, Lcom/a/b/g/i;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0, p2}, Lcom/a/b/g/i;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/g/i;->a:I

    return v0
.end method

.method public a(I)V
    .registers 4

    iget v0, p0, Lcom/a/b/g/i;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/a/b/g/i;->b:I

    :cond_0
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/g/i;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/a/b/g/i;->b:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/i;->c:Ljava/lang/String;

    return-object v0
.end method
