.class public Lorg/c/a/a/b/a/a/ac;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lorg/c/a/a/b/a/a/x;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/c/a/a/b/a/a/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/a/ac;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/a/a/ac;->b:Lorg/c/a/a/b/a/a/x;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/c/a/a/b/a/a/x;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/ac;->b:Lorg/c/a/a/b/a/a/x;

    return-object v0
.end method
