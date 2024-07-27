.class public Lcom/a4455jkjh/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/a4455jkjh/c/c;->b:I

    iput-object p2, p0, Lcom/a4455jkjh/c/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/a4455jkjh/c/c;->d:I

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a4455jkjh/c/c;->d:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/a4455jkjh/c/c;->e:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/a4455jkjh/c/c;->e:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/a4455jkjh/c/c;->f:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/a4455jkjh/c/c;->b:I

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/a4455jkjh/c/c;->c:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/c/c;->a:Ljava/lang/String;

    return-object v0
.end method
