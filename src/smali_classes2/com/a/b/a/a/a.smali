.class public final Lcom/a/b/a/a/a;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/e/c/a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/a;I)V
    .registers 5

    const-string v0, "AnnotationDefault"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/a/a;->a:Lcom/a/b/e/c/a;

    iput p2, p0, Lcom/a/b/a/a/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/a/a;->b:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public b()Lcom/a/b/e/c/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/a;->a:Lcom/a/b/e/c/a;

    return-object v0
.end method
