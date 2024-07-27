.class public Lorg/c/a/a/c/a/a/a;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/c/a/a/b/b;

.field protected static final b:Lorg/c/a/a/c/a/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/c/a/a/b/b;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/b/b;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/a;->a:Lorg/c/a/a/c/a/a/b/b;

    new-instance v0, Lorg/c/a/a/c/a/a/b/c;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/b/c;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/a;->b:Lorg/c/a/a/c/a/a/b/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 5

    new-instance v1, Lorg/c/a/a/c/a/a/c/w;

    const-string v0, "loader"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/a/a/a;

    invoke-direct {v1, v0}, Lorg/c/a/a/c/a/a/c/w;-><init>(Lorg/c/a/a/a/a/a;)V

    new-instance v0, Lorg/c/a/a/c/a/a/c/ac;

    invoke-direct {v0, v1}, Lorg/c/a/a/c/a/a/c/ac;-><init>(Lorg/c/a/a/c/a/a/c/w;)V

    const-string v2, "objectTypeMaker"

    invoke-virtual {p1, v2, v1}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "signatureParser"

    invoke-virtual {p1, v1, v0}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lorg/c/a/a/c/a/a/a;->a:Lorg/c/a/a/c/a/a/b/b;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/b/e/a;)V

    sget-object v0, Lorg/c/a/a/c/a/a/a;->b:Lorg/c/a/a/c/a/a/b/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/b/c;->a(Lorg/c/a/a/b/e/a;)V

    return-void
.end method
