.class public Lorg/c/a/a/b/c/i;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/c/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/c/i;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lorg/c/a/a/b/c/i;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/c/i;->c:I

    return v0
.end method

.method public d()V
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/c/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/b/c/i;->c:I

    return-void
.end method
