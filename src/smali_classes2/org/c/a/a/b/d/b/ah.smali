.class public Lorg/c/a/a/b/d/b/ah;
.super Lorg/c/a/a/b/d/b/b;


# static fields
.field public static final a:Lorg/c/a/a/b/d/b/ah;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/c/a/a/b/d/b/ah;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/c/a/a/b/d/b/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/b/ah;->a:Lorg/c/a/a/b/d/b/ah;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/b;-><init>(I)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/ah;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/b;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/b/ah;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/ah;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    sget-object v0, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StringConstantExpression{\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
