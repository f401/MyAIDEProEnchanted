.class public Lcom/a/b/a/b/d;
.super Lcom/a/b/g/j;


# static fields
.field public static final a:Lcom/a/b/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/a/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/a/b/d;-><init>(I)V

    sput-object v0, Lcom/a/b/a/b/d;->a:Lcom/a/b/a/b/d;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/b/e;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/e;

    return-object v0
.end method

.method public a(ILcom/a/b/a/b/e;)V
    .registers 5

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/b/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/a/b/e/c/ae;Lcom/a/b/e/c/y;Lcom/a/b/a/b/c;)V
    .registers 6

    new-instance v0, Lcom/a/b/a/b/e;

    invoke-direct {v0, p2, p3, p4}, Lcom/a/b/a/b/e;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/y;Lcom/a/b/a/b/c;)V

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/b/d;->a(ILcom/a/b/a/b/e;)V

    return-void
.end method
