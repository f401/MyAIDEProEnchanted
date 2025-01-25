.class public La/b/b/a;
.super La/b/b/b;


# instance fields
.field public a:I

.field public b:La/b/c;

.field public c:La/b/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(ILa/b/c;)V
    .registers 3

    invoke-direct {p0}, La/b/b/b;-><init>()V

    iput p1, p0, La/b/b/a;->a:I

    iput-object p2, p0, La/b/b/a;->b:La/b/c;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public a(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/a;->a:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/a;)V

    return-void
.end method

.method public a(La/b/g/s;)V
    .registers 3

    iget-object v0, p0, La/b/b/a;->b:La/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, La/b/c;->a(La/b/g/s;)V

    :cond_7
    return-void
.end method
