.class public abstract Lorg/c/a/a/b/d/a/ai;
.super Lorg/c/a/a/b/d/a/aa;

# interfaces
.implements Lorg/c/a/a/b/d/a/h;


# instance fields
.field protected g:Lorg/c/a/a/b/d/c/d;

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lorg/c/a/a/b/d/a/aa;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/ai;->g:Lorg/c/a/a/b/d/c/d;

    iput p2, p0, Lorg/c/a/a/b/d/a/ai;->h:I

    iput-object p3, p0, Lorg/c/a/a/b/d/a/ai;->i:Ljava/lang/String;

    iput-object p4, p0, Lorg/c/a/a/b/d/a/ai;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j()Lorg/c/a/a/b/d/c/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ai;->g:Lorg/c/a/a/b/d/c/d;

    return-object v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/a/ai;->h:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ai;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/ai;->j:Ljava/lang/String;

    return-object v0
.end method
