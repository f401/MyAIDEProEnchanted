.class public Lorg/c/a/a/b/d/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/c/a/a/b/d/a/h;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/a/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/b;->a:Lorg/c/a/a/b/d/a/h;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/d/a/h;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b;->a:Lorg/c/a/a/b/d/a/h;

    return-object v0
.end method
