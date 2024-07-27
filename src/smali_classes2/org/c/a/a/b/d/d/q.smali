.class public Lorg/c/a/a/b/d/d/q;
.super Lorg/c/a/a/b/d/d/s;


# static fields
.field public static final a:Lorg/c/a/a/b/d/d/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/b/d/d/q;

    invoke-direct {v0}, Lorg/c/a/a/b/d/d/q;-><init>()V

    sput-object v0, Lorg/c/a/a/b/d/d/q;->a:Lorg/c/a/a/b/d/d/q;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/q;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ReturnStatement{}"

    return-object v0
.end method
