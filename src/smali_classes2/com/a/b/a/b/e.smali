.class public Lcom/a/b/a/b/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/a/b/c;

.field private final b:Lcom/a/b/e/c/y;

.field private final c:Lcom/a/b/e/c/ae;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/y;Lcom/a/b/a/b/c;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "declaringClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bootstrapMethodHandle == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bootstrapMethodArguments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/a/b/a/b/e;->b:Lcom/a/b/e/c/y;

    iput-object p3, p0, Lcom/a/b/a/b/e;->a:Lcom/a/b/a/b/c;

    iput-object p1, p0, Lcom/a/b/a/b/e;->c:Lcom/a/b/e/c/ae;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/c/y;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/e;->b:Lcom/a/b/e/c/y;

    return-object v0
.end method

.method public b()Lcom/a/b/a/b/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/e;->a:Lcom/a/b/a/b/c;

    return-object v0
.end method
