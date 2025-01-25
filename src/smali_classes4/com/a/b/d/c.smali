.class public Lcom/a/b/d/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/a/b/d/a/a;

.field private final d:Lcom/a/b/d/a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/a/b/d/a/a;Lcom/a/b/d/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/a/b/d/c;->a:I

    iput-object p2, p0, Lcom/a/b/d/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/b/d/c;->c:Lcom/a/b/d/a/a;

    iput-object p4, p0, Lcom/a/b/d/c;->d:Lcom/a/b/d/a;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/d/c;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/d/c;->b:Ljava/lang/String;

    return-object v0
.end method
