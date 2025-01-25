.class public Lorg/c/a/a/b/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/a/a/c;


# instance fields
.field protected a:Lorg/c/a/a/b/a/a/x;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/a/a/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/a/d;->a:Lorg/c/a/a/b/a/a/x;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/a/a/x;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/d;->a:Lorg/c/a/a/b/a/a/x;

    return-object v0
.end method
