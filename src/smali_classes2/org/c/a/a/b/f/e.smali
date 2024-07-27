.class public Lorg/c/a/a/b/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/f/p;


# static fields
.field public static final a:Lorg/c/a/a/b/f/e;

.field public static final b:Lorg/c/a/a/b/f/e;

.field public static final c:Lorg/c/a/a/b/f/e;

.field public static final d:Lorg/c/a/a/b/f/e;

.field public static final e:Lorg/c/a/a/b/f/e;

.field public static final f:Lorg/c/a/a/b/f/e;


# instance fields
.field protected g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/c/a/a/b/f/e;

    const-string v1, "}"

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/f/e;->a:Lorg/c/a/a/b/f/e;

    new-instance v0, Lorg/c/a/a/b/f/e;

    const-string v1, "]"

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/f/e;->b:Lorg/c/a/a/b/f/e;

    new-instance v0, Lorg/c/a/a/b/f/e;

    const-string v1, "}"

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/f/e;->c:Lorg/c/a/a/b/f/e;

    new-instance v0, Lorg/c/a/a/b/f/e;

    const-string v1, ")"

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/f/e;->d:Lorg/c/a/a/b/f/e;

    new-instance v0, Lorg/c/a/a/b/f/e;

    const-string v1, ")"

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/f/e;->e:Lorg/c/a/a/b/f/e;

    new-instance v0, Lorg/c/a/a/b/f/e;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/f/e;->f:Lorg/c/a/a/b/f/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/f/e;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/f/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/f/q;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/f/q;->a(Lorg/c/a/a/b/f/e;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EndBlockToken{\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/f/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
