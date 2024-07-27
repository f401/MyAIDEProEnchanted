.class public Lorg/c/a/a/b/d/b/h;
.super Lorg/c/a/a/b/d/b/b;


# static fields
.field public static final a:Lorg/c/a/a/b/d/b/h;

.field public static final c:Lorg/c/a/a/b/d/b/h;


# instance fields
.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/c/a/a/b/d/b/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/d/b/h;-><init>(Z)V

    sput-object v0, Lorg/c/a/a/b/d/b/h;->a:Lorg/c/a/a/b/d/b/h;

    new-instance v0, Lorg/c/a/a/b/d/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/c/a/a/b/d/b/h;-><init>(Z)V

    sput-object v0, Lorg/c/a/a/b/d/b/h;->c:Lorg/c/a/a/b/d/b/h;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/b;-><init>(I)V

    iput-boolean p2, p0, Lorg/c/a/a/b/d/b/h;->d:Z

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/b;-><init>()V

    iput-boolean p1, p0, Lorg/c/a/a/b/d/b/h;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/h;)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/b/d/b/h;->d:Z

    return v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    sget-object v0, Lorg/c/a/a/b/d/e/k;->a:Lorg/c/a/a/b/d/e/k;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/b/d/b/h;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BooleanExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/c/a/a/b/d/b/h;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
