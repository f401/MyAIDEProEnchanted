.class Lcom/a/b/a/b/m;
.super Lcom/a/b/a/b/l;


# instance fields
.field a:Lcom/a/b/e/c/a;

.field b:I

.field c:I

.field final d:Lcom/a/b/a/b/k;


# direct methods
.method constructor <init>(Lcom/a/b/a/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/a/b/m;->d:Lcom/a/b/a/b/k;

    invoke-direct {p0}, Lcom/a/b/a/b/l;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/a/b/m;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(III)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/a/b/m;->b()V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/a/b/m;->b()V

    return-void
.end method

.method public a(IIIILcom/a/b/e/d/c;I)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/a/b/m;->b()V

    return-void
.end method

.method public a(IIILcom/a/b/a/b/ao;I)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/a/b/m;->b()V

    return-void
.end method

.method public a(IIILcom/a/b/e/c/a;I)V
    .locals 0

    iput-object p4, p0, Lcom/a/b/a/b/m;->a:Lcom/a/b/e/c/a;

    iput p3, p0, Lcom/a/b/a/b/m;->b:I

    iput p5, p0, Lcom/a/b/a/b/m;->c:I

    return-void
.end method

.method public a(IIILcom/a/b/e/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/a/b/m;->b()V

    return-void
.end method

.method public a(IILcom/a/b/e/c/ae;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/a/b/m;->b()V

    return-void
.end method
