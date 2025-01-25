.class public Lorg/c/a/a/b/a/b/l;
.super Lorg/c/a/a/b/a/b/m;


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/c/a/a/b/a/b/m;-><init>(B)V

    iput-object p1, p0, Lorg/c/a/a/b/a/b/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/b/l;->b:Ljava/lang/String;

    return-object v0
.end method
