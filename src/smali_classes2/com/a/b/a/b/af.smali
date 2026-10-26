.class Lcom/a/b/a/b/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a/b/e/d/c;

.field private b:I


# direct methods
.method constructor <init>(Lcom/a/b/e/d/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/a/b/af;->a:Lcom/a/b/e/d/c;

    iput p2, p0, Lcom/a/b/a/b/af;->b:I

    return-void
.end method


# virtual methods
.method a()Lcom/a/b/e/d/c;
    .locals 1

    iget-object v0, p0, Lcom/a/b/a/b/af;->a:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/a/b/a/b/af;->b:I

    return v0
.end method
