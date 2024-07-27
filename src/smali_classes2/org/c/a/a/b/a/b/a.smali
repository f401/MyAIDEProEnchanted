.class public abstract Lorg/c/a/a/b/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:B


# direct methods
.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/c/a/a/b/a/b/a;->a:B

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    iget-byte v0, p0, Lorg/c/a/a/b/a/b/a;->a:B

    return v0
.end method
