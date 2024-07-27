.class public Lorg/c/a/a/b/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/a/a/c;


# instance fields
.field protected a:[Lorg/c/a/a/b/a/a/a;


# direct methods
.method public constructor <init>([Lorg/c/a/a/b/a/a/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/a/b;->a:[Lorg/c/a/a/b/a/a/a;

    return-void
.end method


# virtual methods
.method public a()[Lorg/c/a/a/b/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/b;->a:[Lorg/c/a/a/b/a/a/a;

    return-object v0
.end method
