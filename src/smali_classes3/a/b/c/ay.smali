.class public La/b/c/ay;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/o;


# instance fields
.field private final a:La/b/c/az;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/b/a/n;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/az;

    invoke-direct {v0, p1}, La/b/c/az;-><init>(La/b/a/n;)V

    iput-object v0, p0, La/b/c/ay;->a:La/b/c/az;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/m;)V
    .registers 5

    invoke-virtual {p4}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p4}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_b
    iget-object p1, p0, La/b/c/ay;->b:Ljava/lang/String;

    :goto_d
    new-instance p2, La/b/a/j;

    iget p3, p4, La/b/a/m;->b:I

    iget p4, p4, La/b/a/m;->c:I

    invoke-direct {p2, p3, p4, p1}, La/b/a/j;-><init>(IILjava/lang/String;)V

    iget-object p1, p0, La/b/c/ay;->a:La/b/c/az;

    invoke-virtual {p1, p2}, La/b/c/az;->a(La/b/a/m;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/n;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, La/b/a/n;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, La/b/a/n;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/c/ay;->b:Ljava/lang/String;

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/n;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/o;)V

    return-void
.end method
